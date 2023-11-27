.class public Lcom/shun/Tes;
.super Landroid/app/Activity;
.source "Tes.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 32
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
    .line 31
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
    .registers 7
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

    move-object v3, v0

    const-string v4, "com.aide.ui"

    invoke-static {v3, v4}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v3, "info"

    const-string v4, "tessss"

    invoke-static {v3, v4}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/shun/Tes;->xx(Landroid/content/Context;)V

    .line 23
    move-object v3, v0

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->alertWelcome(Landroid/content/Context;)V

    return-void
.end method
