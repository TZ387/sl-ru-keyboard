# sl-ru-keyboard

Russian Cyrillic keyboard layout for Slovenian (and Croatian/Serbian Latin) keyboards on Ubuntu 24.

This layout maps Russian (and other Cyrillic) characters to the **physically equivalent keys on a Slovenian keyboard** — so the key where you'd type `Č` produces `Ч`, `Š` produces `Ш`, and so on. The AltGr layer extends the layout to cover characters from **6 Cyrillic-script languages**: Russian, Belarusian, Bulgarian, Macedonian, Serbian Cyrillic, and Ukrainian.

This is an updated and working version of [anzeljg/ruska_sl](https://github.com/anzeljg/ruska_sl), adapted for **Ubuntu 24.04** (the original instructions were outdated — they referenced files and steps that no longer work on modern Ubuntu).

---

## Keyboard layout

### Slovenian keyboard (physical keys)

```
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬───────────┐
│ ¸ ¨ │ !   │ "   │ #   │ $   │ %   │ &   │ /   │ (   │ )   │ =   │ ?   │ *   │           │
│   ° │ 1   │ 2   │ 3   │ 4   │ 5   │ 6   │ 7   │ 8   │ 9   │ 0   │ '   │ +   │ Backspace │
├─────┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬─────────┤
│       │ Q   │ W   │ E   │ R   │ T   │ Z   │ U   │ I   │ O   │ P   │ Š   │ Đ   │         │
│ Tab   │ q   │ w   │ e   │ r   │ t   │ z   │ u   │ i   │ o   │ p   │ š   │ đ   │   Enter │
├───────┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┐       │
│ Caps    │ A   │ S   │ D   │ F   │ G   │ H   │ J   │ K   │ L   │ Č   │ Ć   │ Ž   │       │
│ Lock    │ a   │ s   │ d   │ f   │ g   │ h   │ j   │ k   │ l   │ č   │ ć   │ ž   │       │
├───────┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴─────┴───────┤
│       │ <   │ Y   │ X   │ C   │ V   │ B   │ N   │ M   │ ;   │ :   │ _   │               │
│ Shift │ >   │ y   │ x   │ c   │ v   │ b   │ n   │ m   │ ,   │ .   │ -   │     Shift     │
├───────┼─────┴─┬───┴───┬─┴─────┴─────┴─────┴─────┴─────┴─────┴───┬─┴─────┼───────┬───────┤
│       │       │       │                                         │       │       │       │
│ Ctrl  │ Meta  │  Alt  │                  Space                  │ AltGr │ Menu  │ Ctrl  │
└───────┴───────┴───────┴─────────────────────────────────────────┴───────┴───────┴───────┘
```

> **Note:** The position of Ž varies by keyboard. On most desktop/external keyboards it is located below Đ (at the end of the home row). On some laptops (like the one used to develop this layout) it is to the right of Đ in the top letter row. Either way, Ž correctly produces **ж** in the Cyrillic layout.

### Cyrillic layout (what you type)

```
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬───────────┐
│ Ь Ъ │ !   │ "   │ #   │ $   │ %   │ &   │ /   │ (   │ )   │ =   │ ?   │ *   │           │
│ ь ъ │ 1 ~ │ 2   │ 3   │ 4   │ 5   │ 6   │ 7   │ 8   │ 9   │ 0   │ '   │ +   │ Backspace │
├─────┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬─────────┤
│       │ Ы Ї │ Ё   │ Е Є │ Р   │ Т   │ З Ѕ │ У Ў │ И І │ О   │ П   │ Ш   │ Ю Ђ │         │
│ Tab   │ ы ї │ ё   │ е є │ р   │ т   │ з ѕ │ у ў │ и і │ о   │ п   │ ш   │ ю ђ │   Enter │
├───────┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┐       │
│ Caps    │ А   │ С   │ Д Џ │ Ф   │ Г Ґ │ Х   │ Й Ј │ К Ќ │ Л Љ │ Ч   │ Щ Ћ │ Ж   │       │
│ Lock    │ а   │ с   │ д џ │ ф   │ г ґ │ х   │ й ј │ к ќ │ л љ │ ч   │ щ ћ │ ж   │       │
├───────┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴─────┴───────┤
│       │ >   │ Я   │ Э   │ Ц Ѓ │ В   │ Б   │ Н Њ │ М   │ ;   │ :   │ _   │               │
│ Shift │ <   │ я   │ э   │ ц ѓ │ в @ │ б   │ н њ │ м   │ ,   │ .   │ -   │     Shift     │
├───────┼─────┴─┬───┴───┬─┴─────┴─────┴─────┴─────┴─────┴─────┴───┬─┴─────┼───────┬───────┤
│       │       │       │                                         │       │       │       │
│ Ctrl  │ Meta  │  Alt  │                  Space                  │ AltGr │ Menu  │ Ctrl  │
└───────┴───────┴───────┴─────────────────────────────────────────┴───────┴───────┴───────┘
```

**Key levels:**
- Plain key → base character (e.g. `Q` → `ы`)
- `Shift` + key → uppercase (e.g. `Shift+Q` → `Ы`)
- `AltGr` + key → extended Cyrillic character from another language (e.g. `AltGr+Q` → `ї`)
- `AltGr+Shift` + key → uppercase of extended character (e.g. `AltGr+Shift+Q` → `Ї`)

### AltGr layer — extended Cyrillic characters

The AltGr layer gives access to characters from Belarusian, Ukrainian, Macedonian, and Serbian Cyrillic that are not part of standard Russian:

Keys are labeled by their **Slovenian** character (not QWERTY position).

| Slovenian key | Base | Shift | AltGr | AltGr+Shift | Language |
|---------------|------|-------|-------|-------------|----------|
| Q | ы | Ы | ї | Ї | Ukrainian |
| W | ё | Ё | | | Russian |
| E | е | Е | є | Є | Ukrainian |
| R | р | Р | | | |
| T | т | Т | | | |
| Z (key) | з | З | ѕ | Ѕ | Macedonian |
| U | у | У | ў | Ў | Belarusian |
| I | и | И | і | І | Ukrainian/Belarusian |
| O | о | О | | | |
| P | п | П | | | |
| Š | ш | Ш | | | |
| Đ | ю | Ю | ђ | Ђ | Serbian |
| Ž | ж | Ж | | | |
| A | а | А | | | |
| S | с | С | | | |
| D | д | Д | џ | Џ | Serbian/Macedonian |
| F | ф | Ф | | | |
| G | г | Г | ґ | Ґ | Ukrainian |
| H | х | Х | | | |
| J | й | Й | ј | Ј | Serbian/Macedonian |
| K | к | К | ќ | Ќ | Macedonian |
| L | л | Л | љ | Љ | Serbian/Macedonian |
| Č | ч | Ч | | | |
| Ć | щ | Щ | ћ | Ћ | Serbian |
| Y (key) | я | Я | | | |
| X | э | Э | | | |
| C | ц | Ц | ѓ | Ѓ | Macedonian |
| V | в | В | @ | | |
| B | б | Б | | | |
| N | н | Н | њ | Њ | Serbian/Macedonian |
| M | м | М | | | |
| ` | ь | Ь | ъ | Ъ | Russian |

---

## Installation on Ubuntu 24.04

> **Note:** The installation method for Ubuntu 24 differs from older guides. The key differences are:
> - You must edit `evdev.xml` (not `base.xml` or `base.lst` as older guides say)
> - You need to clear the XKB cache after changes
> - A full logout/login or reboot is required for GNOME to pick up the new layout

### Step 1 — Copy the symbol file

```bash
sudo cp ru_sl /usr/share/X11/xkb/symbols/ru_sl
```

### Step 2 — Register the layout in evdev.xml

Open the file:

```bash
sudo nano /usr/share/X11/xkb/rules/evdev.xml
```

Find the `<layoutList>` section and add the following entry (you can place it near the other `ru` entries):

```xml
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
```

Save and exit (`Ctrl+O`, `Enter`, `Ctrl+X`).

### Step 3 — Clear the XKB cache

Ubuntu caches compiled keyboard layouts. You must clear this cache or your changes will be ignored:

```bash
sudo rm -rf /var/lib/xkb/*
```

### Step 4 — Log out and log back in

A full logout/login (or reboot) is required for GNOME Settings to discover the new layout.

### Step 5 — Add the layout in GNOME Settings

1. Open **Settings → Keyboard → Input Sources**
2. Click **+**
3. Select **Other** (or search for "Russian")
4. Find **Russian (Slovenian keyboard)** and add it

To switch between layouts, you can set a shortcut under **Settings → Keyboard → Keyboard Shortcuts → Switch input source** (e.g. `Super+Space` or `LShift+LCtrl`).

**Note**: For switching the language layout using `Super+Space`, you have to press and hold the `Super` key and then click `Space` as many times as required.

### Optional: Test without logging out

You can test the layout immediately in the current session (this does not affect GNOME Settings):

```bash
setxkbmap ru_sl
```

To revert to the Slovenian layout:

```bash
setxkbmap si
```

---

## Applicability to Croatian and Serbian Latin keyboards

The Slovenian, Croatian, and Serbian Latin keyboard layouts share the same physical key positions for the special characters (`Č`, `Š`, `Ž`, `Đ`, `Ć`). This means this layout works equally well if your physical keyboard is labeled as Croatian or Serbian Latin — the Cyrillic character mappings are identical.

The layout is designed around the **positional logic** of the QWERTZ South Slavic keyboards, not Slovenian-specific keys, so the mapping feels natural on all three variants.

---

## How it works — why the AltGr layer covers so many languages

The XKB symbol file defines up to 4 levels per key:
1. Base (plain keypress)
2. Shift
3. AltGr
4. AltGr+Shift

The base and Shift levels cover standard Russian Cyrillic. The AltGr and AltGr+Shift levels were used to place characters from other Cyrillic-script languages that don't exist in Russian — Ukrainian `і/ї/є/ґ`, Belarusian `ў`, Macedonian `ѕ/ѓ/ќ`, and Serbian `ђ/ћ/ј/љ/њ/џ`. This means a single layout file gives you access to all six languages without switching layouts.

---

## Credits

Original layout concept and `ru_sl` symbol file by **Gregor Anželj** ([anzeljg/ruska_sl](https://github.com/anzeljg/ruska_sl)).  
Updated installation instructions for Ubuntu 24 by [TZ387](https://github.com/TZ387).
