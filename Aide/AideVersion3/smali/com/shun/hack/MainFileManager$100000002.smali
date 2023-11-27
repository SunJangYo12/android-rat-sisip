.class Lcom/shun/hack/MainFileManager$100000002;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

.field private final val$xcontext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
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

    iput-object v5, v4, Lcom/shun/hack/MainFileManager$100000002;->val$xcontext:Landroid/content/Context;

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
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 17
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_b5

    move v7, v2

    const/16 v8, 0x42

    if-ne v7, v8, :cond_b5

    .line 147
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "press long text for save to file"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 148
    new-instance v7, Lcom/shun/hack/MainFileManager$GrepTask;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {v8, v9}, Lcom/shun/hack/MainFileManager$GrepTask;-><init>(Lcom/shun/hack/MainFileManager;)V

    move-object v5, v7

    .line 149
    move-object v7, v5

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

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000005(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/shun/hack/MainFileManager$GrepTask;->name:Ljava/lang/String;

    .line 150
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000002;->val$xcontext:Landroid/content/Context;

    iput-object v8, v7, Lcom/shun/hack/MainFileManager$GrepTask;->applicationContext:Landroid/content/Context;

    .line 151
    move-object v7, v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager$100000002;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v11}, Lcom/shun/hack/MainFileManager;->access$L1000005(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Lcom/shun/hack/MainFileManager$GrepTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v7

    .line 153
    const/4 v7, 0x1

    move v0, v7

    .line 155
    :goto_b4
    return v0

    :cond_b5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_b4
.end method
