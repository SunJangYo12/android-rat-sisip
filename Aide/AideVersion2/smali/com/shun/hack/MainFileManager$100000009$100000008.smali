.class Lcom/shun/hack/MainFileManager$100000009$100000008;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager$100000009;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation


# instance fields
.field private final this$0:Lcom/shun/hack/MainFileManager$100000009;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$100000009;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000009$100000008;)Lcom/shun/hack/MainFileManager$100000009;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v10, v2

    const/4 v11, 0x0

    if-ne v10, v11, :cond_48

    .line 525
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000006(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v11

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000008(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "cat "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v13}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v13

    invoke-static {v13}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_47
    :goto_47
    return-void

    .line 527
    :cond_48
    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_119

    .line 528
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    move-object v4, v10

    .line 529
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$1000039(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 530
    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 532
    move-object v10, v6

    if-eqz v10, :cond_d6

    .line 533
    new-instance v10, Landroid/content/Intent;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    move-object v7, v10

    .line 534
    move-object v10, v7

    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 535
    move-object v10, v7

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v12}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v12

    invoke-static {v12}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 536
    move-object v10, v7

    const-string v11, "data"

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v12}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v12

    invoke-static {v12}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 537
    move-object v10, v7

    const-string v11, "android.intent.extra.TITLE"

    const-string v12, "\u0427\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c?"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 539
    move-object v10, v0

    :try_start_c7
    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_d1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c7 .. :try_end_d1} :catch_d3

    .line 546
    :goto_d1
    goto/16 :goto_47

    .line 539
    :catch_d3
    move-exception v10

    move-object v8, v10

    goto :goto_d1

    .line 544
    :cond_d6
    new-instance v10, Landroid/content/Intent;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    .line 545
    move-object v10, v7

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v12}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v12

    invoke-static {v12}, Lcom/shun/hack/MainFileManager;->access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "*/*"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 546
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_d1

    .line 549
    :cond_119
    move v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_47

    .line 550
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000009$100000008;->this$0:Lcom/shun/hack/MainFileManager$100000009;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager$100000009;->access$0(Lcom/shun/hack/MainFileManager$100000009;)Lcom/shun/hack/MainFileManager;

    move-result-object v11

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shun/hack/MainFileManager;->access$1000032(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto/16 :goto_47
.end method
