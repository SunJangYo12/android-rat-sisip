.class public Lcom/shun/hack/init/ShellExecuter;
.super Ljava/lang/Object;
.source "ShellExecuter.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 9
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cumaExecute(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v4

    :goto_a
    return-void

    :catch_b
    move-exception v4

    move-object v2, v4

    goto :goto_a
.end method


# virtual methods
.method public Executer(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v8

    .line 28
    :try_start_b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    move-object v4, v8

    .line 31
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v8

    .line 32
    new-instance v8, Ljava/io/BufferedReader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v8

    .line 34
    const-string v8, ""

    move-object v6, v8

    .line 35
    :goto_33
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_64

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v6, v9

    if-nez v8, :cond_47

    .line 43
    :goto_3e
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 44
    move-object v8, v5

    move-object v0, v8

    return-object v0

    .line 36
    :cond_47
    move-object v8, v3

    :try_start_48
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_62} :catch_64

    move-result-object v8

    goto :goto_33

    .line 35
    :catch_64
    move-exception v8

    move-object v5, v8

    .line 41
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method
