.class Lcom/shun/hack/Installer$CompressFiles;
.super Landroid/os/AsyncTask;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "CompressFiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private dstName:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private final this$0:Lcom/shun/hack/Installer;


# direct methods
.method public constructor <init>(Lcom/shun/hack/Installer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/os/AsyncTask;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/shun/hack/Installer$CompressFiles;->this$0:Lcom/shun/hack/Installer;

    .line 268
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/shun/hack/Installer$CompressFiles;->src:Ljava/lang/String;

    .line 269
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/shun/hack/Installer$CompressFiles;->dstName:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/shun/hack/Installer$CompressFiles;)Lcom/shun/hack/Installer;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/Installer$CompressFiles;->this$0:Lcom/shun/hack/Installer;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/Installer$CompressFiles;->src:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/shun/hack/Installer$CompressFiles;->dstName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shun/hack/Installer;->zipPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/Boolean;

    move v6, v3

    move-object v7, v4

    move-object v3, v7

    move v4, v6

    move-object v5, v7

    move v6, v4

    move-object v7, v5

    move-object v4, v7

    move v5, v6

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v3

    return-object v0
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer$CompressFiles;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    const-string v3, "lll"

    const-string v4, "sukses"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return-void
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer$CompressFiles;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected bridge onProgressUpdate([Ljava/lang/Object;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer$CompressFiles;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
