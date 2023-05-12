.class Lcom/shun/hack/MainFileManager$100000008;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
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

    iput-object v4, v3, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    return-void
.end method

.method static access$0(Lcom/shun/hack/MainFileManager$100000008;)Lcom/shun/hack/MainFileManager;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shun/hack/Item;

    move-object v7, v9

    .line 497
    move-object v9, v7

    invoke-virtual {v9}, Lcom/shun/hack/Item;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_9e

    .line 509
    :goto_1e
    const/4 v9, 0x1

    move v0, v9

    return v0

    .line 499
    :pswitch_21
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v13}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v12}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/shun/hack/MainFileManager;->access$1000036(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    .line 500
    goto :goto_1e

    .line 503
    :pswitch_5f
    goto :goto_1e

    .line 505
    :pswitch_60
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v13}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v12}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/shun/hack/MainFileManager;->access$1000036(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    .line 506
    goto :goto_1e

    .line 497
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_60
        :pswitch_5f
    .end packed-switch
.end method
