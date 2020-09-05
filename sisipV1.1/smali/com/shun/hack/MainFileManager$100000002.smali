.class Lcom/shun/hack/MainFileManager$100000002;
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
    name = "100000002"
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

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000002;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000002;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

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
    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v10

    .line 211
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000002;->val$input:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 213
    :try_start_1b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    move-object v6, v10

    .line 216
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    move-result v10

    .line 217
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

    .line 219
    const-string v10, ""

    move-object v8, v10

    .line 220
    :goto_43
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_47} :catch_80

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v8, v11

    if-nez v10, :cond_63

    .line 228
    :goto_4e
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 229
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v11

    move-object v12, v7

    invoke-static {v10, v11, v12}, Lcom/shun/hack/MainFileManager;->access$1000022(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_63
    move-object v10, v4

    :try_start_64
    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7e} :catch_80

    move-result-object v10

    goto :goto_43

    .line 220
    :catch_80
    move-exception v10

    move-object v7, v10

    .line 226
    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

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

    goto :goto_4e
.end method
