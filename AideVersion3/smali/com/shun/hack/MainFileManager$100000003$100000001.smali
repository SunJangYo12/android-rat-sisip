.class Lcom/shun/hack/MainFileManager$100000003$100000001;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager$100000003;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager$100000003;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$100000003;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000003$100000001;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000003$100000001;)Lcom/shun/hack/MainFileManager$100000003;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000003$100000001;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    return-void
.end method
