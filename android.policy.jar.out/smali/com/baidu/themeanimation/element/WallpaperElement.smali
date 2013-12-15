.class public Lcom/baidu/themeanimation/element/WallpaperElement;
.super Lcom/baidu/themeanimation/element/ImageElement;
.source "WallpaperElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperElement"


# instance fields
.field private mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/ImageElement;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public changeWallPaper()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "WallpaperElement"

    const-string v1, "changeWallPaper"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/baidu/themeanimation/element/ImageElement;->clearView()V

    .line 30
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 37
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public generateView0(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "_context"

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-nez v1, :cond_0

    .line 41
    const-string v1, "WallpaperElement"

    const-string v2, "generateView WallpaperElement View"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p0, v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;-><init>(Lcom/baidu/themeanimation/element/ImageElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/BaseElement;I)V

    iput-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v1, v1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v1, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/WallpaperElement;->setView(Landroid/view/View;)V

    .line 52
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mWallpaperView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    return-object v1
.end method
