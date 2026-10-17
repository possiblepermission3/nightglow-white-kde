#!/usr/bin/env bash
#
# Nightglow White — uninstaller
# Removes the theme from ~/.local/share.
#
set -euo pipefail

DST="${HOME}/.local/share"

COMPONENTS=(
    "color-schemes/NightglowWhite.colors"
    "Kvantum/NightglowWhite"
    "plasma/desktoptheme/nightglowwhite"
    "plasma/look-and-feel/org.magpie.ngw.desktop"
    "plasma/plasmoids/org.magpie.nightglow.separator"
    "aurorae/themes/nightglowwhite"
    "sddm/themes/nightglowwhite"
    "wallpapers/NightglowWhite"
)

for c in "${COMPONENTS[@]}"; do
    if [[ -e "${DST}/${c}" ]]; then
        rm -rf "${DST}/${c}"
        printf 'Eliminado: %s\n' "${c}"
    fi
done

echo "Nightglow White desinstalado."
