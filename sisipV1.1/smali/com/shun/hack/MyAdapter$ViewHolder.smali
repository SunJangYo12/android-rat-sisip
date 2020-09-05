.class Lcom/shun/hack/MyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MainFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shun/hack/MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "ViewHolder"
.end annotation


# instance fields
.field header:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field subheader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 804
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
