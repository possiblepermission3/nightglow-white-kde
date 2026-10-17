# Nightglow White

A **black & white** (monochrome) recolor of the *Nightglow Blue* KDE Plasma theme.
The classic GTK2-era look, but with all of the blue accents turned into pure
grayscale — black, white and every gray in between.

> Derived from **Nightglow Blue** by [Mark Whittaker (phob1an)](https://www.pling.com/u/phob1an).
> Licensed under the GNU GPL v3. See [Credits & License](#credits--license).

## Components

This repo bundles the full look so a single install gives you a consistent,
monochrome desktop:

| Component              | Path                                        | Description                              |
| ---------------------- | ------------------------------------------- | ---------------------------------------- |
| Color scheme           | `share/color-schemes/NightglowWhite.colors` | Plasma global color scheme               |
| Plasma theme           | `share/plasma/desktoptheme/nightglowwhite`  | Widget/desktop theme                     |
| Global theme (Look&Feel)| `share/plasma/look-and-feel/org.magpie.ngw.desktop` | Ties everything together, splash screen |
| Kvantum                | `share/Kvantum/NightglowWhite`              | Qt/Kvantum widget style (SVG)            |
| Aurorae                | `share/aurorae/themes/nightglowwhite`       | Window decorations                       |
| SDDM                   | `share/sddm/themes/nightglowwhite`          | Login screen (requires SDDM)             |
| Wallpaper              | `share/wallpapers/NightglowWhite`           | Matching grayscale wallpaper             |
| Plasmoid               | `share/plasma/plasmoids/org.magpie.nightglow.separator` | Vista-style separator widget |

## Requirements

- KDE Plasma 6
- [Kvantum](https://github.com/tsujan/Kvantum) (optional, for the Qt/Kvantum style)
- SDDM (optional, only for the login theme)

## Installation

### Automatic (recommended)

```bash
git clone https://github.com/possiblepermission3/nightglow-white-kde.git
cd nightglow-white-kde
./install.sh
```

The script copies every component into `~/.local/share/` and backs up anything it
would overwrite to `~/.local/share/nightglow-white-backup-<timestamp>`.

To remove it again:

```bash
./uninstall.sh
```

### Manual

The `share/` directory mirrors `~/.local/share/`. Copy it over:

```bash
cp -a share/. ~/.local/share/
```

Then apply it from **System Settings → Colors & Themes → Global Theme →
*NightGlow White***.

### SDDM login theme (optional, system-wide)

SDDM reads themes from a system directory, so it needs root:

```bash
sudo cp -a share/sddm/themes/nightglowwhite /usr/share/sddm/themes/
```

Then set it in `/etc/sddm.conf`:

```ini
[Theme]
Current=nightglowwhite
```

### Kvantum style

Open **Kvantum Manager** → *Change/Delete Theme* → select **NightglowWhite** →
*Use this theme*.

## Preview

The Look & Feel package includes a preview image at
`share/plasma/look-and-feel/org.magpie.ngw.desktop/contents/previews/preview.png`.

## Credits & License

- **Original theme:** [Nightglow Blue](https://www.pling.com/u/phob1an) by
  **Mark Whittaker** (`phobian@tutanota.com`, [pling.com/u/phob1an](https://www.pling.com/u/phob1an)).
- **Monochrome "White" recolor:** community derivative — all blue accents
  converted to grayscale.
- **Wallpaper:** by **Vlad Studio**, licensed [CC-BY-SA-4.0](https://creativecommons.org/licenses/by-sa/4.0/).

Everything else is released under the **GNU General Public License v3.0** —
see [LICENSE](LICENSE). Because this is a derivative of a GPL work, it remains
GPL: you are free to use, study, share and modify it, and distributions must
keep the same license and attribution.
