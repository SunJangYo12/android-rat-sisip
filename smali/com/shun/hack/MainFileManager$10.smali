.class Lcom/shun/hack/MainFileManager$10;
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
    .line 622
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

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

    .line 625
    if-nez p2, :cond_38

    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->folder:Z
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1100(Lcom/shun/hack/MainFileManager;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 627
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Text"

    aput-object v2, v0, v1

    const-string v1, "Intent"

    aput-object v1, v0, v4

    const-string v1, "Main INANG.."

    aput-object v1, v0, v5

    .line 628
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    const-string v2, "Pilih Aksi"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 630
    new-instance v2, Lcom/shun/hack/MainFileManager$10$1;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$10$1;-><init>(Lcom/shun/hack/MainFileManager$10;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 664
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 756
    :cond_37
    :goto_37
    return-void

    .line 666
    :cond_38
    if-ne p2, v4, :cond_15c

    .line 667
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "Pindah"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 668
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Paste HERE"

    aput-object v1, v0, v4

    goto :goto_37

    .line 671
    :cond_5a
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "Paste HERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 672
    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->folder:Z
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1100(Lcom/shun/hack/MainFileManager;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 676
    :try_start_7a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 678
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sukses"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 679
    const-string v0, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 681
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_d5} :catch_e8

    .line 695
    :goto_d5
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 683
    :catch_e8
    move-exception v0

    .line 684
    const-string v1, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 685
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v4

    .line 686
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Copy"

    aput-object v2, v1, v5

    .line 687
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

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

    goto :goto_d5

    .line 690
    :cond_11f
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :try_start_139
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_157} :catch_159

    goto/16 :goto_d5

    .line 693
    :catch_159
    move-exception v0

    goto/16 :goto_d5

    .line 698
    :cond_15c
    if-ne p2, v5, :cond_25f

    .line 699
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "Copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 700
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Paste HERE"

    aput-object v1, v0, v5

    goto/16 :goto_37

    .line 703
    :cond_17f
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "Paste HERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 704
    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->folder:Z
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1100(Lcom/shun/hack/MainFileManager;)Z

    move-result v1

    if-eqz v1, :cond_244

    .line 708
    :try_start_19f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 710
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sukses"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    const-string v0, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 713
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1fa} :catch_20d

    .line 724
    :goto_1fa
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 715
    :catch_20d
    move-exception v0

    .line 716
    const-string v1, ""

    # setter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v4

    .line 718
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Copy"

    aput-object v2, v1, v5

    .line 719
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

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

    goto :goto_1fa

    .line 722
    :cond_244
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1400()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fa

    .line 727
    :cond_25f
    if-ne p2, v1, :cond_2b7

    .line 729
    :try_start_261
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 730
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_292} :catch_294

    goto/16 :goto_37

    .line 731
    :catch_294
    move-exception v0

    .line 732
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

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

    goto/16 :goto_37

    .line 735
    :cond_2b7
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2d8

    .line 736
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    # setter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 740
    :cond_2d8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_304

    .line 741
    new-instance v0, Lcom/shun/hack/Installer;

    invoke-direct {v0}, Lcom/shun/hack/Installer;-><init>()V

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

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

    goto/16 :goto_37

    .line 743
    :cond_304
    const/4 v0, 0x6

    if-ne p2, v0, :cond_30e

    .line 744
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0}, Lcom/shun/hack/MainFileManager;->finish()V

    goto/16 :goto_37

    .line 746
    :cond_30e
    const/4 v0, 0x7

    if-ne p2, v0, :cond_31e

    .line 747
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->shun(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$1300(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto/16 :goto_37

    .line 749
    :cond_31e
    const/16 v0, 0x8

    if-ne p2, v0, :cond_35d

    .line 750
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, " Shell"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 751
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

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

    goto/16 :goto_37

    .line 753
    :cond_35d
    const/16 v0, 0x9

    if-ne p2, v0, :cond_37

    .line 754
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$10;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto/16 :goto_37
.end method
