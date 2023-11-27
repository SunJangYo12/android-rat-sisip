.class Lcom/shun/hack/MainFileManager$100000004;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
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

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000004;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 285
    move-object v5, v3

    const-string v6, "help"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 286
    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "    Bantuan:\n1.  SHELL: jika ingin menjalankan bash shell contoh cat /system/build.prop\n2.  /storage: membuka current directory contoh /storage"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_27
    return-void

    .line 288
    :cond_28
    move-object v5, v3

    const-string v6, "SHELL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 289
    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "SHELL mode: \ncat /system/build.prop"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 290
    const-string v5, "SHELL"

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$S1000010(Ljava/lang/String;)V

    goto :goto_27

    .line 292
    :cond_43
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000010()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SHELL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 293
    const-string v5, ""

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$S1000010(Ljava/lang/String;)V

    .line 294
    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "bantuanf"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 295
    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v5}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v6}, Lcom/shun/hack/MainFileManager;->access$L1000009(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 298
    :cond_77
    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/shun/hack/MainFileManager;->access$S1000013(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 299
    move-object v5, v0

    iget-object v5, v5, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager$100000004;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v6}, Lcom/shun/hack/MainFileManager;->access$L1000013(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shun/hack/MainFileManager;->access$1000029(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto :goto_27
.end method
