.class Lcom/shun/hack/MainFileManager$7$1;
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
    .line 567
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$7$1;->this$1:Lcom/shun/hack/MainFileManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 569
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7$1;->this$1:Lcom/shun/hack/MainFileManager$7;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    const/4 v1, 0x0

    const-string v2, ""

    # invokes: Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$1100(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    .line 570
    return-void
.end method
