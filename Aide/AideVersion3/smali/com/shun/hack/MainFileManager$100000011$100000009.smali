.class Lcom/shun/hack/MainFileManager$100000011$100000009;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager$100000011;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000009"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager$100000011;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$100000011;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000011$100000009;->this$0:Lcom/shun/hack/MainFileManager$100000011;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000011$100000009;)Lcom/shun/hack/MainFileManager$100000011;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000011$100000009;->this$0:Lcom/shun/hack/MainFileManager$100000011;

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
    .line 609
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000011$100000009;->this$0:Lcom/shun/hack/MainFileManager$100000011;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager$100000011;->access$0(Lcom/shun/hack/MainFileManager$100000011;)Lcom/shun/hack/MainFileManager;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/shun/hack/MainFileManager;->access$1000042(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    return-void
.end method
