.class Lcom/shun/hack/MainFileManager$100000003$100000002;
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
    name = "100000002"
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

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000003$100000002;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000003$100000002;)Lcom/shun/hack/MainFileManager$100000003;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000003$100000002;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v10

    .line 143
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "grep -R "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager$100000003$100000002;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    invoke-static {v13}, Lcom/shun/hack/MainFileManager$100000003;->access$0(Lcom/shun/hack/MainFileManager$100000003;)Lcom/shun/hack/MainFileManager;

    move-result-object v13

    invoke-static {v13}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000003$100000002;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager$100000003;->access$0(Lcom/shun/hack/MainFileManager$100000003;)Lcom/shun/hack/MainFileManager;

    move-result-object v11

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000005(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 145
    :try_start_76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    move-object v6, v10

    .line 148
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    move-result v10

    .line 149
    new-instance v10, Ljava/io/BufferedReader;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/io/InputStreamReader;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v10

    .line 151
    const-string v10, ""

    move-object v8, v10

    .line 152
    :goto_9e
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a2} :catch_d6

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v8, v11

    if-nez v10, :cond_b9

    .line 161
    :goto_a9
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000003$100000002;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000003;->access$0(Lcom/shun/hack/MainFileManager$100000003;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000006(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 153
    :cond_b9
    move-object v10, v4

    :try_start_ba
    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d4} :catch_d6

    move-result-object v10

    goto :goto_9e

    .line 152
    :catch_d6
    move-exception v10

    move-object v7, v10

    .line 158
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000003$100000002;->this$0:Lcom/shun/hack/MainFileManager$100000003;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager$100000003;->access$0(Lcom/shun/hack/MainFileManager$100000003;)Lcom/shun/hack/MainFileManager;

    move-result-object v10

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_a9
.end method
