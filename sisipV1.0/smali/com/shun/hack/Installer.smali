.class public Lcom/shun/hack/Installer;
.super Landroid/os/AsyncTask;
.source "Installer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/Installer$CompressFiles;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 143
    const-class v0, Lcom/shun/hack/Installer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shun/hack/Installer;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .registers 5

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/shun/hack/Installer;->h:Landroid/os/Handler;

    .line 164
    iput-boolean p3, p0, Lcom/shun/hack/Installer;->setRights:Z

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/shun/hack/Installer;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    array-length v1, v0

    if-nez v1, :cond_c

    .line 252
    const-string v0, ""

    .line 255
    :goto_b
    return-object v0

    .line 254
    :cond_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_b
.end method

.method public static zipPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 191
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/shun/hack/Installer;->zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    .line 213
    :cond_26
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 219
    const/4 v0, 0x1

    :goto_2a
    return v0

    .line 201
    :cond_2b
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 202
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x800

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 204
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-static {p0}, Lcom/shun/hack/Installer;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 206
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 209
    :goto_4e
    const/4 v1, 0x0

    const/16 v4, 0x800

    invoke-virtual {v5, v2, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_26

    .line 210
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5c} :catch_5d

    goto :goto_4e

    .line 215
    :catch_5d
    move-exception v1

    .line 216
    const-string v2, "ttt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private static zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x800

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 225
    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_4b

    aget-object v4, v2, v0

    .line 226
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 227
    invoke-static {p0, v4, p2}, Lcom/shun/hack/Installer;->zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    .line 225
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 230
    :cond_19
    new-array v5, v9, [B

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {v6, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 233
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 235
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 237
    invoke-virtual {p0, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 240
    :goto_3c
    invoke-virtual {v6, v5, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_47

    .line 241
    invoke-virtual {p0, v5, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3c

    .line 243
    :cond_47
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_16

    .line 246
    :cond_4b
    return-void
.end method


# virtual methods
.method public compressFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 259
    new-instance v0, Lcom/shun/hack/Installer$CompressFiles;

    invoke-direct {v0, p0, p1, p2}, Lcom/shun/hack/Installer$CompressFiles;-><init>(Lcom/shun/hack/Installer;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/shun/hack/Installer$CompressFiles;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    return-void
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 288
    aget-object v0, p1, v8

    .line 289
    aget-object v1, p1, v1

    .line 290
    const/4 v2, 0x2

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    .line 295
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_20

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 301
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 354
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/shun/hack/Unzip;->calcUnzipped(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 355
    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 357
    iget-object v3, p0, Lcom/shun/hack/Installer;->ui:Landroid/os/Handler;

    new-instance v4, Lcom/shun/hack/Installer$1;

    invoke-direct {v4, p0, v1}, Lcom/shun/hack/Installer$1;-><init>(Lcom/shun/hack/Installer;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    iget-object v1, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shun/hack/Installer;->setRights:Z

    invoke-static {v0, v2, p0, v1}, Lcom/shun/hack/Unzip;->unzip(Ljava/io/InputStream;Ljava/io/File;Lcom/shun/hack/Installer;Z)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 367
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 384
    :goto_5c
    return-object v0

    .line 371
    :cond_5d
    new-instance v0, Lcom/shun/hack/ServerUtils;

    iget-object v1, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shun/hack/ServerUtils;-><init>(Landroid/content/Context;)V

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lighttpd.conf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shun/hack/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    const-string v2, "server\\.document-root.*\\n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server.document-root = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shun/hack/ServerUtils;->getDocFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/shun/hack/ServerUtils;->getDocFolderExtDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_ae} :catch_d0

    .line 376
    :try_start_ae
    const-string v2, "utf-8"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/lighttpd.conf"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_ca} :catch_dd

    .line 379
    :goto_ca
    const/4 v0, 0x1

    :try_start_cb
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_d0

    move-result-object v0

    goto :goto_5c

    .line 381
    :catch_d0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V

    .line 384
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5c

    .line 377
    :catch_dd
    move-exception v0

    goto :goto_ca
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shun/hack/Installer;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getErr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 440
    const-string v0, "install calcel"

    invoke-virtual {p0, v0}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0, v1}, Lcom/shun/hack/Installer;->cancel(Z)Z

    .line 442
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shun/hack/Installer;->onPostExecute(Ljava/lang/Boolean;)V

    .line 444
    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 406
    iget-object v0, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extrack complete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/shun/hack/ServerUtils;

    iget-object v2, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/shun/hack/ServerUtils;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    iget-object v0, p0, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 411
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/index.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 413
    :try_start_51
    const-string v0, "<?php phpinfo(); ?>"

    const-string v2, "utf-8"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/index.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6d} :catch_126

    .line 417
    :cond_6d
    :goto_6d
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fileman.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 419
    :try_start_8d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fileman.php "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b7} :catch_124

    .line 422
    :cond_b7
    :goto_b7
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_101

    .line 424
    :try_start_d7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/shun/hack/ServerUtils;->getPathToInstallServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/download.php "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/Installer;->DOC_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_101} :catch_122

    .line 436
    :cond_101
    :goto_101
    return-void

    .line 429
    :cond_102
    iget-object v0, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/shun/hack/Installer;->getErr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "annimon"

    const-string v3, "pentagon"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 431
    iget-object v0, p0, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 432
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/shun/hack/Installer;->setErr(Ljava/lang/String;)V

    goto :goto_101

    .line 425
    :catch_122
    move-exception v0

    goto :goto_101

    .line 420
    :catch_124
    move-exception v0

    goto :goto_b7

    .line 414
    :catch_126
    move-exception v0

    goto/16 :goto_6d
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/shun/hack/Installer;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 2

    .prologue
    .line 397
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/Installer;->ui:Landroid/os/Handler;

    .line 400
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shun/hack/Installer;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 390
    iget-wide v0, p0, Lcom/shun/hack/Installer;->currProgress:J

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shun/hack/Installer;->currProgress:J

    .line 391
    iget-object v0, p0, Lcom/shun/hack/Installer;->dialog:Landroid/app/ProgressDialog;

    iget-wide v2, p0, Lcom/shun/hack/Installer;->currProgress:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 392
    return-void
.end method

.method public setErr(I)V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setErr(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shun/hack/Installer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setErr(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/shun/hack/Installer;->err:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public update(I)V
    .registers 5

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/shun/hack/Installer;->publishProgress([Ljava/lang/Object;)V

    .line 186
    return-void
.end method
