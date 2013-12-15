.class public Lcom/lewa/screenengine/IncallScreenResourceLoader;
.super Llewa/laml/ResourceLoader;
.source "IncallScreenResourceLoader.java"


# static fields
.field private static final CONFIG_INCALLSCREEN_CUSTOM_PATH:Ljava/lang/String; = "/system/media/theme/incallstyle"

.field private static final CONFIG_INCALLSCREEN_ZIP_PATH:Ljava/lang/String; = "advance/"


# instance fields
.field private mIncallScreenFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Llewa/laml/ResourceLoader;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/lewa/screenengine/IncallScreenResourceLoader;->init()V

    .line 24
    return-void
.end method

.method private static getAvaliablePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cus"
    .parameter "def"

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/lewa/screenengine/IncallScreenResourceLoader;->getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 3
    .parameter "cus"
    .parameter "def"

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-static {p1, p2}, Lcom/lewa/screenengine/IncallScreenResourceLoader;->getAvaliablePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "/system/media/theme/incallstyle"

    const-string v1, "/system/media/theme/incallstyle"

    invoke-direct {p0, v0, v1}, Lcom/lewa/screenengine/IncallScreenResourceLoader;->getZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/screenengine/IncallScreenResourceLoader;->mIncallScreenFile:Ljava/util/zip/ZipFile;

    .line 29
    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lewa/screenengine/IncallScreenResourceLoader;->mIncallScreenFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/lewa/screenengine/IncallScreenResourceLoader;->mIncallScreenFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advance/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 53
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/lewa/screenengine/IncallScreenResourceLoader;->mIncallScreenFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v1

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lewa/screenengine/IncallScreenResourceLoader;->mIncallScreenFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/screenengine/IncallScreenResourceLoader;->mIncallScreenFile:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
