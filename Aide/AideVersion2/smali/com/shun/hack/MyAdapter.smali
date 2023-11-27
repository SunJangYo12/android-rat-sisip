.class Lcom/shun/hack/MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private li:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shun/hack/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shun/hack/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    .line 733
    move-object v4, v2

    if-eqz v4, :cond_19

    .line 734
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    .line 736
    :cond_19
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    .line 737
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, v4, Lcom/shun/hack/MyAdapter;->li:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 741
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 745
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shun/hack/Item;

    move-object v0, v3

    return-object v0
.end method

.method public getItemId(I)J
    .registers 7

    .prologue
    .line 749
    move-object v0, p0

    move v1, p1

    move v3, v1

    int-to-long v3, v3

    move-wide v0, v3

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22

    .prologue
    .line 753
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v12

    .line 754
    move-object v12, v5

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 755
    move-object v12, v5

    new-instance v13, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v6, v12

    .line 758
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v12

    .line 761
    move-object v12, v7

    new-instance v13, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    move-object v12, v7

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 763
    move-object v12, v5

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 765
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v8, v12

    .line 766
    move-object v12, v8

    const-string v13, "#040404"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    move-object v12, v8

    const/16 v13, 0xf

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 768
    move-object v12, v7

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 770
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v9, v12

    .line 771
    move-object v12, v9

    const-string v13, "#040404"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    move-object v12, v9

    const/16 v13, 0xa

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 773
    move-object v12, v7

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shun/hack/Item;

    move-object v10, v12

    .line 777
    move-object v12, v6

    move-object v13, v10

    invoke-virtual {v13}, Lcom/shun/hack/Item;->getImageId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 778
    move-object v12, v8

    move-object v13, v10

    invoke-virtual {v13}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v13}, Lcom/shun/hack/Item;->getSubheader()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    move-object v12, v5

    move-object v0, v12

    return-object v0
.end method
