.class public Lcom/shun/hack/Installer;
.super Landroid/os/AsyncTask;
.source "Installer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/Installer$CompressFiles;,
        Lcom/shun/hack/Installer$100000000;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String;


# instance fields
.field private DOC_FOLDER:Ljava/lang/String;

.field private contentLength:J

.field private context:Landroid/content/Context;

.field private currProgress:J

.field private dialog:Landroid/app/ProgressDialog;

.field private err:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private setRights:Z

.field private ui:Landroid/os/Handler;


# direct methods
.method static final constructor <clinit>()V
    .registers 7

    :try_start_0
    const-string v2, "com.shun.hack.Installer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shun/hack/Installer;->tag:Ljava/lang/String;

    return-void

    :catch_d
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 157
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    move-object v2, v0

    const-string v3, ""

    iput-object v3, v2, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .registers 11

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/os/AsyncTask;-><init>()V

    move-object v5, v0

    const-string v6, ""

    iput-object v6, v5, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    .line 162
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    .line 163
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/shun/hack/Installer;->h:Landroid/os/Handler;

    .line 164
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/shun/hack/Installer;->setRights:Z

    return-void
.end method

.method static synthetic access$L1000008(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000008(Lcom/shun/hack/Installer;Landroid/app/ProgressDialog;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 250
    move-object v0, p0

    move-object v5, v0

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 251
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x0

    if-ne v5, v6, :cond_12

    .line 252
    const-string v5, ""

    move-object v0, v5

    .line 255
    :goto_11
    return-object v0

    .line 254
    :cond_12
    move-object v5, v2

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 255
    move-object v5, v3

    move-object v0, v5

    goto :goto_11
.end method

.method public static zipPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    .prologue
    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v13, 0x800

    move v3, v13

    .line 191
    new-instance v13, Ljava/io/File;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 193
    const/4 v13, 0x0

    :try_start_15
    check-cast v13, Ljava/io/BufferedInputStream;

    move-object v5, v13

    .line 194
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v1

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v13

    .line 195
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v6

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v14, v15}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v13

    .line 197
    move-object v13, v4

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_5a

    .line 198
    move-object v13, v7

    move-object v14, v4

    move-object v15, v4

    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/shun/hack/Installer;->zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    .line 213
    :cond_53
    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 219
    const/4 v13, 0x1

    move v0, v13

    :goto_59
    return v0

    .line 201
    :cond_5a
    const/16 v13, 0x800

    new-array v13, v13, [B

    move-object v8, v13

    .line 202
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v13

    .line 203
    new-instance v13, Ljava/io/BufferedInputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v9

    const/16 v16, 0x800

    invoke-direct/range {v14 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v5, v13

    .line 204
    new-instance v13, Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-static {v15}, Lcom/shun/hack/Installer;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object v10, v13

    .line 205
    move-object v13, v10

    move-object v14, v4

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 206
    move-object v13, v7

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 209
    :goto_9a
    move-object v13, v5

    move-object v14, v8

    const/4 v15, 0x0

    const/16 v16, 0x800

    invoke-virtual/range {v13 .. v16}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v13

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v11, v14

    const/4 v14, -0x1

    if-eq v13, v14, :cond_53

    .line 210
    move-object v13, v7

    move-object v14, v8

    const/4 v15, 0x0

    move/from16 v16, v11

    invoke-virtual/range {v13 .. v16}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_b5} :catch_b6

    goto :goto_9a

    .line 213
    :catch_b6
    move-exception v13

    move-object v5, v13

    .line 216
    const-string v13, "ttt"

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 217
    const/4 v13, 0x0

    move v0, v13

    goto/16 :goto_59
.end method

.method private static zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/io/File;",
            "I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    const/16 v19, 0x800

    move/from16 v6, v19

    .line 223
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    move-object/from16 v7, v19

    .line 224
    const/16 v19, 0x0

    check-cast v19, Ljava/io/BufferedInputStream;

    move-object/from16 v8, v19

    .line 225
    move-object/from16 v19, v7

    move-object/from16 v9, v19

    const/16 v19, 0x0

    move/from16 v10, v19

    .line 243
    :goto_20
    move/from16 v19, v10

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_30

    return-void

    .line 225
    :cond_30
    move-object/from16 v19, v9

    move/from16 v20, v10

    aget-object v19, v19, v20

    move-object/from16 v11, v19

    .line 226
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_4c

    .line 227
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    move/from16 v21, v4

    invoke-static/range {v19 .. v21}, Lcom/shun/hack/Installer;->zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    .line 243
    :goto_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    .line 230
    :cond_4c
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v12, v19

    .line 231
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 232
    move-object/from16 v19, v13

    move/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 233
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v19

    .line 234
    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v15

    const/16 v22, 0x800

    invoke-direct/range {v20 .. v22}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v8, v19

    .line 235
    new-instance v19, Ljava/util/zip/ZipEntry;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v14

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v19

    .line 236
    move-object/from16 v19, v16

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 237
    move-object/from16 v19, v2

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 240
    :goto_a9
    move-object/from16 v19, v8

    move-object/from16 v20, v12

    const/16 v21, 0x0

    const/16 v22, 0x800

    invoke-virtual/range {v19 .. v22}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v19

    move/from16 v23, v19

    move/from16 v19, v23

    move/from16 v20, v23

    move/from16 v17, v20

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_cc

    .line 243
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_49

    .line 241
    :cond_cc
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    const/16 v21, 0x0

    move/from16 v22, v17

    invoke-virtual/range {v19 .. v22}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_a9
.end method


# virtual methods
.method public compressFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Lcom/shun/hack/Installer$CompressFiles;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/shun/hack/Installer$CompressFiles;-><init>(Lcom/shun/hack/Installer;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 260
    move-object v6, v4

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/shun/hack/Installer$CompressFiles;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v6

    return-void
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 26

    .prologue
    .line 288
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v5, v17

    .line 289
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v6, v17

    .line 290
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    .line 295
    new-instance v17, Ljava/io/File;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v6

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v17

    .line 296
    new-instance v17, Ljava/io/File;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v17

    .line 298
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_54

    .line 299
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v17

    .line 301
    :cond_54
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_62

    .line 302
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v17

    .line 354
    :cond_62
    move-object/from16 v17, v2

    :try_start_64
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/shun/hack/Unzip;->calcUnzipped(Ljava/io/InputStream;)J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 355
    move-wide/from16 v17, v9

    const-wide/16 v19, 0x400

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v11, v17

    .line 357
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/shun/hack/Installer;->ui:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/shun/hack/Installer$100000000;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v2

    move/from16 v21, v11

    invoke-direct/range {v19 .. v21}, Lcom/shun/hack/Installer$100000000;-><init>(Lcom/shun/hack/Installer;I)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v17

    .line 366
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/shun/hack/Installer;->setRights:Z

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/shun/hack/Unzip;->unzip(Ljava/io/InputStream;Ljava/io/File;Lcom/shun/hack/Installer;Z)Z

    move-result v17

    if-nez v17, :cond_e2

    .line 367
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/Boolean;

    move/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v17, v23

    move/from16 v18, v22

    move-object/from16 v19, v23

    move/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move/from16 v19, v22

    invoke-direct/range {v18 .. v19}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v2, v17

    .line 384
    :goto_e1
    return-object v2

    .line 371
    :cond_e2
    new-instance v17, Lcom/shun/hack/ServerUtils;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/shun/hack/ServerUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v12, v17

    .line 372
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "/lighttpd.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/shun/hack/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 373
    move-object/from16 v17, v13

    const-string v18, "server\\.document-root.*\\n"

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v22, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v22

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "server.document-root = \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/shun/hack/ServerUtils;->getDocFolder()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\"\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 374
    new-instance v17, Ljava/io/File;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Lcom/shun/hack/ServerUtils;->getDocFolderExtDefault()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_172} :catch_1ba

    move-result v17

    .line 376
    move-object/from16 v17, v14

    :try_start_175
    const-string v18, "utf-8"

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "/lighttpd.conf"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_199} :catch_1b6

    .line 379
    :goto_199
    const/16 v17, 0x1

    :try_start_19b
    new-instance v18, Ljava/lang/Boolean;

    move/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v17, v23

    move/from16 v18, v22

    move-object/from16 v19, v23

    move/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move/from16 v19, v22

    invoke-direct/range {v18 .. v19}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1b2} :catch_1ba

    move-object/from16 v2, v17

    goto/16 :goto_e1

    .line 376
    :catch_1b6
    move-exception v17

    move-object/from16 v15, v17

    goto :goto_199

    .line 379
    :catch_1ba
    move-exception v17

    move-object/from16 v9, v17

    .line 383
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V

    .line 384
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/Boolean;

    move/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v17, v23

    move/from16 v18, v22

    move-object/from16 v19, v23

    move/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move/from16 v19, v22

    invoke-direct/range {v18 .. v19}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v2, v17

    goto/16 :goto_e1
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getErr()Ljava/lang/String;
    .registers 4

    .prologue
    .line 180
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    const-string v5, "install calcel"

    invoke-virtual {v4, v5}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V

    .line 441
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/shun/hack/Installer;->cancel(Z)Z

    move-result v4

    .line 442
    move-object v4, v0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Boolean;

    move v8, v5

    move-object v9, v6

    move-object v5, v9

    move v6, v8

    move-object v7, v9

    move v8, v6

    move-object v9, v7

    move-object v6, v9

    move v7, v8

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/shun/hack/Installer;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_183

    .line 406
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Extrack complete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    move-object v3, v7

    .line 407
    new-instance v7, Lcom/shun/hack/ServerUtils;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/shun/hack/ServerUtils;-><init>(Landroid/content/Context;)V

    move-object v4, v7

    .line 409
    move-object v7, v3

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 410
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 411
    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/index.php"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8a

    .line 413
    :try_start_6a
    const-string v7, "<?php phpinfo(); ?>"

    const-string v8, "utf-8"

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/index.php"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_8a} :catch_179

    .line 417
    :cond_8a
    :goto_8a
    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/fileman.php"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_101

    .line 419
    :try_start_b1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "cp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/fileman.php "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_100} :catch_17d

    move-result-object v7

    .line 422
    :cond_101
    :goto_101
    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/download.php"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_178

    .line 424
    :try_start_128
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "cp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/download.php "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_177} :catch_180

    move-result-object v7

    .line 432
    :cond_178
    :goto_178
    return-void

    .line 413
    :catch_179
    move-exception v7

    move-object v5, v7

    goto/16 :goto_8a

    .line 419
    :catch_17d
    move-exception v7

    move-object v5, v7

    goto :goto_101

    .line 424
    :catch_180
    move-exception v7

    move-object v5, v7

    goto :goto_178

    .line 429
    :cond_183
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/shun/hack/Installer;->getErr()Ljava/lang/String;

    move-result-object v8

    const-string v9, "annimon"

    const-string v10, "pentagon"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    move-object v3, v7

    .line 430
    move-object v7, v3

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 431
    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 432
    move-object v7, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V

    goto :goto_178
.end method

.method public bridge onPostExecute(Ljava/lang/Object;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/shun/hack/Installer;->ui:Landroid/os/Handler;

    return-void
.end method

.method public bridge onProgressUpdate([Ljava/lang/Object;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/shun/hack/Installer;->currProgress:J

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/shun/hack/Installer;->currProgress:J

    .line 391
    move-object v3, v0

    iget-object v3, v3, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    iget-wide v4, v4, Lcom/shun/hack/Installer;->currProgress:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method public setErr(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    return-void
.end method

.method public setErr(ILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    return-void
.end method

.method public setErr(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    return-void
.end method

.method public update(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/shun/hack/Installer;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
