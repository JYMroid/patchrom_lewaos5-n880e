.class public Llewa/v5/lockscreen/WallpaperScreenElement;
.super Llewa/laml/elements/ImageScreenElement;
.source "WallpaperScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Wallpaper"

.field public static final TAG_NAME:Ljava/lang/String; = "Wallpaper"


# instance fields
.field private mFill:Z

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mFill:Z

    .line 32
    const-string v1, "fill"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, attr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mFill:Z

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 83
    iget-boolean v1, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mFill:Z

    if-eqz v1, :cond_1

    .line 84
    iget-object v0, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 85
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x0

    iget-object v2, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-super {p0, p1}, Llewa/laml/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getHeight()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getWidth()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-super {p0}, Llewa/laml/elements/ImageScreenElement;->init()V

    .line 60
    invoke-virtual {p0}, Llewa/v5/lockscreen/WallpaperScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v4}, Llewa/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    iget v4, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mBlurRadius:I

    if-lez v4, :cond_4

    .line 65
    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/WallpaperScreenElement;->getBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mFill:Z

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {p0}, Llewa/v5/lockscreen/WallpaperScreenElement;->getWidth()F

    move-result v3

    .line 72
    .local v3, width:F
    cmpg-float v4, v3, v6

    if-gez v4, :cond_1

    .line 73
    const-string v4, "screen_width"

    invoke-virtual {p0}, Llewa/v5/lockscreen/WallpaperScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v5

    invoke-static {v4, v5}, Llewa/laml/util/Utils;->getVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Llewa/v5/lockscreen/WallpaperScreenElement;->scale(D)F

    move-result v3

    .line 74
    :cond_1
    invoke-virtual {p0}, Llewa/v5/lockscreen/WallpaperScreenElement;->getHeight()F

    move-result v2

    .line 75
    .local v2, height:F
    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    .line 76
    const-string v4, "screen_height"

    invoke-virtual {p0}, Llewa/v5/lockscreen/WallpaperScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v5

    invoke-static {v4, v5}, Llewa/laml/util/Utils;->getVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Llewa/v5/lockscreen/WallpaperScreenElement;->scale(D)F

    move-result v2

    .line 77
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mRect:Landroid/graphics/RectF;

    .line 79
    .end local v2           #height:F
    .end local v3           #width:F
    :cond_3
    return-void

    .line 67
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_4
    iput-object v0, p0, Llewa/v5/lockscreen/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
