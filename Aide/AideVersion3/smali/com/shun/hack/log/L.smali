.class public Lcom/shun/hack/log/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final MAX_LEN:J = 0x86920L

.field private static final token:Ljava/lang/String; = " : "


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 79
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .prologue
    .line 57
    move-object v0, p0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 59
    :try_start_a
    new-instance v7, Ljava/io/FileReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 60
    const/16 v7, 0x44c

    new-array v7, v7, [C

    move-object v4, v7

    .line 61
    :cond_19
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/io/FileReader;->read([C)I

    move-result v7

    move v5, v7

    .line 66
    move v7, v5

    const/4 v8, 0x0

    if-lt v7, v8, :cond_2c

    .line 68
    move-object v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_2b} :catch_37
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_3d

    move-result-object v7

    .line 63
    :cond_2c
    move v7, v5

    const/4 v8, 0x0

    if-ge v7, v8, :cond_19

    .line 78
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    :goto_36
    return-object v0

    .line 63
    :catch_37
    move-exception v7

    move-object v3, v7

    .line 74
    const-string v7, "File not found (TODO)"

    move-object v0, v7

    goto :goto_36

    :catch_3d
    move-exception v7

    move-object v3, v7

    .line 76
    const-string v7, "IOException (TODO)"

    move-object v0, v7

    goto :goto_36
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_4
    new-instance v8, Ljava/io/File;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "log_sisip.txt"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v8

    .line 19
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x86920

    cmp-long v8, v8, v10

    if-lez v8, :cond_b3

    .line 20
    const/4 v8, 0x0

    move v3, v8

    .line 24
    :goto_21
    new-instance v8, Ljava/io/FileWriter;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v4

    move v11, v3

    invoke-direct {v9, v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v5, v8

    .line 25
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 26
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 27
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V

    .line 28
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b2} :catch_b7

    .line 31
    :goto_b2
    return-void

    .line 22
    :cond_b3
    const/4 v8, 0x1

    move v3, v8

    goto/16 :goto_21

    .line 28
    :catch_b7
    move-exception v8

    move-object v3, v8

    .line 31
    const-string v8, "L"

    const-string v9, "err in logging"

    move-object v10, v3

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_b2
.end method

.method public static writeShell(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "log_sisip_shell.txt"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 40
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x86920

    cmp-long v7, v7, v9

    if-lez v7, :cond_4f

    .line 41
    const/4 v7, 0x0

    move v2, v7

    .line 45
    :goto_1e
    new-instance v7, Ljava/io/FileWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    move v10, v2

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v4, v7

    .line 46
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 47
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 48
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V

    .line 49
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4e} :catch_52

    .line 52
    :goto_4e
    return-void

    .line 43
    :cond_4f
    const/4 v7, 0x1

    move v2, v7

    goto :goto_1e

    .line 49
    :catch_52
    move-exception v7

    move-object v2, v7

    .line 52
    const-string v7, "L"

    const-string v8, "err in message"

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_4e
.end method
