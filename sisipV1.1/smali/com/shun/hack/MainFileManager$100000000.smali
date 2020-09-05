.class Lcom/shun/hack/MainFileManager$100000000;
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
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V
    .registers 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000000;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000000;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000000;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000000;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :try_start_3
    new-instance v6, Lcom/shun/hack/FileUtils;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/shun/hack/FileUtils;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager$100000000;->val$input:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000000;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_23

    .line 80
    :goto_22
    return-void

    .line 78
    :catch_23
    move-exception v6

    move-object v4, v6

    .line 80
    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager$100000000;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v6}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_22
.end method
