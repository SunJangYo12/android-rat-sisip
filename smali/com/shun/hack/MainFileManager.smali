.class public Lcom/shun/hack/MainFileManager;
.super Landroid/app/Activity;
.source "MainFileManager.java"


# static fields
.field private static final tag:Ljava/lang/String; = "MainFileManager"

.field private static tmpCloneFie:Ljava/lang/String;

.field private static tmpEdt:Ljava/lang/String;


# instance fields
.field public aksiVar:[Ljava/lang/String;

.field private alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

.field private btn:Landroid/widget/Button;

.field private chooseFile:Z

.field private context:Landroid/content/Context;

.field private currPath:Ljava/lang/String;

.field private edt:Landroid/widget/EditText;

.field private folder:Z

.field private fullPath:Landroid/widget/TextView;

.field private it:Lcom/shun/hack/Item;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shun/hack/Item;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mapExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private prevPath:Ljava/lang/String;

.field private settings:Landroid/content/SharedPreferences;

.field private shell:Lcom/shun/hack/init/ShellExecuter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/Item;)Lcom/shun/hack/Item;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->selectAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/shun/hack/MainFileManager;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/shun/hack/MainFileManager;->folder:Z

    return v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-static {p0}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->shun(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/shun/hack/MainFileManager;->xalertShell(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/shun/hack/MainFileManager;->alertShell(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    return-object p1
.end method

.method private alertAksi(ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 622
    iput-object p2, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 623
    iput-boolean p1, p0, Lcom/shun/hack/MainFileManager;->folder:Z

    .line 624
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    const-string v1, "Pilih Aksi"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 626
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    new-instance v2, Lcom/shun/hack/MainFileManager$9;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$9;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 768
    return-void
.end method

.method private alertShell(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/16 v7, 0x1f4

    const/4 v8, -0x1

    const/4 v11, -0x2

    .line 320
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    const-string v1, "Alice shell"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 326
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 327
    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 328
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 331
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x50

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 333
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 336
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const-string v6, " Run"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const-string v6, " Clear"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v3, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {v3, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    invoke-virtual {v2, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 356
    new-instance v2, Lcom/shun/hack/MainFileManager$5;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$5;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    new-instance v2, Lcom/shun/hack/MainFileManager$6;

    invoke-direct {v2, p0, v1}, Lcom/shun/hack/MainFileManager$6;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 387
    return-void
.end method

.method private calcBackPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 774
    :goto_f
    return-object v0

    .line 773
    :catch_10
    move-exception v0

    .line 774
    const-string v0, ""

    goto :goto_f
.end method

.method private calcSize(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 502
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    .line 503
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, " b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_10
    return-object v0

    .line 504
    :cond_11
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2b

    .line 505
    long-to-float v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->round(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Kb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 507
    :cond_2b
    long-to-float v0, p1

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->round(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 814
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 815
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 594
    new-instance v0, Lcom/shun/hack/MainFileManager$8;

    invoke-direct {v0, p0}, Lcom/shun/hack/MainFileManager$8;-><init>(Lcom/shun/hack/MainFileManager;)V

    return-object v0
.end method

.method private getPressListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 556
    new-instance v0, Lcom/shun/hack/MainFileManager$7;

    invoke-direct {v0, p0}, Lcom/shun/hack/MainFileManager$7;-><init>(Lcom/shun/hack/MainFileManager;)V

    return-object v0
.end method

.method private initMapExt()V
    .registers 5

    .prologue
    const v3, 0x1080040

    .line 520
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".php"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".html"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".txt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".cfg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".conf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".config"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ini"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".sh"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".css"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".mp3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".amr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".wav"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".mid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".midi"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ogg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".mp4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".3gp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".apk"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".sql"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".doc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".docx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ico"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".jpg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".bmp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".gif"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".png"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".pdf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ppt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".zip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".rar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".tar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".7z"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".jar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-void
.end method

.method private pwd(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 778
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readFolder(Ljava/lang/String;)V
    .registers 15

    .prologue
    .line 390
    const-string v0, "MainFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :try_start_18
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ls"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-l"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-a"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 397
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "-a"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 399
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    .line 401
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_b4} :catch_b5

    .line 457
    :goto_b4
    return-void

    .line 405
    :catch_b5
    move-exception v0

    .line 406
    const-string v1, "MainFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read ls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    .line 409
    :cond_d3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    .line 410
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 411
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    .line 414
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    new-instance v1, Lcom/shun/hack/Item;

    const v2, 0x108003d

    const-string v8, ".."

    const-string v9, "Parent folder"

    const/4 v10, 0x3

    invoke-direct {v1, v2, v8, v9, v10}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_105
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 417
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/shun/hack/MyAdapter;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/shun/hack/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b4

    .line 421
    :cond_126
    const/4 v1, 0x0

    .line 422
    array-length v8, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_12a
    if-ge v2, v8, :cond_1db

    aget-object v0, v3, v2

    .line 423
    const-string v9, "\\s+"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 424
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 425
    const/16 v10, 0x2d

    if-eq v9, v10, :cond_14d

    const/16 v10, 0x64

    if-eq v9, v10, :cond_14d

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_14d

    move v0, v1

    .line 422
    :goto_149
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_12a

    .line 428
    :cond_14d
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/4 v10, 0x0

    aget-object v10, v0, v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const/16 v10, 0x64

    if-eq v9, v10, :cond_174

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_19c

    .line 431
    :cond_174
    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v0, Lcom/shun/hack/Item;

    const v9, 0x1080049

    aget-object v10, v4, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_199
    add-int/lit8 v0, v1, 0x1

    goto :goto_149

    .line 434
    :cond_19c
    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    aget-object v0, v4, v1

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v9, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c8

    .line 444
    iget-object v9, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 446
    :cond_1c8
    new-instance v0, Lcom/shun/hack/Item;

    const v9, 0x1080040

    aget-object v10, v4, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_199

    .line 450
    :cond_1db
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 451
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 453
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/shun/hack/MyAdapter;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/shun/hack/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 456
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b4
.end method

.method public static round(F)F
    .registers 3

    .prologue
    .line 515
    const v0, 0x3c23d70a    # 0.01f

    div-float v0, p0, v0

    float-to-int v0, v0

    .line 516
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private selectAction(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    if-eqz v0, :cond_2a

    .line 783
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 785
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/shun/hack/MainFileManager;->setResult(ILandroid/content/Intent;)V

    .line 786
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 811
    :cond_29
    :goto_29
    return-void

    .line 790
    :cond_2a
    invoke-static {p1}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_29

    .line 792
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 793
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_75

    .line 796
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 797
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v0, "android.intent.extra.TITLE"

    const-string v2, "\u0427\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c?"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    :try_start_6f
    invoke-virtual {p0, v1}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_29

    .line 803
    :catch_73
    move-exception v0

    goto :goto_29

    .line 807
    :cond_75
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto :goto_29
.end method

.method private shun(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shun/hack/MainFileManager;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 619
    return-void
.end method

.method private xalertShell(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 269
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    const-string v1, "Alice shell"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 273
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 284
    const-string v2, "Run"

    new-instance v3, Lcom/shun/hack/MainFileManager$3;

    invoke-direct {v3, p0, v1}, Lcom/shun/hack/MainFileManager$3;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    const-string v1, "Clear"

    new-instance v2, Lcom/shun/hack/MainFileManager$4;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$4;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    return-void
.end method


# virtual methods
.method public alertEdit()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 136
    new-instance v0, Lcom/shun/hack/init/ShellExecuter;

    invoke-direct {v0}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const-string v1, "Alice editor"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 151
    const-string v2, "Save"

    new-instance v3, Lcom/shun/hack/MainFileManager$1;

    invoke-direct {v3, p0, v1}, Lcom/shun/hack/MainFileManager$1;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    return-void
.end method

.method public alertMan(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 165
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/shun/hack/init/ShellExecuter;

    invoke-direct {v0}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 168
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    const-string v2, "#16cedb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    .line 176
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    .line 182
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    .line 186
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    const-string v3, "bantuan"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const-string v2, "Settings"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->settings:Landroid/content/SharedPreferences;

    .line 191
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Open..."

    aput-object v2, v1, v6

    .line 193
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v7

    .line 194
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "Copy"

    aput-object v3, v1, v2

    .line 195
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "Delete!!"

    aput-object v3, v1, v2

    .line 196
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "Home"

    aput-object v3, v1, v2

    .line 197
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "Compress zip"

    aput-object v3, v1, v2

    .line 198
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "Exit"

    aput-object v3, v1, v2

    .line 199
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "Main inang"

    aput-object v3, v1, v2

    .line 200
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "Shell"

    aput-object v3, v1, v2

    .line 201
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "Edit"

    aput-object v3, v1, v2

    .line 202
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "Info file"

    aput-object v3, v1, v2

    .line 204
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    if-nez v1, :cond_e2

    .line 205
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 208
    :cond_e2
    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->getPressListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 211
    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->initMapExt()V

    .line 212
    new-instance v1, Lcom/shun/hack/AlphabeticComparator;

    invoke-direct {v1}, Lcom/shun/hack/AlphabeticComparator;-><init>()V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    .line 214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    const-string v2, "Alice shell"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 219
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    .line 220
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    const-string v4, "OKE"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    new-instance v2, Lcom/shun/hack/MainFileManager$2;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$2;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 461
    .line 464
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 469
    :cond_10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 472
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 475
    :goto_35
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_76

    .line 476
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_41

    goto :goto_35

    .line 489
    :catch_41
    move-exception v0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clone file ERROR! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 491
    const-string v0, "Coba tekan open dahulu trus coba lagi"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 492
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Pindah"

    aput-object v1, v0, v5

    .line 494
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Copy"

    aput-object v1, v0, v6

    .line 496
    :goto_75
    return-void

    .line 478
    :cond_76
    :try_start_76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 480
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 481
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 484
    const-string v0, "Clone file sukses"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 485
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 487
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9b} :catch_41

    goto :goto_75
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 265
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 266
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iput-object p0, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, p0}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 259
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    return-void
.end method
