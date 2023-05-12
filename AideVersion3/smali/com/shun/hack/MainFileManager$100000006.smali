.class Lcom/shun/hack/MainFileManager$100000006;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager;

.field private final val$shistory:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;[Ljava/lang/String;)V
    .registers 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000006;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000006;->val$shistory:[Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000006;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000006;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/shun/hack/MainFileManager$100000006;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000006;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager$100000006;->val$shistory:[Ljava/lang/String;

    move v7, v2

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/shun/hack/MainFileManager;->access$1000029(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
