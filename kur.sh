#!/bin/zsh
# HITMAN WoA Türkçe yama kurulumu (Mac / Steam)
set -e
R="$HOME/Library/Application Support/Steam/steamapps/common/HITMAN 3/Hitman WOA.app/Contents/Resources"
D="${0:A:h}"
[ -d "$R" ] || { echo "Oyun bulunamadı: $R"; exit 1; }
[ -f "$R/packagedefinition.txt.orijinal" ] || cp "$R/packagedefinition.txt" "$R/packagedefinition.txt.orijinal"
rm -f "$R"/chunk*patch2.rpkg
chunks=()
for f in "$D"/build/chunk*patch2.rpkg; do
  cp "$f" "$R/"; n="${${f:t}#chunk}"; chunks+=("${n%patch2.rpkg}")
done
# yama dosyası olan her chunk'ın partition satırında patchlevel'i 2 yap (N. chunk = N+1. @partition satırı)
awk -v list="${(j:,:)chunks}" 'BEGIN{split(list,a,",");for(i in a)s[a[i]]=1}
  /^@partition/{ if((idx) in s) sub(/patchlevel=[0-9]+/,"patchlevel=2"); idx++ } {print}' idx=0 \
  "$R/packagedefinition.txt.orijinal" > "$R/packagedefinition.txt"
echo "Kurulan chunk'lar: ${chunks[*]}"
echo "Türkçe yama kuruldu. Oyunun dilini İngilizce bırakın."
