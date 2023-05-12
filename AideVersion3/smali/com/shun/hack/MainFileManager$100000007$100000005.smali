.class Lcom/shun/hack/MainFileManager$100000007$100000005;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager$100000007;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager$100000007;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$100000007;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000007$100000005;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000007$100000005;)Lcom/shun/hack/MainFileManager$100000007;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000007$100000005;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000007$100000005;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager$100000007;->access$0(Lcom/shun/hack/MainFileManager$100000007;)Lcom/shun/hack/MainFileManager;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/shun/hack/MainFileManager;->access$1000036(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    return-void
.end method
