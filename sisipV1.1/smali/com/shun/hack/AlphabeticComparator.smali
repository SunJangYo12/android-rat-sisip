.class Lcom/shun/hack/AlphabeticComparator;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/shun/hack/SortItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 867
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/shun/hack/SortItem;Lcom/shun/hack/SortItem;)I
    .registers 9

    .prologue
    .line 866
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-interface {v4}, Lcom/shun/hack/SortItem;->getSortField()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v5}, Lcom/shun/hack/SortItem;->getSortField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/shun/hack/SortItem;

    move-object v6, v2

    check-cast v6, Lcom/shun/hack/SortItem;

    invoke-virtual {v4, v5, v6}, Lcom/shun/hack/AlphabeticComparator;->compare(Lcom/shun/hack/SortItem;Lcom/shun/hack/SortItem;)I

    move-result v4

    move v0, v4

    return v0
.end method
