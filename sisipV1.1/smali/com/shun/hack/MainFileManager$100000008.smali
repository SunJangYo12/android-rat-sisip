.class Lcom/shun/hack/MainFileManager$100000008;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MainFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/MainFileManager$100000008$100000006;,
        Lcom/shun/hack/MainFileManager$100000008$100000007;
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
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$S1000013(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 483
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shun/hack/Item;

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$S1000001(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/Item;)V

    .line 485
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000001(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shun/hack/Item;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_10a

    .line 507
    :goto_33
    return-void

    .line 488
    :pswitch_34
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000001(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$S1000012(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 489
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000026(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 490
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000005(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Lcom/shun/hack/MainFileManager$100000008$100000006;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/shun/hack/MainFileManager$100000008$100000006;-><init>(Lcom/shun/hack/MainFileManager$100000008;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    goto :goto_33

    .line 497
    :pswitch_97
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$1000039(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$S1000012(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 498
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000026(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 499
    goto :goto_33

    .line 501
    :pswitch_b2
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v10}, Lcom/shun/hack/MainFileManager;->access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->access$L1000001(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shun/hack/MainFileManager;->access$1000041(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 502
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager$100000008;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v7}, Lcom/shun/hack/MainFileManager;->access$L1000005(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Lcom/shun/hack/MainFileManager$100000008$100000007;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/shun/hack/MainFileManager$100000008$100000007;-><init>(Lcom/shun/hack/MainFileManager$100000008;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    goto/16 :goto_33

    .line 485
    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_b2
        :pswitch_97
    .end packed-switch
.end method
