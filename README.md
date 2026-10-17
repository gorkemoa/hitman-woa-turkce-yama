# HITMAN World of Assassination - Türkçe Yama (macOS / Steam)

Oyunun metinlerini (menüler, görev açıklamaları, altyazı yerine geçen LOCR metinleri) Türkçeye çeviren topluluk yamasıdır. Ses ve görüntü dosyalarına dokunmaz.

## Kurulum

1. Oyunu Steam'de kapatın.
2. Bu klasörü indirip açın.
3. Terminalde klasöre girin ve kurulum betiğini çalıştırın:

```bash
cd ~/Downloads/HITMAN-WoA-Turkce-Yama
./kur.sh
```

4. Steam'den oyunu başlatın. Oyunun **dilini İngilizce** bırakın; yama İngilizce metinlerin yerine Türkçe metinleri koyar.

## Kaldırma

```bash
cd ~/Downloads/HITMAN-WoA-Turkce-Yama
./kaldir.sh
```

Bu komut yama dosyalarını siler ve `packagedefinition.txt` dosyasını orijinal haline döndürür.

## Notlar

- Kurulum, oyunun `packagedefinition.txt` dosyasının bir yedeğini (`.orijinal`) oluşturur.
- Oyun güncellenirse yama bozulabilir; bu durumda yamayı kaldırıp yeniden kurun.
- Oyunun dilini Türkçe seçmeyin; yama yalnızca İngilizce dil kaynağını değiştirir.
- Yama, oyunun resmi bir ürünü değildir ve IO Interactive ile bağlantısı yoktur.
