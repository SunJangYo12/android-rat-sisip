.class Lcom/shun/hack/MainFileManager$2;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shun/hack/MainFileManager;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$200(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "bantuan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 228
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$200(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "    Bantuan:\n1.  SHELL: jika ingin menjalankan bash shell contoh cat /system/build.prop\n2.  /storage: membuka current directory contoh /storage"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_21
    return-void

    .line 230
    :cond_22
    const-string v1, "SHELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 231
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$200(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "SHELL mode: \ncat /system/build.prop"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 232
    const-string v0, "SHELL"

    # setter for: Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_21

    .line 234
    :cond_3b
    # getter for: Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHELL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 235
    const-string v1, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$200(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "bantuanf"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$200(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 240
    :cond_6b
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # setter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto :goto_21
.end method
