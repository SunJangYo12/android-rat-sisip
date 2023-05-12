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
        Lcom/shun/hack/MainFileManager$GrepTask;,
        Lcom/shun/hack/MainFileManager$100000005;,
        Lcom/shun/hack/MainFileManager$100000006;,
        Lcom/shun/hack/MainFileManager$100000007;,
        Lcom/shun/hack/MainFileManager$100000008;,
        Lcom/shun/hack/MainFileManager$100000011;,
        Lcom/shun/hack/MainFileManager$100000012;,
        Lcom/shun/hack/MainFileManager$100000014;
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

.field private greptxt:Landroid/widget/TextView;

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
    .line 30
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
    .line 31
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

    .line 32
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000029(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V
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

.method static synthetic access$1000030(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000039(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->shun(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000042(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V
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

.method static synthetic access$1000043(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$1000044(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
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

.method static synthetic access$1000045(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/shun/hack/MainFileManager;->selectAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000046(Ljava/lang/String;)Ljava/lang/String;
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

.method static synthetic access$L1000006(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000010()Ljava/lang/String;
    .registers 3

    sget-object v2, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000011()Ljava/lang/String;
    .registers 3

    sget-object v2, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000013(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000014(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
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

.method static synthetic access$S1000006(Lcom/shun/hack/MainFileManager;Landroid/widget/TextView;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/init/ShellExecuter;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    return-void
.end method

.method static synthetic access$S1000010(Ljava/lang/String;)V
    .registers 5

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000011(Ljava/lang/String;)V
    .registers 5

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000013(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000014(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
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
    .line 662
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 663
    move-object v6, v0

    move v7, v1

    iput-boolean v7, v6, Lcom/shun/hack/MainFileManager;->folder:Z

    .line 664
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 665
    move-object v6, v4

    const-string v7, "Pilih Aksi"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 666
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    new-instance v8, Lcom/shun/hack/MainFileManager$100000014;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/shun/hack/MainFileManager$100000014;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 813
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 814
    move-object v6, v4

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private alertShell(Landroid/content/Context;Ljava/lang/String;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 345
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, v19

    .line 346
    move-object/from16 v19, v6

    const-string v20, "Alice shell"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 348
    new-instance v19, Landroid/widget/EditText;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, v19

    .line 349
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, v19

    .line 350
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v19

    .line 351
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v10, v19

    .line 352
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, v19

    .line 354
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v12, v19

    .line 355
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v13, v19

    .line 356
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v14, v19

    .line 357
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v15, v19

    .line 358
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v16, v19

    .line 360
    move-object/from16 v19, v7

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    move-object/from16 v19, v10

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    move-object/from16 v19, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    move-object/from16 v19, v9

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    move-object/from16 v19, v7

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    move-object/from16 v19, v10

    const-string v20, " Run"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    move-object/from16 v19, v11

    const-string v20, " Clear"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    invoke-virtual/range {v19 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    move-object/from16 v19, v9

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 374
    move-object/from16 v19, v8

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    move-object/from16 v19, v8

    move-object/from16 v20, v7

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 380
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "/log_sisip_shell.txt"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/shun/hack/log/L;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v19

    .line 382
    move-object/from16 v19, v6

    move-object/from16 v20, v17

    new-instance v21, Lcom/shun/hack/MainFileManager$100000006;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    invoke-direct/range {v22 .. v24}, Lcom/shun/hack/MainFileManager$100000006;-><init>(Lcom/shun/hack/MainFileManager;[Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 390
    move-object/from16 v19, v11

    new-instance v20, Lcom/shun/hack/MainFileManager$100000007;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v22}, Lcom/shun/hack/MainFileManager$100000007;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    move-object/from16 v19, v10

    new-instance v20, Lcom/shun/hack/MainFileManager$100000008;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/shun/hack/MainFileManager$100000008;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    return-void
.end method

.method public static alertWelcome(Landroid/content/Context;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 66
    move-object v4, v2

    const-string v5, "Patch information"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 67
    move-object v4, v2

    const-string v5, "code created by sunjangyo12@gmail.com for access this feature open the smali/androidmanifest.xml editing > tab settings > and alice manager opened"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 69
    move-object v4, v2

    const-string v5, "Close"

    new-instance v6, Lcom/shun/hack/MainFileManager$100000000;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/shun/hack/MainFileManager$100000000;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 75
    move-object v4, v2

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-void
.end method

.method private calcBackPath()Ljava/lang/String;
    .registers 9

    .prologue
    .line 820
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

    .line 822
    :goto_13
    return-object v0

    .line 820
    :catch_14
    move-exception v4

    move-object v2, v4

    .line 822
    const-string v4, ""

    move-object v0, v4

    goto :goto_13
.end method

.method private calcSize(J)Ljava/lang/String;
    .registers 11

    .prologue
    .line 541
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, v1

    const/16 v6, 0x400

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_17

    .line 542
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, " b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 546
    :goto_16
    return-object v0

    .line 543
    :cond_17
    move-wide v4, v1

    const/high16 v6, 0x100000

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_34

    .line 544
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

    .line 546
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
    .line 864
    move-object v0, p0

    move-object v3, v0

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 865
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

    .line 867
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
    .line 634
    move-object v0, p0

    new-instance v2, Lcom/shun/hack/MainFileManager$100000012;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/shun/hack/MainFileManager$100000012;-><init>(Lcom/shun/hack/MainFileManager;)V

    move-object v0, v2

    return-object v0
.end method

.method private getPressListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 7

    .prologue
    .line 595
    move-object v0, p0

    new-instance v2, Lcom/shun/hack/MainFileManager$100000011;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/shun/hack/MainFileManager$100000011;-><init>(Lcom/shun/hack/MainFileManager;)V

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
    .line 559
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

    .line 560
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

    .line 561
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

    .line 562
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

    .line 563
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

    .line 564
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

    .line 565
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

    .line 566
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

    .line 567
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

    .line 568
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

    .line 569
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

    .line 570
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

    .line 571
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

    .line 572
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

    .line 573
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

    .line 574
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

    .line 575
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

    .line 576
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

    .line 577
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

    .line 578
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

    .line 579
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

    .line 580
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

    .line 581
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

    .line 582
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

    .line 583
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

    .line 584
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

    .line 585
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

    .line 586
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

    .line 587
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

    .line 588
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

    .line 589
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

    .line 590
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

    .line 591
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
    .line 826
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
    .line 427
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    :try_start_4
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

    .line 432
    move-object/from16 v20, v8

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v5, v20

    .line 433
    move-object/from16 v20, v8

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 434
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

    .line 435
    move-object/from16 v20, v7

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_128

    .line 437
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 438
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_127} :catch_1db

    .line 495
    :goto_127
    return-void

    .line 444
    :cond_128
    move-object/from16 v20, v2

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    .line 445
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v20

    .line 446
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v20

    .line 447
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v20

    .line 448
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_192

    .line 449
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

    .line 451
    :cond_192
    move-object/from16 v20, v6

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e0

    .line 452
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

    .line 453
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    goto/16 :goto_127

    .line 439
    :catch_1db
    move-exception v20

    move-object/from16 v8, v20

    .line 442
    goto/16 :goto_127

    .line 456
    :cond_1e0
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 457
    move-object/from16 v20, v5

    move-object/from16 v12, v20

    const/16 v20, 0x0

    move/from16 v13, v20

    .line 487
    :goto_1ec
    move/from16 v20, v13

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_284

    .line 489
    move-object/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    move-object/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
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

    .line 492
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

    .line 494
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

    .line 495
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_127

    .line 457
    :cond_284
    move-object/from16 v20, v12

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v14, v20

    .line 459
    move-object/from16 v20, v14

    const-string v21, "\\s+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 460
    move-object/from16 v20, v15

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v16, v20

    .line 462
    move/from16 v20, v16

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c6

    move/from16 v20, v16

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c6

    move/from16 v20, v16

    const/16 v21, 0x6c

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c6

    .line 487
    :goto_2c2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1ec

    .line 465
    :cond_2c6
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

    .line 466
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

    .line 467
    move/from16 v20, v16

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_306

    move/from16 v20, v16

    const/16 v21, 0x6c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_364

    .line 468
    :cond_306
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

    .line 469
    move-object/from16 v20, v6

    move/from16 v21, v11

    aget-object v20, v20, v21

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_33e

    move-object/from16 v20, v6

    move/from16 v21, v11

    aget-object v20, v20, v21

    const-string v21, ".."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_341

    .line 487
    :cond_33e
    :goto_33e
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c2

    .line 473
    :cond_341
    move-object/from16 v20, v8

    new-instance v21, Lcom/shun/hack/Item;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const v23, 0x108003d

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

    goto :goto_33e

    .line 477
    :cond_364
    move-object/from16 v20, v10

    const-string v21, "     "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v15

    const/16 v22, 0x5

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 478
    move-object/from16 v20, v10

    const-string v21, "     "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v22, v15

    const/16 v23, 0x4

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Lcom/shun/hack/MainFileManager;->calcSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 480
    move-object/from16 v20, v6

    move/from16 v21, v11

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    .line 481
    const v20, 0x1080040

    move/from16 v18, v20

    .line 482
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3cb

    .line 483
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

    .line 485
    :cond_3cb
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

    goto/16 :goto_33e
.end method

.method public static round(F)F
    .registers 7

    .prologue
    .line 554
    move v0, p0

    move v4, v0

    const v5, 0x3c23d70a    # 0.01f

    div-float/2addr v4, v5

    float-to-int v4, v4

    move v2, v4

    .line 555
    move v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private selectAction(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 830
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-boolean v8, v8, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    if-eqz v8, :cond_38

    .line 831
    move-object v8, v0

    invoke-virtual {v8}, Lcom/shun/hack/MainFileManager;->getIntent()Landroid/content/Intent;

    move-result-object v8

    move-object v3, v8

    .line 832
    move-object v8, v3

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    .line 833
    move-object v8, v0

    const/4 v9, -0x1

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/shun/hack/MainFileManager;->setResult(ILandroid/content/Intent;)V

    .line 834
    move-object v8, v0

    invoke-virtual {v8}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 857
    :goto_37
    return-void

    .line 837
    :cond_38
    move-object v8, v1

    invoke-static {v8}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 839
    move-object v8, v4

    if-eqz v8, :cond_9c

    .line 840
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    move-object v5, v8

    .line 841
    move-object v8, v5

    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 842
    move-object v8, v3

    if-eqz v8, :cond_c2

    .line 846
    :try_start_55
    new-instance v8, Landroid/content/Intent;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object v6, v8

    .line 847
    move-object v8, v6

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 848
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 849
    move-object v8, v6

    const-string v9, "data"

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 850
    move-object v8, v6

    const-string v9, "android.intent.extra.TITLE"

    const-string v10, "\u0427\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c?"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 851
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_9c} :catch_9d

    .line 857
    :cond_9c
    :goto_9c
    goto :goto_37

    .line 851
    :catch_9d
    move-exception v8

    move-object v6, v8

    .line 853
    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_9c

    .line 857
    :cond_c2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/shun/hack/MainFileManager;->alertEdit()V

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
    .line 658
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


# virtual methods
.method public alertEdit()V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v6, v0

    new-instance v7, Lcom/shun/hack/init/ShellExecuter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v7, v6, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 80
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 81
    move-object v6, v2

    const-string v7, "Alice editor"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 83
    new-instance v6, Landroid/widget/EditText;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 84
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v6

    .line 88
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
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

    .line 91
    move-object v6, v3

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 92
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 94
    move-object v6, v2

    const-string v7, "Save"

    new-instance v8, Lcom/shun/hack/MainFileManager$100000001;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/shun/hack/MainFileManager$100000001;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 104
    move-object v6, v2

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    return-void
.end method

.method public alertGrepString(Landroid/content/Context;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 111
    new-instance v9, Landroid/widget/LinearLayout;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v9

    .line 113
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v9

    .line 114
    move-object v9, v3

    const/high16 v10, -0x1000000

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 115
    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    move-object v9, v0

    new-instance v10, Landroid/widget/EditText;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    .line 119
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v9

    .line 120
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    const-string v10, "string here ..."

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    const/16 v10, -0x100

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 122
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    const/16 v10, 0x8

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "pwd: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v9, Landroid/widget/ScrollView;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object v6, v9

    .line 132
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 133
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v7, v9

    .line 136
    move-object v9, v7

    const-string v10, "grep -R <string>"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 138
    move-object v9, v7

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 139
    move-object v9, v7

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    .line 142
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    new-instance v10, Lcom/shun/hack/MainFileManager$100000002;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Lcom/shun/hack/MainFileManager$100000002;-><init>(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 159
    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/MainFileManager;->greptxt:Landroid/widget/TextView;

    new-instance v10, Lcom/shun/hack/MainFileManager$100000003;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/shun/hack/MainFileManager$100000003;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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
    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 234
    move-object v11, v0

    new-instance v12, Lcom/shun/hack/init/ShellExecuter;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 236
    new-instance v11, Landroid/widget/LinearLayout;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v11

    .line 238
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v11

    .line 240
    move-object v11, v3

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    move-object v11, v0

    new-instance v12, Landroid/widget/EditText;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    .line 244
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v11

    .line 245
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    const-string v12, "help"

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 246
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    move-object v11, v0

    new-instance v12, Landroid/widget/Button;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    .line 249
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v11

    .line 250
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    const-string v12, "run"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 251
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    move-object v11, v0

    new-instance v12, Landroid/widget/TextView;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    .line 254
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v11

    .line 255
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/16 v12, 0xc

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    move-object v11, v0

    new-instance v12, Landroid/widget/ListView;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    .line 261
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v11

    .line 262
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const-string v13, "Settings"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->settings:Landroid/content/SharedPreferences;

    .line 265
    move-object v11, v0

    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    .line 266
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Open..."

    aput-object v13, v11, v12

    .line 267
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "Pindah"

    aput-object v13, v11, v12

    .line 268
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x2

    const-string v13, "Copy"

    aput-object v13, v11, v12

    .line 269
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x3

    const-string v13, "Delete!!"

    aput-object v13, v11, v12

    .line 270
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x4

    const-string v13, "Home"

    aput-object v13, v11, v12

    .line 271
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x5

    const-string v13, "Compress zip"

    aput-object v13, v11, v12

    .line 272
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x6

    const-string v13, "Exit"

    aput-object v13, v11, v12

    .line 273
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x7

    const-string v13, "Main inang"

    aput-object v13, v11, v12

    .line 274
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0x8

    const-string v13, "Shell"

    aput-object v13, v11, v12

    .line 275
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0x9

    const-string v13, "Edit"

    aput-object v13, v11, v12

    .line 276
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0xa

    const-string v13, "Info file"

    aput-object v13, v11, v12

    .line 277
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0xb

    const-string v13, "Note app"

    aput-object v13, v11, v12

    .line 278
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v12, 0xc

    const-string v13, "Grep string"

    aput-object v13, v11, v12

    .line 280
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    if-nez v11, :cond_16b

    .line 281
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 283
    :cond_16b
    move-object v11, v0

    move-object v12, v0

    invoke-direct {v12}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    .line 284
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object v12, v0

    invoke-direct {v12}, Lcom/shun/hack/MainFileManager;->getPressListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    move-object v12, v0

    invoke-direct {v12}, Lcom/shun/hack/MainFileManager;->getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 286
    move-object v11, v0

    invoke-direct {v11}, Lcom/shun/hack/MainFileManager;->initMapExt()V

    .line 287
    move-object v11, v0

    new-instance v12, Lcom/shun/hack/AlphabeticComparator;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lcom/shun/hack/AlphabeticComparator;-><init>()V

    iput-object v12, v11, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    .line 289
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    iget-object v13, v13, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v11

    .line 290
    move-object v11, v9

    const-string v12, "Alice Manager"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 292
    move-object v11, v9

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 296
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->btn:Landroid/widget/Button;

    new-instance v12, Lcom/shun/hack/MainFileManager$100000005;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/shun/hack/MainFileManager$100000005;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    move-object v11, v9

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v11

    .line 318
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
    .line 500
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v11, 0x0

    :try_start_9
    check-cast v11, Ljava/io/InputStream;

    move-object v5, v11

    .line 501
    const/4 v11, 0x0

    check-cast v11, Ljava/io/OutputStream;

    move-object v6, v11

    .line 503
    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v3

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 504
    move-object v11, v7

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_29

    .line 505
    move-object v11, v7

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v11

    .line 508
    :cond_29
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v11

    .line 509
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

    .line 511
    const/16 v11, 0x400

    new-array v11, v11, [B

    move-object v8, v11

    .line 514
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

    .line 517
    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 518
    const/4 v11, 0x0

    check-cast v11, Ljava/io/InputStream;

    move-object v5, v11

    .line 519
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 520
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 521
    const/4 v11, 0x0

    check-cast v11, Ljava/io/OutputStream;

    move-object v6, v11

    .line 523
    move-object v11, v0

    const-string v12, "Clone file sukses"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 524
    const-string v11, ""

    sput-object v11, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 525
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "Pindah"

    aput-object v13, v11, v12

    .line 526
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x2

    const-string v13, "Copy"

    aput-object v13, v11, v12

    .line 533
    :goto_bc
    return-void

    .line 515
    :cond_bd
    move-object v11, v6

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c4} :catch_c5

    goto :goto_79

    .line 526
    :catch_c5
    move-exception v11

    move-object v5, v11

    .line 529
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

    .line 530
    move-object v11, v0

    const-string v12, "Coba tekan open dahulu trus coba lagi"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 531
    const-string v11, ""

    sput-object v11, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 532
    move-object v11, v0

    iget-object v11, v11, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "Pindah"

    aput-object v13, v11, v12

    .line 533
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
    .line 336
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 337
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

    .line 59
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    move-object v3, v0

    move-object v4, v0

    iput-object v4, v3, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 61
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
    .line 329
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
    .line 323
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onResume()V

    return-void
.end method
