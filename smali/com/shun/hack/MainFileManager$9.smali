.class Lcom/shun/hack/MainFileManager$9;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V
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
    .line 626
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 629
    if-nez p2, :cond_3c

    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->folder:Z
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 631
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Text"

    aput-object v2, v0, v1

    const-string v1, "Intent"

    aput-object v1, v0, v4

    const-string v1, "Main INANG.."

    aput-object v1, v0, v5

    .line 632
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    const-string v2, "Pilih Aksi"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 634
    new-instance v2, Lcom/shun/hack/MainFileManager$9$1;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$9$1;-><init>(Lcom/shun/hack/MainFileManager$9;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 668
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 763
    :cond_3b
    :goto_3b
    return-void

    .line 670
    :cond_3c
    if-ne p2, v4, :cond_160

    .line 671
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "Pindah"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 672
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Paste HERE"

    aput-object v1, v0, v4

    goto :goto_3b

    .line 675
    :cond_5e
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "Paste HERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 676
    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->folder:Z
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 680
    :try_start_7e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 682
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sukses"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 683
    const-string v0, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 685
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_d9} :catch_ec

    .line 699
    :goto_d9
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 687
    :catch_ec
    move-exception v0

    .line 688
    const-string v1, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v4

    .line 690
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Copy"

    aput-object v2, v1, v5

    .line 691
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d9

    .line 694
    :cond_123
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :try_start_13d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_15b} :catch_15d

    goto/16 :goto_d9

    .line 697
    :catch_15d
    move-exception v0

    goto/16 :goto_d9

    .line 702
    :cond_160
    if-ne p2, v5, :cond_263

    .line 703
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "Copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 704
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Paste HERE"

    aput-object v1, v0, v5

    goto/16 :goto_3b

    .line 707
    :cond_183
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "Paste HERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 708
    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->folder:Z
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;)Z

    move-result v1

    if-eqz v1, :cond_248

    .line 712
    :try_start_1a3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 714
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sukses"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 715
    const-string v0, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 717
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1fe} :catch_211

    .line 728
    :goto_1fe
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 719
    :catch_211
    move-exception v0

    .line 720
    const-string v1, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 721
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v4

    .line 722
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Copy"

    aput-object v2, v1, v5

    .line 723
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1fe

    .line 726
    :cond_248
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fe

    .line 731
    :cond_263
    if-ne p2, v1, :cond_2bb

    .line 733
    :try_start_265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 734
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_296} :catch_298

    goto/16 :goto_3b

    .line 735
    :catch_298
    move-exception v0

    .line 736
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR hapus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 739
    :cond_2bb
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2dc

    .line 740
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    # setter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 744
    :cond_2dc
    const/4 v0, 0x5

    if-ne p2, v0, :cond_308

    .line 745
    new-instance v0, Lcom/shun/hack/Installer;

    invoke-direct {v0}, Lcom/shun/hack/Installer;-><init>()V

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/hasil.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shun/hack/Installer;->compressFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 747
    :cond_308
    const/4 v0, 0x6

    if-ne p2, v0, :cond_312

    .line 748
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0}, Lcom/shun/hack/MainFileManager;->finish()V

    goto/16 :goto_3b

    .line 750
    :cond_312
    const/4 v0, 0x7

    if-ne p2, v0, :cond_322

    .line 751
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->shun(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$1700(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto/16 :goto_3b

    .line 753
    :cond_322
    const/16 v0, 0x8

    if-ne p2, v0, :cond_361

    .line 754
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, " Shell"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 755
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->alertShell(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 757
    :cond_361
    const/16 v0, 0x9

    if-ne p2, v0, :cond_36c

    .line 758
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto/16 :goto_3b

    .line 760
    :cond_36c
    const/16 v0, 0xa

    if-ne p2, v0, :cond_3b

    .line 761
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b
.end method
