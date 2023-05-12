.class Lcom/shun/hack/Unzip;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final STOCK_LOCAL_MEMORY:J = 0xfa000L

.field private static final tag:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 7

    :try_start_0
    const-string v2, "com.shun.hack.Unzip"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    return-void

    :catch_d
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcUnzipped(Ljava/io/InputStream;)J
    .registers 14

    .prologue
    .line 24
    move-object v0, p0

    new-instance v8, Ljava/util/zip/ZipInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v8

    .line 25
    const/4 v8, 0x0

    int-to-long v8, v8

    move-wide v4, v8

    .line 28
    :goto_e
    move-object v8, v2

    :try_start_f
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    if-nez v8, :cond_1c

    .line 35
    :goto_19
    move-wide v8, v4

    move-wide v0, v8

    return-wide v0

    .line 29
    :cond_1c
    move-wide v8, v4

    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 30
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_29

    goto :goto_e

    .line 28
    :catch_29
    move-exception v8

    move-object v6, v8

    goto :goto_19
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/io/File;Lcom/shun/hack/Installer;Z)Z
    .registers 33

    .prologue
    .line 65
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    new-instance v23, Ljava/util/zip/ZipInputStream;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    move-object/from16 v27, v2

    invoke-direct/range {v26 .. v27}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v24 .. v25}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v7, v23

    .line 66
    const/16 v23, 0x0

    check-cast v23, Ljava/io/FileOutputStream;

    move-object/from16 v8, v23

    .line 67
    const/16 v23, 0x0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v9, v23

    .line 70
    :cond_2e
    :goto_2e
    move-object/from16 v23, v7

    :try_start_30
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_1ff
    .catchall {:try_start_30 .. :try_end_33} :catchall_240

    move-result-object v23

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v10, v24

    if-nez v23, :cond_48

    .line 133
    move-object/from16 v23, v7

    :try_start_40
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_24f

    .line 137
    :goto_43
    const/16 v23, 0x1

    move/from16 v2, v23

    :goto_47
    return v2

    .line 71
    :cond_48
    move-object/from16 v23, v3

    :try_start_4a
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v23

    move-wide/from16 v15, v23

    .line 72
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v9, v23

    .line 73
    new-instance v23, Ljava/io/File;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v3

    move-object/from16 v26, v9

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v17, v23

    .line 74
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdirs()Z

    move-result v23

    .line 76
    move-object/from16 v23, v9

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_90

    .line 78
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdirs()Z

    move-result v23

    .line 79
    move/from16 v23, v5

    if-eqz v23, :cond_8f

    .line 80
    move-object/from16 v23, v17

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/io/File;->setExecutable(Z)Z

    move-result v23

    .line 82
    :cond_8f
    goto :goto_2e

    .line 84
    :cond_90
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z

    move-result v23

    .line 85
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v23

    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v25

    cmp-long v23, v23, v25

    if-nez v23, :cond_a7

    .line 86
    goto :goto_2e

    .line 88
    :cond_a7
    move-object/from16 v23, v4

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/shun/hack/Installer;->update(I)V

    .line 89
    move-wide/from16 v23, v15

    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v25

    sub-long v23, v23, v25

    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v25

    add-long v23, v23, v25

    move-wide/from16 v15, v23

    .line 90
    move-wide/from16 v23, v15

    const-wide/32 v25, 0xfa000

    cmp-long v23, v23, v25

    if-gez v23, :cond_ee

    .line 91
    move-object/from16 v23, v4

    const-string v24, "out_of_memory_local"

    invoke-virtual/range {v23 .. v24}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_db} :catch_1ff
    .catchall {:try_start_4a .. :try_end_db} :catchall_240

    .line 92
    const/16 v23, 0x0

    move/from16 v13, v23

    .line 133
    move-object/from16 v23, v7

    :try_start_e1
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_ea
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_240

    :goto_e4
    move/from16 v23, v13

    move/from16 v2, v23

    goto/16 :goto_47

    :catch_ea
    move-exception v23

    move-object/from16 v21, v23

    goto :goto_e4

    .line 94
    :cond_ee
    :try_start_ee
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v17

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v8, v23

    .line 95
    const/16 v23, 0x800

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_107} :catch_1ff
    .catchall {:try_start_ee .. :try_end_107} :catchall_240

    move-object/from16 v18, v23

    .line 98
    :goto_109
    move-object/from16 v23, v7

    move-object/from16 v24, v18

    :try_start_10d
    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v23

    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v19, v24

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17b

    .line 106
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->flush()V

    .line 107
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_12b} :catch_1b1
    .catchall {:try_start_10d .. :try_end_12b} :catchall_240

    .line 112
    :goto_12b
    move-object/from16 v23, v7

    :try_start_12d
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 113
    move/from16 v23, v5

    if-eqz v23, :cond_2e

    .line 114
    move-object/from16 v23, v9

    const-string v24, "lighttpd"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_152

    move-object/from16 v23, v9

    const-string v24, "mysqld"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_152

    move-object/from16 v23, v9

    const-string v24, "php-fpm_7_0_0_arm"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d6

    .line 115
    :cond_152
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "chmod 777 "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_178} :catch_1ff
    .catchall {:try_start_12d .. :try_end_178} :catchall_240

    move-result-object v23

    goto/16 :goto_2e

    .line 99
    :cond_17b
    move-object/from16 v23, v4

    :try_start_17d
    invoke-virtual/range {v23 .. v23}, Lcom/shun/hack/Installer;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_19d

    .line 100
    sget-object v23, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    const-string v24, "in zip.read(bytes) task was cancelled"

    invoke-static/range {v23 .. v24}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_18a} :catch_1b1
    .catchall {:try_start_17d .. :try_end_18a} :catchall_240

    .line 101
    const/16 v23, 0x0

    move/from16 v13, v23

    .line 133
    move-object/from16 v23, v7

    :try_start_190
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_199
    .catchall {:try_start_190 .. :try_end_193} :catchall_240

    :goto_193
    move/from16 v23, v13

    move/from16 v2, v23

    goto/16 :goto_47

    :catch_199
    move-exception v23

    move-object/from16 v21, v23

    goto :goto_193

    .line 103
    :cond_19d
    move-object/from16 v23, v4

    move/from16 v24, v19

    :try_start_1a1
    invoke-virtual/range {v23 .. v24}, Lcom/shun/hack/Installer;->update(I)V

    .line 104
    move-object/from16 v23, v8

    move-object/from16 v24, v18

    const/16 v25, 0x0

    move/from16 v26, v19

    invoke-virtual/range {v23 .. v26}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1af} :catch_1b1
    .catchall {:try_start_1a1 .. :try_end_1af} :catchall_240

    goto/16 :goto_109

    .line 107
    :catch_1b1
    move-exception v23

    move-object/from16 v20, v23

    .line 109
    :try_start_1b4
    sget-object v23, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "IOErr in readFromStream (zip.read(bytes)): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 117
    :cond_1d6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "chmod 600 "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1fc} :catch_1ff
    .catchall {:try_start_1b4 .. :try_end_1fc} :catchall_240

    move-result-object v23

    goto/16 :goto_2e

    .line 70
    :catch_1ff
    move-exception v23

    move-object/from16 v15, v23

    .line 128
    :try_start_202
    sget-object v23, Lcom/shun/hack/Unzip;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "IOErr in unzip (nextEntry, closeEntry or other): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object/from16 v23, v4

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V
    :try_end_22d
    .catchall {:try_start_202 .. :try_end_22d} :catchall_240

    .line 130
    const/16 v23, 0x0

    move/from16 v13, v23

    .line 133
    move-object/from16 v23, v7

    :try_start_233
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_236} :catch_23c
    .catchall {:try_start_233 .. :try_end_236} :catchall_240

    :goto_236
    move/from16 v23, v13

    move/from16 v2, v23

    goto/16 :goto_47

    :catch_23c
    move-exception v23

    move-object/from16 v21, v23

    goto :goto_236

    :catchall_240
    move-exception v23

    move-object/from16 v11, v23

    move-object/from16 v23, v7

    :try_start_245
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_248} :catch_24b

    :goto_248
    move-object/from16 v23, v11

    throw v23

    :catch_24b
    move-exception v23

    move-object/from16 v21, v23

    goto :goto_248

    :catch_24f
    move-exception v23

    move-object/from16 v21, v23

    goto/16 :goto_43
.end method

.method public static zipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_4
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v12

    .line 41
    new-instance v12, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v3

    invoke-direct {v13, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v12

    .line 42
    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v12

    .line 43
    move-object v12, v5

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    move-object v6, v12

    .line 45
    const/4 v12, 0x0

    move v7, v12

    :goto_33
    move v12, v7

    move-object v13, v6

    array-length v13, v13

    if-lt v12, v13, :cond_3d

    .line 57
    move-object v12, v4

    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    :goto_3c
    return-void

    .line 46
    :cond_3d
    const/16 v12, 0x400

    new-array v12, v12, [B

    move-object v8, v12

    .line 47
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v6

    move v15, v7

    aget-object v14, v14, v15

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v12

    .line 48
    move-object v12, v4

    new-instance v13, Ljava/util/zip/ZipEntry;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v6

    move/from16 v16, v7

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 51
    :goto_6a
    move-object v12, v9

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    move/from16 v17, v12

    move/from16 v12, v17

    move/from16 v13, v17

    move v10, v13

    const/4 v13, 0x0

    if-gt v12, v13, :cond_85

    .line 54
    move-object v12, v4

    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 55
    move-object v12, v9

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 45
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 52
    :cond_85
    move-object v12, v4

    move-object v13, v8

    const/4 v14, 0x0

    move v15, v10

    invoke-virtual {v12, v13, v14, v15}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8c} :catch_8d

    goto :goto_6a

    .line 57
    :catch_8d
    move-exception v12

    move-object v3, v12

    goto :goto_3c
.end method
