.class Lcom/shun/hack/MainFileManager$100000008$100000006;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager$100000008;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager$100000008;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$100000008;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000008$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000008;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000008$100000006;)Lcom/shun/hack/MainFileManager$100000008;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000008$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000008;

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
    .line 492
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000008$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000008;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager$100000008;->access$0(Lcom/shun/hack/MainFileManager$100000008;)Lcom/shun/hack/MainFileManager;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/shun/hack/MainFileManager;->access$1000038(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    return-void
.end method
