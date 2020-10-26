.class Lcom/shun/hack/Installer$CompressFiles;
.super Landroid/os/AsyncTask;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$0:Lcom/shun/hack/Installer;


# direct methods
.method public constructor <init>(Lcom/shun/hack/Installer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 267
    iput-object p1, p0, Lcom/shun/hack/Installer$CompressFiles;->this$0:Lcom/shun/hack/Installer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/shun/hack/Installer$CompressFiles;->src:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lcom/shun/hack/Installer$CompressFiles;->dstName:Ljava/lang/String;

    .line 270
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/shun/hack/Installer$CompressFiles;->src:Ljava/lang/String;

    iget-object v1, p0, Lcom/shun/hack/Installer$CompressFiles;->dstName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shun/hack/Installer;->zipPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 263
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/shun/hack/Installer$CompressFiles;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    .prologue
    .line 283
    const-string v0, "lll"

    const-string v1, "sukses"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 263
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/shun/hack/Installer$CompressFiles;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 273
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 280
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 263
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/shun/hack/Installer$CompressFiles;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
