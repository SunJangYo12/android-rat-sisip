.class Lcom/shun/hack/Item;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Lcom/shun/hack/SortItem;


# instance fields
.field private header:Ljava/lang/String;

.field private imageId:I

.field private subheader:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput p1, p0, Lcom/shun/hack/Item;->imageId:I

    .line 893
    iput-object p2, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 894
    iput-object p3, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 895
    iput p4, p0, Lcom/shun/hack/Item;->type:I

    .line 896
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .registers 2

    .prologue
    .line 927
    iget v0, p0, Lcom/shun/hack/Item;->imageId:I

    return v0
.end method

.method public getSortField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getSubheader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 903
    iget v0, p0, Lcom/shun/hack/Item;->type:I

    return v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 907
    iput-object p1, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 908
    return-void
.end method

.method public setImageId(I)V
    .registers 2

    .prologue
    .line 923
    iput p1, p0, Lcom/shun/hack/Item;->imageId:I

    .line 924
    return-void
.end method

.method public setSubheader(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 915
    iput-object p1, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 916
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 899
    iput p1, p0, Lcom/shun/hack/Item;->type:I

    .line 900
    return-void
.end method
