.class Lcom/shun/hack/MainFileManager$100000007$100000006;
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
    name = "100000006"
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

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000007$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000007$100000006;)Lcom/shun/hack/MainFileManager$100000007;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000007$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000007$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager$100000007;->access$0(Lcom/shun/hack/MainFileManager$100000007;)Lcom/shun/hack/MainFileManager;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000007$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager$100000007;->access$0(Lcom/shun/hack/MainFileManager$100000007;)Lcom/shun/hack/MainFileManager;

    move-result-object v7

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager$100000007$100000006;->this$0:Lcom/shun/hack/MainFileManager$100000007;

    invoke-static {v6}, Lcom/shun/hack/MainFileManager$100000007;->access$0(Lcom/shun/hack/MainFileManager$100000007;)Lcom/shun/hack/MainFileManager;

    move-result-object v6

    invoke-static {v6}, Lcom/shun/hack/MainFileManager;->access$L1000001(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/shun/hack/MainFileManager;->access$1000036(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    return-void
.end method
