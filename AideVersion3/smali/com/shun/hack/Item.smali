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
    .registers 13

    .prologue
    .line 941
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 942
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/shun/hack/Item;->imageId:I

    .line 943
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 944
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 945
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/shun/hack/Item;->type:I

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 961
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getImageId()I
    .registers 4

    .prologue
    .line 977
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/shun/hack/Item;->imageId:I

    move v0, v2

    return v0
.end method

.method public getSortField()Ljava/lang/String;
    .registers 4

    .prologue
    .line 981
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getSubheader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 969
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getType()I
    .registers 4

    .prologue
    .line 953
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/shun/hack/Item;->type:I

    move v0, v2

    return v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 957
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-void
.end method

.method public setImageId(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 973
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/shun/hack/Item;->imageId:I

    return-void
.end method

.method public setSubheader(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 965
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 949
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/shun/hack/Item;->type:I

    return-void
.end method
