.class Lcom/shun/hack/Installer$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/Installer;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shun/hack/Installer;

.field final synthetic val$maxKb:I


# direct methods
.method constructor <init>(Lcom/shun/hack/Installer;I)V
    .registers 3

    .prologue
    .line 357
    iput-object p1, p0, Lcom/shun/hack/Installer$1;->this$0:Lcom/shun/hack/Installer;

    iput p2, p0, Lcom/shun/hack/Installer$1;->val$maxKb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/shun/hack/Installer$1;->this$0:Lcom/shun/hack/Installer;

    # getter for: Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shun/hack/Installer;->access$000(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/shun/hack/Installer$1;->val$maxKb:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 361
    iget-object v0, p0, Lcom/shun/hack/Installer$1;->this$0:Lcom/shun/hack/Installer;

    # getter for: Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shun/hack/Installer;->access$000(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 362
    iget-object v0, p0, Lcom/shun/hack/Installer$1;->this$0:Lcom/shun/hack/Installer;

    # getter for: Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shun/hack/Installer;->access$000(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 363
    return-void
.end method
