.class Lcom/shun/hack/MainFileManager$7;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->getPressListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 556
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$902(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shun/hack/Item;

    # setter for: Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;
    invoke-static {v1, v0}, Lcom/shun/hack/MainFileManager;->access$1002(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/Item;)Lcom/shun/hack/Item;

    .line 562
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1000(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shun/hack/Item;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c2

    .line 588
    :goto_27
    return-void

    .line 565
    :pswitch_28
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$1000(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1200(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/shun/hack/MainFileManager$7$1;

    invoke-direct {v1, p0}, Lcom/shun/hack/MainFileManager$7$1;-><init>(Lcom/shun/hack/MainFileManager$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27

    .line 574
    :pswitch_6e
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # invokes: Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1300(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto :goto_27

    .line 578
    :pswitch_85
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;
    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$1000(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shun/hack/MainFileManager;->selectAction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$1400(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    # getter for: Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1200(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/shun/hack/MainFileManager$7$2;

    invoke-direct {v1, p0}, Lcom/shun/hack/MainFileManager$7$2;-><init>(Lcom/shun/hack/MainFileManager$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_27

    .line 562
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_28
        :pswitch_85
        :pswitch_6e
    .end packed-switch
.end method
