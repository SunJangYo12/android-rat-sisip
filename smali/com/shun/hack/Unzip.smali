.class Lcom/shun/hack/Unzip;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final STOCK_LOCAL_MEMORY:J = 0xfa000L

.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/shun/hack/Unzip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcUnzipped(Ljava/io/InputStream;)J
    .registers 7

    .prologue
    .line 24
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    const-wide/16 v0, 0x0

    .line 28
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 29
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 30
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_7

    .line 32
    :catch_16
    move-exception v2

    .line 35
    :cond_17
    return-wide v0
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/io/File;Lcom/shun/hack/Installer;Z)Z
    .registers 16

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_13d

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    .line 72
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 73
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 76
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 78
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 79
    if-eqz p3, :cond_c

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_37} :catch_38
    .catchall {:try_start_c .. :try_end_37} :catchall_111

    goto :goto_c

    .line 127
    :catch_38
    move-exception v1

    .line 128
    :try_start_39
    sget-object v2, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOErr in unzip (nextEntry, closeEntry or other): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_111

    .line 133
    :try_start_58
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_145

    .line 137
    :goto_5b
    return v0

    .line 84
    :cond_5c
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 85
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    .line 88
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p2, v8}, Lcom/shun/hack/Installer;->update(I)V

    .line 89
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 90
    const-wide/32 v8, 0xfa000

    cmp-long v2, v4, v8

    if-gez v2, :cond_8f

    .line 91
    const-string v1, "out_of_memory_local"

    invoke-virtual {p2, v1}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_89} :catch_38
    .catchall {:try_start_5c .. :try_end_89} :catchall_111

    .line 133
    :try_start_89
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_5b

    .line 134
    :catch_8d
    move-exception v1

    goto :goto_5b

    .line 94
    :cond_8f
    :try_start_8f
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 95
    const/16 v4, 0x800

    new-array v4, v4, [B
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_99} :catch_38
    .catchall {:try_start_8f .. :try_end_99} :catchall_111

    .line 98
    :goto_99
    :try_start_99
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_116

    .line 99
    invoke-virtual {p2}, Lcom/shun/hack/Installer;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 100
    sget-object v2, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    const-string v4, "in zip.read(bytes) task was cancelled"

    invoke-static {v2, v4}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_ad} :catch_bb
    .catchall {:try_start_99 .. :try_end_ad} :catchall_111

    .line 133
    :try_start_ad
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_5b

    .line 134
    :catch_b1
    move-exception v1

    goto :goto_5b

    .line 103
    :cond_b3
    :try_start_b3
    invoke-virtual {p2, v5}, Lcom/shun/hack/Installer;->update(I)V

    .line 104
    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_111

    goto :goto_99

    .line 108
    :catch_bb
    move-exception v2

    .line 109
    :try_start_bc
    sget-object v4, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOErr in readFromStream (zip.read(bytes)): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_d4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 113
    if-eqz p3, :cond_c

    .line 114
    const-string v2, "lighttpd"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    const-string v2, "mysqld"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    const-string v2, "php-fpm_7_0_0_arm"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 115
    :cond_f1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_10f} :catch_38
    .catchall {:try_start_bc .. :try_end_10f} :catchall_111

    goto/16 :goto_c

    .line 132
    :catchall_111
    move-exception v0

    .line 133
    :try_start_112
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_148

    .line 135
    :goto_115
    throw v0

    .line 106
    :cond_116
    :try_start_116
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 107
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11c} :catch_bb
    .catchall {:try_start_116 .. :try_end_11c} :catchall_111

    goto :goto_d4

    .line 117
    :cond_11d
    :try_start_11d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 600 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_13b} :catch_38
    .catchall {:try_start_11d .. :try_end_13b} :catchall_111

    goto/16 :goto_c

    .line 133
    :cond_13d
    :try_start_13d
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_143

    :goto_140
    move v0, v1

    .line 137
    goto/16 :goto_5b

    .line 134
    :catch_143
    move-exception v0

    goto :goto_140

    :catch_145
    move-exception v1

    goto/16 :goto_5b

    :catch_148
    move-exception v1

    goto :goto_115
.end method

.method public static zipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 40
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 45
    :goto_14
    array-length v3, v1

    if-ge v0, v3, :cond_46

    .line 46
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 47
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, v1, v0

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    new-instance v5, Ljava/util/zip/ZipEntry;

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 51
    :goto_30
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3d

    .line 52
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_30

    .line 59
    :catch_3b
    move-exception v0

    .line 60
    :goto_3c
    return-void

    .line 54
    :cond_3d
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 57
    :cond_46
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_3b

    goto :goto_3c
.end method
