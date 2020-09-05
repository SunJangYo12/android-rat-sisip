.class public Lcom/shun/hack/log/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final MAX_LEN:J = 0xc800L

.field private static final token:Ljava/lang/String; = " : "


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
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

    const-wide/32 v10, 0xc800

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
