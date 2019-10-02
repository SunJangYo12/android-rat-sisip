.class Lcom/shun/hack/MainFileManager$7$2;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager$7;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shun/hack/MainFileManager$7;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$7;)V
    .registers 2

    .prologue
    .line 579
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$7$2;->this$1:Lcom/shun/hack/MainFileManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 581
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7$2;->this$1:Lcom/shun/hack/MainFileManager$7;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$7$2;->this$1:Lcom/shun/hack/MainFileManager$7;

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$7$2;->this$1:Lcom/shun/hack/MainFileManager$7;

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$1000(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$1100(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    .line 582
    return-void
.end method
