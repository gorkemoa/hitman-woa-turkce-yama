#!/bin/zsh
R="$HOME/Library/Application Support/Steam/steamapps/common/HITMAN 3/Hitman WOA.app/Contents/Resources"
rm -f "$R"/chunk*patch2.rpkg
[ -f "$R/packagedefinition.txt.orijinal" ] && mv "$R/packagedefinition.txt.orijinal" "$R/packagedefinition.txt"
echo "Yama kaldırıldı."
