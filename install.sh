#!/usr/bin/env bash
#
# Nightglow White — installer
# Installs the theme into ~/.local/share so it is available for the current user.
#
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/share"
DST="${HOME}/.local/share"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP="${DST}/nightglow-white-backup-${STAMP}"

info() { printf '\033[1;34m==>\033[0m %s\n' "$1"; }

if [[ ! -d "${SRC}" ]]; then
    echo "Error: no encuentro el directorio 'share/' junto a este script." >&2
    exit 1
fi

info "Instalando Nightglow White en ${DST}"
mkdir -p "${DST}"

# Respalda (si existe) cualquier componente que vayamos a sobrescribir.
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
        mkdir -p "${BACKUP}/$(dirname "${c}")"
        cp -a "${DST}/${c}" "${BACKUP}/${c}"
        info "Respaldo previo: ${c} -> ${BACKUP}/${c}"
    fi
done

# Copia el árbol completo respetando rutas relativas.
cp -a "${SRC}/." "${DST}/"

info "Instalación completa."
echo
echo "Para activar el tema:"
echo "  Sistema:  Configuración del sistema -> Colores y temas -> Tema global -> NightGlow White"
echo "  SDDM:     copia sddm/themes/nightglowwhite a /usr/share/sddm/themes/ y edita /etc/sddm.conf"
echo "            (sección [Theme] -> Current=nightglowwhite)"
echo
if [[ -d "${BACKUP}" ]]; then
    echo "Respaldo de la instalación anterior en: ${BACKUP}"
fi
