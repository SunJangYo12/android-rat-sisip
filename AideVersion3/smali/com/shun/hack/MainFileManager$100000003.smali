.class Lcom/shun/hack/MainFileManager$100000003;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000003;->this$0:Lcom/shun/hack/MainFileManager;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000003;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000003;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000003;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "saved to /sdcard/log_sisip_shell.txt"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000003;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$L1000006(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shun/hack/log/L;->writeShell(Ljava/lang/String;)V

    .line 166
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method
