.class public Llewa/v5/lockscreen/WallpaperResourceLoader;
.super Llewa/laml/ResourceLoader;
.source "WallpaperResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Llewa/laml/ResourceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .parameter "path"
    .parameter "size"

    .prologue
    .line 11
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llewa/content/res/ThemeResources;->getFancyWallpaperFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected resourceExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 15
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v0

    invoke-virtual {v0, p1}, Llewa/content/res/ThemeResources;->containsFancyWallpaperEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
