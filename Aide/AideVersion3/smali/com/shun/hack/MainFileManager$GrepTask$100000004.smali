.class Lcom/shun/hack/MainFileManager$GrepTask$100000004;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager$GrepTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager$GrepTask;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$GrepTask;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$GrepTask$100000004;->this$0:Lcom/shun/hack/MainFileManager$GrepTask;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$GrepTask$100000004;)Lcom/shun/hack/MainFileManager$GrepTask;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$GrepTask$100000004;->this$0:Lcom/shun/hack/MainFileManager$GrepTask;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v4, "killall grep"

    invoke-static {v4}, Lcom/shun/hack/init/ShellExecuter;->cumaExecute(Ljava/lang/String;)V

    return-void
.end method
