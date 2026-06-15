#!/bin/bash

# Simple installation script for ru_sl keyboard layout
# Target OS: Ubuntu 24.04+, Linux Mint

set -e

echo "Starting installation of Russian (Slovenian keyboard) layout..."

# 1. Verify it is running on Linux
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo "Error: This script is intended for Linux systems only."
    exit 1
fi

# Distribution warning
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [[ "$ID" != "ubuntu" && "$ID" != "linuxmint" ]]; then
        echo "Warning: This script was primarily tested on Ubuntu and Linux Mint."
        echo "Proceeding on $NAME..."
    fi
else
    echo "Warning: Could not determine Linux distribution. Proceeding anyway..."
fi

SYMBOLS_SOURCE="ru_sl"
SYMBOLS_DEST="/usr/share/X11/xkb/symbols/ru_sl"
EVDEV_XML="/usr/share/X11/xkb/rules/evdev.xml"

if [ ! -f "$SYMBOLS_SOURCE" ]; then
    echo "Error: Source file '$SYMBOLS_SOURCE' not found in current directory."
    exit 1
fi

# 2. Copy the ru_sl layout files into the correct system XKB directory
echo "Copying symbol file to $SYMBOLS_DEST..."
sudo cp "$SYMBOLS_SOURCE" "$SYMBOLS_DEST"

# 3. Register the layout in evdev.xml if needed
echo "Registering layout in $EVDEV_XML..."

if [ ! -f "$EVDEV_XML" ]; then
    echo "Error: XKB rules file not found at $EVDEV_XML"
    exit 1
fi

if grep -q "<name>ru_sl</name>" "$EVDEV_XML"; then
    echo "Layout 'ru_sl' is already registered in $EVDEV_XML. Skipping registration."
else
    # Back up any modified system files before editing them
    echo "Backing up $EVDEV_XML to ${EVDEV_XML}.bak"
    sudo cp "$EVDEV_XML" "${EVDEV_XML}.bak"

    # Prepare the XML entry
    TMP_ENTRY=$(mktemp)
    TMP_EVDEV=$(mktemp)
    trap 'rm -f "$TMP_ENTRY" "$TMP_EVDEV"' EXIT
    cat <<EOF > "$TMP_ENTRY"
        <layout>
          <configItem>
            <name>ru_sl</name>
            <shortDescription>ru_sl</shortDescription>
            <description>Russian (Slovenian keyboard)</description>
            <languageList>
              <iso639Id>rus</iso639Id>
            </languageList>
          </configItem>
        </layout>
EOF

    # Insert before the first </layoutList> using awk for reliability
    awk 'NR==FNR { a[n++]=$0; next } /<\/layoutList>/ && !done { for (i=0; i<n; i++) print a[i]; done=1 } { print }' "$TMP_ENTRY" "$EVDEV_XML" > "$TMP_EVDEV"

    sudo cp "$TMP_EVDEV" "$EVDEV_XML"
    sudo chmod 644 "$EVDEV_XML"

    rm "$TMP_ENTRY" "$TMP_EVDEV"

    echo "Layout registered successfully."
fi

# 4. Refresh/reload the keyboard layout database
echo "Clearing XKB cache..."
sudo rm -rf /var/lib/xkb/*

echo ""
echo "Installation complete!"
echo "--------------------------------------------------"
echo "IMPORTANT: You must log out and log back in (or reboot)"
echo "for the changes to take effect in your system settings."
echo "After logging in, you can add 'Russian (Slovenian keyboard)'"
echo "in your Keyboard Settings."
echo "--------------------------------------------------"

# 5. Optional test
echo "Would you like to try the layout in the current session? (y/n)"
read -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
        echo "Note: You are on a Wayland session. setxkbmap does not work reliably on Wayland."
        echo "Please add the layout via System Settings after logging out and back in."
    else
        echo "Applying layout with setxkbmap ru_sl..."
        if command -v setxkbmap >/dev/null 2>&1; then
            if setxkbmap ru_sl; then
                echo "Layout applied. Try typing!"
                echo "To revert, run: setxkbmap si"
            else
                echo "Error: Failed to apply layout with setxkbmap."
            fi
        else
            echo "Error: 'setxkbmap' command not found. Cannot apply layout immediately."
        fi
    fi
fi