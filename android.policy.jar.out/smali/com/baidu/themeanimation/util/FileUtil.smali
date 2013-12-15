.class public Lcom/baidu/themeanimation/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;,
        Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"

.field static mInstance:Lcom/baidu/themeanimation/util/FileUtil;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field public Image_X_SCALE:F

.field public Image_Y_SCALE:F

.field public SCREEN_HEIGHT:I

.field public SCREEN_WIDTH:I

.field public WALLPAPER_SCALE:F

.field public X_SCALE:F

.field public Y_SCALE:F

.field public densityDpi:I

.field private isTactileFeedbackEnabled:Z

.field mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsThemeChange:Z

.field private mIsWallpaperChanged:Z

.field private mLockScreenFilePath:Ljava/lang/String;

.field private mLockWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mStartTime:J

.field private mWallpaperFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsWallpaperChanged:Z

    .line 29
    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    .line 30
    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    .line 31
    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 32
    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 33
    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    .line 34
    iput v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    .line 35
    iput v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    .line 36
    const/16 v0, 0xf0

    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->densityDpi:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/util/FileUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/baidu/themeanimation/util/FileUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static getInstance()Lcom/baidu/themeanimation/util/FileUtil;
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/baidu/themeanimation/util/FileUtil;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    monitor-exit v1

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/util/FileUtil;

    invoke-direct {v0}, Lcom/baidu/themeanimation/util/FileUtil;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isPic(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 233
    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkManifest()Z
    .locals 3

    .prologue
    .line 313
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "manifest.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 317
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBitmap()V
    .locals 5

    .prologue
    .line 337
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 339
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 340
    .local v2, keySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 342
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 344
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 348
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 352
    :cond_2
    return-void
.end method

.method public getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "element"

    .prologue
    const/high16 v5, 0x3f80

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 360
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 361
    const/4 v3, 0x0

    .line 363
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/FileUtil;->getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 364
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    iget v4, v4, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    iget v4, v4, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 367
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget v5, v5, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    iget v6, v6, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 371
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    const/4 v0, 0x0

    .line 373
    move-object v0, v1

    .line 375
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    if-eqz v3, :cond_2

    .line 381
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v3           #is:Ljava/io/InputStream;
    :cond_3
    return-object v0

    .line 382
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 383
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 377
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    if-eqz v3, :cond_2

    .line 381
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 382
    :catch_2
    move-exception v2

    .line 383
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 381
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 384
    :cond_4
    :goto_1
    throw v4

    .line 382
    :catch_3
    move-exception v2

    .line 383
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "element"

    .prologue
    .line 321
    const/4 v2, 0x0

    .line 323
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #inputStream:Ljava/io/InputStream;
    .local v3, inputStream:Ljava/io/InputStream;
    move-object v2, v3

    .line 333
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLockScreenFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLockWallPaper()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getWallpaperChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 290
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallpaperFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, wallpaperFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallpaperFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 293
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v3, v3

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    iget v4, v4, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    iget v4, v4, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget v5, v5, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :cond_1
    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    .line 309
    .end local v1           #wallpaperFile:Ljava/io/File;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object v2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    throw v2
.end method

.method public getLockWallpaperFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeChange()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsThemeChange:Z

    return v0
.end method

.method public getWallpaperChanged()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsWallpaperChanged:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled:Z

    return v0
.end method

.method public openFile(Landroid/os/Handler;)Ljava/io/InputStream;
    .locals 8
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    .line 165
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wallpaper: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, lockscreenThemeFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    :cond_0
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 195
    :goto_0
    return-object v2

    .line 172
    :cond_1
    const/4 v2, 0x0

    .line 174
    .local v2, manifestStream:Ljava/io/InputStream;
    :try_start_0
    const-string v5, "manifest.xml"

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 175
    if-nez v2, :cond_2

    .line 176
    const-string v5, "FileUtil"

    const-string v6, "cannot found manifestStream.xml!!"

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 177
    goto :goto_0

    .line 180
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, wallpaperFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 182
    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    const-string v5, ".jpg"

    const-string v6, ".png"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    .line 183
    new-instance v3, Ljava/io/File;

    .end local v3           #wallpaperFile:Ljava/io/File;
    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v3       #wallpaperFile:Ljava/io/File;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v4, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;

    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-direct {v4, p0, v5, p1}, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;-><init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v4}, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v3           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #wallpaperFile:Ljava/io/File;
    :cond_4
    :try_start_1
    const-string v4, "FileUtil"

    const-string v5, "load wallpaper failed"

    invoke-static {v4, v5}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public printRuntime(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 393
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_cast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mStartTime:J

    .line 395
    return-void
.end method

.method public setDensity(Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "dm"
    .parameter "rootPath"
    .parameter "lockDir"
    .parameter "wallpaperDir"

    .prologue
    const/high16 v7, 0x4448

    const/high16 v6, 0x43f0

    const/high16 v5, 0x3f80

    .line 70
    iget v3, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->densityDpi:I

    .line 72
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_4

    .line 73
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    .line 74
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    .line 79
    :goto_0
    const/4 p1, 0x0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, advance:Ljava/lang/String;
    iput v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 82
    iput v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, file:Ljava/io/File;
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->densityDpi:I

    const/16 v4, 0x140

    if-ne v3, v4, :cond_6

    .line 86
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    const/16 v4, 0x500

    if-eq v3, v4, :cond_1

    .line 88
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance-xhdpi-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    move-object v0, v2

    .line 94
    .end local v2           #localPath:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 95
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance-xhdpi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2       #localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    move-object v0, v2

    .line 99
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x4434

    div-float/2addr v3, v4

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 100
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x44a0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 121
    .end local v2           #localPath:Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/util/FileUtil;->setLockScreenFilePath(Ljava/lang/String;)V

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/default_lock_wallpaper.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/util/FileUtil;->setLockWallpaperFilePath(Ljava/lang/String;)V

    .line 124
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    .line 125
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    .line 127
    iput v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    .line 128
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDensity: x scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",image_x_scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Image_y_scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",densityDpi= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 76
    .end local v0           #advance:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_4
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    .line 77
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    goto/16 :goto_0

    .line 102
    .restart local v0       #advance:Ljava/lang/String;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #localPath:Ljava/lang/String;
    :cond_5
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 103
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    goto/16 :goto_1

    .line 106
    .end local v2           #localPath:Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->densityDpi:I

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_3

    .line 107
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    const/16 v4, 0x1e0

    if-ne v3, v4, :cond_7

    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    const/16 v4, 0x320

    if-eq v3, v4, :cond_8

    .line 109
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance-hdpi-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2       #localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 112
    move-object v0, v2

    .line 115
    .end local v2           #localPath:Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    :cond_9
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 117
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    goto/16 :goto_1
.end method

.method public setLockScreenFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "lockWallpaperPath"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setLockWallpaperFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "lockWallpaperPath"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .parameter "rootPath"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/FileUtil;->setLockScreenFilePath(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_lock_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/util/FileUtil;->setLockWallpaperFilePath(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "isTactileFeedbackEnabled"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled:Z

    .line 48
    return-void
.end method

.method public setThemeChange(Z)V
    .locals 0
    .parameter "_value"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsThemeChange:Z

    .line 403
    return-void
.end method

.method public setWallpaperChanged(Z)V
    .locals 0
    .parameter "_wallpaperChanged"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsWallpaperChanged:Z

    .line 145
    return-void
.end method
