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
.method constructor <init>()V
    .registers 1

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/shun/hack/SortItem;Lcom/shun/hack/SortItem;)I
    .registers 5

    .prologue
    .line 943
    invoke-interface {p1}, Lcom/shun/hack/SortItem;->getSortField()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/shun/hack/SortItem;->getSortField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 940
    check-cast p1, Lcom/shun/hack/SortItem;

    check-cast p2, Lcom/shun/hack/SortItem;

    invoke-virtual {p0, p1, p2}, Lcom/shun/hack/AlphabeticComparator;->compare(Lcom/shun/hack/SortItem;Lcom/shun/hack/SortItem;)I

    move-result v0

    return v0
.end method
