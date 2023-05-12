.class Lcom/shun/hack/MainFileManager$100000013;
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
    name = "100000013"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/MainFileManager$100000013$100000012;
    }
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

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000013;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 655
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v7, v2

    const/4 v8, 0x0

    if-ne v7, v8, :cond_5b

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000003(Lcom/shun/hack/MainFileManager;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 657
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-string v10, "Text"

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    const-string v10, "Intent"

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    const-string v10, "Main INANG.."

    aput-object v10, v8, v9

    move-object v4, v7

    .line 658
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v7

    .line 659
    move-object v7, v5

    const-string v8, "Pilih Aksi"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 660
    move-object v7, v5

    move-object v8, v4

    new-instance v9, Lcom/shun/hack/MainFileManager$100000013$100000012;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/shun/hack/MainFileManager$100000013$100000012;-><init>(Lcom/shun/hack/MainFileManager$100000013;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 694
    move-object v7, v5

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 795
    :cond_5a
    :goto_5a
    return-void

    .line 696
    :cond_5b
    move v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1cc

    .line 697
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "Pindah"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 698
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$S1000011(Ljava/lang/String;)V

    .line 699
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "Paste HERE"

    aput-object v9, v7, v8

    .line 725
    :cond_83
    :goto_83
    goto :goto_5a

    .line 701
    :cond_84
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "Paste HERE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 702
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 704
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000003(Lcom/shun/hack/MainFileManager;)Z

    move-result v7

    if-eqz v7, :cond_184

    .line 706
    :try_start_a8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "mv -R "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 708
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "sukses"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 709
    const-string v7, ""

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$S1000011(Ljava/lang/String;)V

    .line 710
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "Pindah"

    aput-object v9, v7, v8

    .line 711
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "Copy"

    aput-object v9, v7, v8
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_12c} :catch_142

    .line 725
    :goto_12c
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000029(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 711
    :catch_142
    move-exception v7

    move-object v5, v7

    .line 714
    const-string v7, ""

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$S1000011(Ljava/lang/String;)V

    .line 715
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "Pindah"

    aput-object v9, v7, v8

    .line 716
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "Copy"

    aput-object v9, v7, v8

    .line 717
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "ERROR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_12c

    .line 720
    :cond_184
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :try_start_1a4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "rm -R "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1c5} :catch_1c8

    move-result-object v7

    goto/16 :goto_12c

    :catch_1c8
    move-exception v7

    move-object v5, v7

    goto/16 :goto_12c

    .line 728
    :cond_1cc
    move v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_317

    .line 729
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const-string v8, "Copy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f6

    .line 730
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$S1000011(Ljava/lang/String;)V

    .line 731
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "Paste HERE"

    aput-object v9, v7, v8

    .line 754
    :cond_1f4
    :goto_1f4
    goto/16 :goto_5a

    .line 733
    :cond_1f6
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const-string v8, "Paste HERE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    .line 734
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 736
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000003(Lcom/shun/hack/MainFileManager;)Z

    move-result v7

    if-eqz v7, :cond_2f6

    .line 738
    :try_start_21a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "cp -R "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 740
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "sukses"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 741
    const-string v7, ""

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$S1000011(Ljava/lang/String;)V

    .line 742
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "Pindah"

    aput-object v9, v7, v8

    .line 743
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "Copy"

    aput-object v9, v7, v8
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_29e} :catch_2b4

    .line 754
    :goto_29e
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000029(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_1f4

    .line 743
    :catch_2b4
    move-exception v7

    move-object v5, v7

    .line 746
    const-string v7, ""

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$S1000011(Ljava/lang/String;)V

    .line 747
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "Pindah"

    aput-object v9, v7, v8

    .line 748
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "Copy"

    aput-object v9, v7, v8

    .line 749
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "ERROR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_29e

    .line 752
    :cond_2f6
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$L1000011()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29e

    .line 757
    :cond_317
    move v7, v2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_37f

    .line 759
    :try_start_31b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "rm -R "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 760
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/shun/hack/MainFileManager;->access$1000043(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000029(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_354} :catch_356

    .line 762
    :goto_354
    goto/16 :goto_5a

    .line 760
    :catch_356
    move-exception v7

    move-object v4, v7

    .line 762
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "ERROR hapus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_354

    .line 765
    :cond_37f
    move v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3a5

    .line 766
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$S1000013(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 767
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000013(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000029(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 770
    :cond_3a5
    move v7, v2

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3da

    .line 771
    new-instance v7, Lcom/shun/hack/Installer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/shun/hack/Installer;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000013(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000013(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/hasil.zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/shun/hack/Installer;->compressFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 773
    :cond_3da
    move v7, v2

    const/4 v8, 0x6

    if-ne v7, v8, :cond_3e6

    .line 774
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v7}, Lcom/shun/hack/MainFileManager;->finish()V

    goto/16 :goto_5a

    .line 776
    :cond_3e6
    move v7, v2

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3f9

    .line 777
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000038(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto/16 :goto_5a

    .line 779
    :cond_3f9
    move v7, v2

    const/16 v8, 0x8

    if-ne v7, v8, :cond_441

    .line 780
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    const-string v8, " Shell"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 781
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "ls "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/shun/hack/MainFileManager;->access$1000028(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 783
    :cond_441
    move v7, v2

    const/16 v8, 0x9

    if-ne v7, v8, :cond_44e

    .line 784
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v7}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto/16 :goto_5a

    .line 786
    :cond_44e
    move v7, v2

    const/16 v8, 0xa

    if-ne v7, v8, :cond_48c

    .line 787
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000009(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5a

    .line 789
    :cond_48c
    move v7, v2

    const/16 v8, 0xb

    if-ne v7, v8, :cond_4a6

    .line 790
    const-string v7, "Untuk menambah file smali beserta folder di apkeditor ini, buat folder paket >click lama folder itu > replace di apkeditor > click ok"

    move-object v4, v7

    .line 791
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v4

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5a

    .line 793
    :cond_4a6
    move v7, v2

    const/16 v8, 0xc

    if-ne v7, v8, :cond_5a

    .line 795
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000013;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/shun/hack/MainFileManager;->alertGrepString(Landroid/content/Context;)V

    goto/16 :goto_5a
.end method
