.class public Lcom/lewa/phone/LewaPhoneStyleBG;
.super Ljava/lang/Object;
.source "LewaPhoneStyleBG.java"


# static fields
.field private static sInstance:Lcom/lewa/phone/LewaPhoneStyleBG;


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lewa/phone/LewaPhoneStyleBG;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/lewa/phone/LewaPhoneStyleBG;->sInstance:Lcom/lewa/phone/LewaPhoneStyleBG;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/lewa/phone/LewaPhoneStyleBG;

    invoke-direct {v0, p0}, Lcom/lewa/phone/LewaPhoneStyleBG;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lewa/phone/LewaPhoneStyleBG;->sInstance:Lcom/lewa/phone/LewaPhoneStyleBG;

    .line 27
    :cond_0
    sget-object v0, Lcom/lewa/phone/LewaPhoneStyleBG;->sInstance:Lcom/lewa/phone/LewaPhoneStyleBG;

    return-object v0
.end method


# virtual methods
.method public createStyleBackground(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 35
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 36
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 37
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, shot:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 40
    iget-object v3, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    .line 45
    iget-object v3, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 46
    iget-object v3, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    const/4 v4, 0x5

    invoke-static {v1, v3, v4}, Llewa/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    :cond_1
    return-void
.end method

.method public createStyleBackground2(Landroid/content/Context;II)V
    .locals 15
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v11}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    .local v4, d:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v10, 0x0

    .line 59
    .local v10, wallpaper:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 62
    :cond_2
    if-eqz v10, :cond_0

    .line 65
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int v11, v11, p2

    div-int/lit8 v6, v11, 0x2

    .line 66
    .local v6, left:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int v11, v11, p2

    div-int/lit8 v7, v11, 0x2

    .line 67
    .local v7, right:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int v11, v11, p3

    div-int/lit8 v9, v11, 0x2

    .line 68
    .local v9, top:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int v11, v11, p3

    div-int/lit8 v2, v11, 0x2

    .line 69
    .local v2, bottom:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v9, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v8, src:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x3

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    .local v1, bmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v5, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .local v5, dst:Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v10, v8, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, blurred:Landroid/graphics/Bitmap;
    const/high16 v11, -0x100

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 77
    const/16 v11, 0xa

    invoke-static {v1, v0, v11}, Llewa/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    iget-object v11, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_3

    .line 80
    iget-object v11, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    :cond_3
    iput-object v0, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 83
    .end local v0           #blurred:Landroid/graphics/Bitmap;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #bottom:I
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #dst:Landroid/graphics/Rect;
    .end local v6           #left:I
    .end local v7           #right:I
    .end local v8           #src:Landroid/graphics/Rect;
    .end local v9           #top:I
    .end local v10           #wallpaper:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 84
    :catch_1
    move-exception v11

    goto/16 :goto_0
.end method

.method public getStyleBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStyleBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 93
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 94
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 95
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/lewa/phone/LewaPhoneStyleBG;->createStyleBackground2(Landroid/content/Context;II)V

    .line 96
    iget-object v2, p0, Lcom/lewa/phone/LewaPhoneStyleBG;->mBackground:Landroid/graphics/Bitmap;

    return-object v2
.end method
