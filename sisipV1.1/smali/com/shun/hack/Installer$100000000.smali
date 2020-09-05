.class Lcom/shun/hack/Installer$100000000;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/Installer;

.field private final val$maxKb:I


# direct methods
.method constructor <init>(Lcom/shun/hack/Installer;I)V
    .registers 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/Installer$100000000;->this$0:Lcom/shun/hack/Installer;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/shun/hack/Installer$100000000;->val$maxKb:I

    return-void
.end method

.method static access$0(Lcom/shun/hack/Installer$100000000;)Lcom/shun/hack/Installer;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/Installer$100000000;->this$0:Lcom/shun/hack/Installer;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Installer$100000000;->this$0:Lcom/shun/hack/Installer;

    invoke-static {v2}, Lcom/shun/hack/Installer;->access$L1000008(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/shun/hack/Installer$100000000;->val$maxKb:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 361
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Installer$100000000;->this$0:Lcom/shun/hack/Installer;

    invoke-static {v2}, Lcom/shun/hack/Installer;->access$L1000008(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 362
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Installer$100000000;->this$0:Lcom/shun/hack/Installer;

    invoke-static {v2}, Lcom/shun/hack/Installer;->access$L1000008(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
