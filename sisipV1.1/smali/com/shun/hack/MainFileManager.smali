.class public Lcom/shun/hack/MainFileManager;
.super Landroid/app/Activity;
.source "MainFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/MainFileManager$100000000;,
        Lcom/shun/hack/MainFileManager$100000001;,
        Lcom/shun/hack/MainFileManager$100000002;,
        Lcom/shun/hack/MainFileManager$100000003;,
        Lcom/shun/hack/MainFileManager$100000004;,
        Lcom/shun/hack/MainFileManager$100000005;,
        Lcom/shun/hack/MainFileManager$100000008;,
        Lcom/shun/hack/MainFileManager$100000009;,
        Lcom/shun/hack/MainFileManager$100000011;
    }
.end annotation


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
.method static final constructor <clinit>()V
    .registers 3

    const-string v2, ""

    sput-object v2, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    .line 27
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const-string v3, ""

    iput-object v3, v2, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/app/Activity;-><init>()V

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    .line 29
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000022(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/shun/hack/MainFileManager;->xalertShell(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000025(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/shun/hack/MainFileManager;->alertShell(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000026(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000035(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->shun(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000038(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V
    .registers 11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000039(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$1000040(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$1000041(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->selectAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000042(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/shun/hack/MainFileManager;)Z
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/shun/hack/MainFileManager;->folder:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000005(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000008(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000009()Ljava/lang/String;
    .registers 3

    sget-object v2, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000010()Ljava/lang/String;
    .registers 3

    sget-object v2, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000012(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000013(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/Item;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/shun/hack/MainFileManager;Z)V
    .registers 8

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/shun/hack/MainFileManager;->folder:Z

    return-void
.end method

.method static synthetic access$S1000005(Lcom/shun/hack/MainFileManager;Landroid/widget/TextView;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000006(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000008(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/init/ShellExecuter;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    return-void
.end method

.method static synthetic access$S1000009(Ljava/lang/String;)V
    .registers 5

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000010(Ljava/lang/String;)V
    .registers 5

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000012(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000013(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    return-void
.end method

.method private alertAksi(ZLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 546
    move-object v6, v0

    move v7, v1

    iput-boolean v7, v6, Lcom/shun/hack/MainFileManager;->folder:Z

    .line 547
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 548
    move-object v6, v4

    const-string v7, "Pilih Aksi"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 549
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    new-instance v8, Lcom/shun/hack/MainFileManager$100000011;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/shun/hack/MainFileManager$100000011;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 688
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 689
    move-object v6, v4

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private alertShell(Landroid/content/Context;Ljava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 245
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, v18

    .line 246
    move-object/from16 v18, v6

    const-string v19, "Shun shell"

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 248
    new-instance v18, Landroid/widget/EditText;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, v18

    .line 249
    move-object/from16 v18, v7

    const-string v19, "#ff25FF2D"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setTextColor(I)V

    .line 251
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, v18

    .line 252
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v18

    .line 253
    new-instance v18, Landroid/widget/Button;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v10, v18

    .line 254
    new-instance v18, Landroid/widget/Button;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, v18

    .line 256
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1f4

    const/16 v21, 0x1f4

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v12, v18

    .line 257
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v13, v18

    .line 258
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, -0x2

    const/16 v21, 0x50

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v14, v18

    .line 259
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v15, v18

    .line 260
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v16, v18

    .line 262
    move-object/from16 v18, v7

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    move-object/from16 v18, v10

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v18, v11

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    move-object/from16 v18, v8

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    move-object/from16 v18, v9

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    move-object/from16 v18, v7

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    move-object/from16 v18, v10

    const-string v19, " Run"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    move-object/from16 v18, v11

    const-string v19, " Clear"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    move-object/from16 v18, v9

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 276
    move-object/from16 v18, v8

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 277
    move-object/from16 v18, v8

    move-object/from16 v19, v7

    move-object/from16 v20, v14

    invoke-virtual/range {v18 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 282
    move-object/from16 v18, v11

    new-instance v19, Lcom/shun/hack/MainFileManager$100000004;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v21}, Lcom/shun/hack/MainFileManager$100000004;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    move-object/from16 v18, v10

    new-instance v19, Lcom/shun/hack/MainFileManager$100000005;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v2

    move-object/from16 v22, v7

    invoke-direct/range {v20 .. v22}, Lcom/shun/hack/MainFileManager$100000005;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v18

    return-void
.end method

.method private calcBackPath()Ljava/lang/String;
    .registers 9

    .prologue
    .line 695
    move-object v0, p0

    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_11} :catch_14

    move-result-object v4

    move-object v0, v4

    .line 697
    :goto_13
    return-object v0

    .line 695
    :catch_14
    move-exception v4

    move-object v2, v4

    .line 697
    const-string v4, ""

    move-object v0, v4

    goto :goto_13
.end method

.method private calcSize(J)Ljava/lang/String;
    .registers 11

    .prologue
    .line 425
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, v1

    const/16 v6, 0x400

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_17

    .line 426
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, " b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 430
    :goto_16
    return-object v0

    .line 427
    :cond_17
    move-wide v4, v1

    const/high16 v6, 0x100000

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_34

    .line 428
    move-wide v4, v1

    long-to-float v4, v4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->round(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, " Kb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_16

    .line 430
    :cond_34
    move-wide v4, v1

    long-to-float v4, v4

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->round(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, " Mb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_16
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 737
    move-object v0, p0

    move-object v3, v0

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 738
    move-object v3, v0

    move-object v4, v0

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 740
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_1b
.end method

.method private getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 7

    .prologue
    .line 517
    move-object v0, p0

    new-instance v2, Lcom/shun/hack/MainFileManager$100000009;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/shun/hack/MainFileManager$100000009;-><init>(Lcom/shun/hack/MainFileManager;)V

    move-object v0, v2

    return-object v0
.end method

.method private getPressListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 7

    .prologue
    .line 479
    move-object v0, p0

    new-instance v2, Lcom/shun/hack/MainFileManager$100000008;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/shun/hack/MainFileManager$100000008;-><init>(Lcom/shun/hack/MainFileManager;)V

    move-object v0, v2

    return-object v0
.end method

.method private initMapExt()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".php"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".html"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 445
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".txt"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 446
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".cfg"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 447
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".conf"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 448
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".config"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 449
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".ini"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 450
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".sh"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 451
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".css"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".mp3"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 453
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".amr"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".wav"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 455
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".mid"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 456
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".midi"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 457
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".ogg"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 458
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".mp4"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 459
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".3gp"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 460
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".apk"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 461
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".sql"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".doc"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 463
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".docx"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 464
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".ico"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 465
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".jpg"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 466
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".bmp"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 467
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".gif"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 468
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".png"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 469
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".pdf"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 470
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".ppt"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 471
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".zip"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 472
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".rar"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 473
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".tar"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 474
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".7z"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 475
    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v3, ".jar"

    const v4, 0x1080040

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method private pwd(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private readFolder(Ljava/lang/String;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 316
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const-string v20, "MainFileManager"

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "read : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :try_start_24
    new-instance v20, Ljava/lang/ProcessBuilder;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    const-string v24, "ls"

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    const-string v24, "-l"

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x2

    const-string v24, "-a"

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x3

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v20

    move-object/from16 v8, v20

    .line 322
    move-object/from16 v20, v8

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v5, v20

    .line 323
    move-object/from16 v20, v8

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 324
    new-instance v20, Ljava/lang/ProcessBuilder;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    const-string v24, "ls"

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    const-string v24, "-a"

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x2

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 325
    move-object/from16 v20, v7

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_148

    .line 327
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 328
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_147} :catch_1fb

    .line 379
    :goto_147
    return-void

    .line 335
    :cond_148
    move-object/from16 v20, v2

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    .line 336
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v20

    .line 337
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v20

    .line 338
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v20

    .line 339
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1b2

    .line 340
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/shun/hack/Item;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const v23, 0x108003d

    const-string v24, ".."

    const-string v25, "Parent folder"

    const/16 v26, 0x3

    invoke-direct/range {v22 .. v26}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 342
    :cond_1b2
    move-object/from16 v20, v6

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_224

    .line 343
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/shun/hack/MyAdapter;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/shun/hack/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    goto/16 :goto_147

    .line 329
    :catch_1fb
    move-exception v20

    move-object/from16 v8, v20

    .line 332
    const-string v20, "MainFileManager"

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "read ls"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    goto/16 :goto_147

    .line 347
    :cond_224
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 348
    move-object/from16 v20, v5

    move-object/from16 v12, v20

    const/16 v20, 0x0

    move/from16 v13, v20

    .line 371
    :goto_230
    move/from16 v20, v13

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2c8

    .line 373
    move-object/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    move-object/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    const/16 v22, 0x0

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v20

    .line 376
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    const/16 v22, 0x0

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v20

    .line 378
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/shun/hack/MyAdapter;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/shun/hack/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_147

    .line 348
    :cond_2c8
    move-object/from16 v20, v12

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v14, v20

    .line 349
    move-object/from16 v20, v14

    const-string v21, "\\s+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 350
    move-object/from16 v20, v15

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v16, v20

    .line 351
    move/from16 v20, v16

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_30a

    move/from16 v20, v16

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_30a

    move/from16 v20, v16

    const/16 v21, 0x6c

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_30a

    .line 371
    :goto_306
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_230

    .line 354
    :cond_30a
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "     "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 355
    move-object/from16 v20, v10

    move-object/from16 v21, v15

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "     "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 356
    move/from16 v20, v16

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_34a

    move/from16 v20, v16

    const/16 v21, 0x6c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_38c

    .line 357
    :cond_34a
    move-object/from16 v20, v10

    move-object/from16 v21, v15

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "     "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v15

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 358
    move-object/from16 v20, v8

    new-instance v21, Lcom/shun/hack/Item;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const v23, 0x1080049

    move-object/from16 v24, v6

    move/from16 v25, v11

    aget-object v24, v24, v25

    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-direct/range {v22 .. v26}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 371
    :goto_388
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_306

    .line 360
    :cond_38c
    move-object/from16 v20, v10

    move-object/from16 v21, v15

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "     "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v15

    const/16 v22, 0x5

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 361
    move-object/from16 v20, v10

    const-string v21, "         "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v22, v15

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Lcom/shun/hack/MainFileManager;->calcSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 364
    move-object/from16 v20, v6

    move/from16 v21, v11

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    .line 365
    const v20, 0x1080040

    move/from16 v18, v20

    .line 366
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3fd

    .line 367
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v18, v20

    .line 369
    :cond_3fd
    move-object/from16 v20, v9

    new-instance v21, Lcom/shun/hack/Item;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const v23, 0x1080040

    move-object/from16 v24, v6

    move/from16 v25, v11

    aget-object v24, v24, v25

    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-direct/range {v22 .. v26}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    goto/16 :goto_388
.end method

.method public static round(F)F
    .registers 7

    .prologue
    .line 438
    move v0, p0

    move v4, v0

    const v5, 0x3c23d70a    # 0.01f

    div-float/2addr v4, v5

    float-to-int v4, v4

    move v2, v4

    .line 439
    move v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private selectAction(Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-boolean v9, v9, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    if-eqz v9, :cond_38

    .line 706
    move-object v9, v0

    invoke-virtual {v9}, Lcom/shun/hack/MainFileManager;->getIntent()Landroid/content/Intent;

    move-result-object v9

    move-object v3, v9

    .line 707
    move-object v9, v3

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    .line 708
    move-object v9, v0

    const/4 v10, -0x1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/shun/hack/MainFileManager;->setResult(ILandroid/content/Intent;)V

    .line 709
    move-object v9, v0

    invoke-virtual {v9}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 730
    :goto_37
    return-void

    .line 712
    :cond_38
    move-object v9, v1

    invoke-static {v9}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 714
    move-object v9, v4

    if-eqz v9, :cond_9c

    .line 715
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    move-object v5, v9

    .line 716
    move-object v9, v5

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 717
    move-object v9, v3

    if-eqz v9, :cond_a0

    .line 719
    new-instance v9, Landroid/content/Intent;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v6, v9

    .line 720
    move-object v9, v6

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 721
    move-object v9, v6

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 722
    move-object v9, v6

    const-string v10, "data"

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 723
    move-object v9, v6

    const-string v10, "android.intent.extra.TITLE"

    const-string v11, "\u0427\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c?"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 725
    move-object v9, v0

    move-object v10, v6

    :try_start_99
    invoke-virtual {v9, v10}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_9c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 730
    :cond_9c
    :goto_9c
    goto :goto_37

    .line 725
    :catch_9d
    move-exception v9

    move-object v7, v9

    goto :goto_9c

    .line 730
    :cond_a0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto :goto_9c
.end method

.method private shun(Landroid/content/Context;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    :try_start_9
    const-string v9, "com.shun.hack.MainFileManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_e} :catch_16

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_16
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private xalertShell(Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 194
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v8

    .line 195
    move-object v8, v4

    const-string v9, "Shun shell"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 197
    new-instance v8, Landroid/widget/EditText;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 198
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v8

    .line 202
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    move-object v8, v5

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    move-object v8, v5

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 206
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 208
    move-object v8, v4

    const-string v9, "Run"

    new-instance v10, Lcom/shun/hack/MainFileManager$100000002;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Lcom/shun/hack/MainFileManager$100000002;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 232
    move-object v8, v4

    const-string v9, "Clear"

    new-instance v10, Lcom/shun/hack/MainFileManager$100000003;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/shun/hack/MainFileManager$100000003;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 238
    move-object v8, v4

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    return-void
.end method


# virtual methods
.method public alertEdit()V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v6, v0

    new-instance v7, Lcom/shun/hack/init/ShellExecuter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v7, v6, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 61
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 62
    move-object v6, v2

    const-string v7, "Alice editor"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 64
    new-instance v6, Landroid/widget/EditText;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 65
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v6

    .line 69
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    move-object v6, v3

    const/16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 71
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "cat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    move-object v6, v3

    const-string v7, "#ff25FF2D"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 73
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 75
    move-object v6, v2

    const-string v7, "Save"

    new-instance v8, Lcom/shun/hack/MainFileManager$100000000;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/shun/hack/MainFileManager$100000000;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 85
    move-object v6, v2

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    return-void
.end method

.method public alertMan(Landroid/content/Context;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 90
    move-object v11, v0

    new-instance v12, Lcom/shun/hack/init/ShellExecuter;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 92
    new-instance v11, Landroid/widget/LinearLayout;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v11

    .line 94
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v11

    .line 95
    move-object v11, v3

    const-string v12, "#16cedb"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    move-object v11, v3

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    move-object v11, v0

    new-instance v12, Landroid/widget/TextView;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    .line 100
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v11

    .line 101
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/16 v12, 0xc

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    move-object v11, v0

    new-instance v12, Landroid/widget/ListView;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    .line 106
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v11

    .line 107
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    move-object v11, v0

    new-instance v12, Landroid/widget/EditText;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    .line 110
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v11

    .line 111
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    const-string v12, "bantuan"

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 112
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const-string v13, "Settings"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->settings:Landroid/content/SharedPreferences;

    .line 115
    move-object v11, v0

    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    .line 116
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Open..."

    aput-object v13, v11, v12

    .line 117
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "Pindah"

    aput-object v13, v11, v12

    .line 118
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x2

    const-string v13, "Copy"

    aput-object v13, v11, v12

    .line 119
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x3

    const-string v13, "Delete!!"

    aput-object v13, v11, v12

    .line 120
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x4

    const-string v13, "Home"

    aput-object v13, v11, v12

    .line 121
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x5

    const-string v13, "Compress zip"

    aput-object v13, v11, v12

    .line 122
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x6

    const-string v13, "Exit"

    aput-object v13, v11, v12

    .line 123
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x7

    const-string v13, "Main inang"

    aput-object v13, v11, v12

    .line 124
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0x8

    const-string v13, "Shell"

    aput-object v13, v11, v12

    .line 125
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0x9

    const-string v13, "Edit"

    aput-object v13, v11, v12

    .line 126
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0xa

    const-string v13, "Info file"

    aput-object v13, v11, v12

    .line 128
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    if-nez v11, :cond_13a

    .line 129
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 132
    :cond_13a
    move-object v11, v0

    move-object v12, v0

    invoke-direct {v12}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    .line 133
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object v12, v0

    invoke-direct {v12}, Lcom/shun/hack/MainFileManager;->getPressListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object v12, v0

    invoke-direct {v12}, Lcom/shun/hack/MainFileManager;->getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 135
    move-object v11, v0

    invoke-direct {v11}, Lcom/shun/hack/MainFileManager;->initMapExt()V

    .line 136
    move-object v11, v0

    new-instance v12, Lcom/shun/hack/AlphabeticComparator;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lcom/shun/hack/AlphabeticComparator;-><init>()V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    .line 138
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v11

    .line 139
    move-object v11, v8

    const-string v12, "Alice shell"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 141
    move-object v11, v8

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 143
    move-object v11, v0

    new-instance v12, Landroid/widget/Button;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    .line 144
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v11

    .line 145
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    const-string v12, "OKE"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    new-instance v12, Lcom/shun/hack/MainFileManager$100000001;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/shun/hack/MainFileManager$100000001;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    move-object v11, v8

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v11

    .line 170
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v11, 0x0

    :try_start_9
    check-cast v11, Ljava/io/InputStream;

    move-object v5, v11

    .line 385
    const/4 v11, 0x0

    check-cast v11, Ljava/io/OutputStream;

    move-object v6, v11

    .line 387
    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v3

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 388
    move-object v11, v7

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_29

    .line 389
    move-object v11, v7

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v11

    .line 392
    :cond_29
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v11

    .line 393
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v11

    .line 395
    const/16 v11, 0x400

    new-array v11, v11, [B

    move-object v8, v11

    .line 398
    :goto_79
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move/from16 v16, v11

    move/from16 v11, v16

    move/from16 v12, v16

    move v9, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_bd

    .line 401
    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 402
    const/4 v11, 0x0

    check-cast v11, Ljava/io/InputStream;

    move-object v5, v11

    .line 403
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 404
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 405
    const/4 v11, 0x0

    check-cast v11, Ljava/io/OutputStream;

    move-object v6, v11

    .line 407
    move-object v11, v0

    const-string v12, "Clone file sukses"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 408
    const-string v11, ""

    sput-object v11, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 409
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "Pindah"

    aput-object v13, v11, v12

    .line 410
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x2

    const-string v13, "Copy"

    aput-object v13, v11, v12

    .line 417
    :goto_bc
    return-void

    .line 399
    :cond_bd
    move-object v11, v6

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c4} :catch_c5

    goto :goto_79

    .line 410
    :catch_c5
    move-exception v11

    move-object v5, v11

    .line 413
    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Clone file ERROR! : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 414
    move-object v11, v0

    const-string v12, "Coba tekan open dahulu trus coba lagi"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 415
    const-string v11, ""

    sput-object v11, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 416
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "Pindah"

    aput-object v13, v11, v12

    .line 417
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x2

    const-string v13, "Copy"

    aput-object v13, v11, v12

    goto :goto_bc
.end method

.method public onBackPressed()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 189
    move-object v2, v0

    invoke-virtual {v2}, Lcom/shun/hack/MainFileManager;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.aide.ui"

    invoke-static {v3, v4}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    move-object v3, v0

    move-object v4, v0

    iput-object v4, v3, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 56
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    return-void
.end method

.method public onRestart()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onResume()V

    return-void
.end method
