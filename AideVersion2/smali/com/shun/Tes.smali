.class public Lcom/shun/Tes;
.super Landroid/app/Activity;
.source "Tes.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private xx(Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/shun/hack/MainFileManager;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/shun/hack/MainFileManager;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "com.aide.ui"

    invoke-static {v5, v6}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v5, "info"

    const-string v6, "tessss"

    invoke-static {v5, v6}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/shun/Tes;->xx(Landroid/content/Context;)V

    .line 23
    const-string v5, "koo"

    move-object v3, v5

    .line 24
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "cp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " /sdcard/Android/extrack.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shun/hack/init/ShellExecuter;->cumaExecute(Ljava/lang/String;)V

    return-void
.end method
