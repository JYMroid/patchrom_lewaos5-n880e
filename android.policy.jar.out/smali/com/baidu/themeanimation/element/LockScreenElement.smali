.class public Lcom/baidu/themeanimation/element/LockScreenElement;
.super Ljava/lang/Object;
.source "LockScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenElement"

.field private static mElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsInStartArea:Ljava/lang/Boolean;


# instance fields
.field private isEnd:Z

.field private mBatteryFullStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLowStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:I

.field private mChargingStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

.field private mDisplayDesktop:Ljava/lang/Boolean;

.field private mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

.field private mFrameRate:I

.field private mLockScreenParser:Lcom/baidu/themeanimation/util/LockScreenParser;

.field private mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

.field private mNormalStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I

.field private mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

.field private mWallpaperView:Landroid/widget/ImageView;

.field private mZipHelper:Lcom/baidu/themeanimation/util/FileUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/element/LockScreenElement;->mIsInStartArea:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 35
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    .line 108
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->isEnd:Z

    .line 177
    iput-object v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    .line 178
    iput-object v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mChargingStateViews:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryFullStateViews:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryLowStateViews:Ljava/util/List;

    .line 60
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 61
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mZipHelper:Lcom/baidu/themeanimation/util/FileUtil;

    .line 62
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    .line 63
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    .line 64
    invoke-static {}, Lcom/baidu/themeanimation/util/LockScreenParser;->getInstance()Lcom/baidu/themeanimation/util/LockScreenParser;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenParser:Lcom/baidu/themeanimation/util/LockScreenParser;

    .line 65
    return-void
.end method

.method public constructor <init>(IILjava/lang/Boolean;)V
    .locals 3
    .parameter "version"
    .parameter "frameRate"
    .parameter "displayDesktop"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 35
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    .line 108
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->isEnd:Z

    .line 177
    iput-object v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    .line 178
    iput-object v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 48
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 49
    iput p2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 50
    iput-object p3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addContent(Lcom/baidu/themeanimation/manager/ContentManager$Content;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/baidu/themeanimation/manager/ContentManager;->getInstance()Lcom/baidu/themeanimation/manager/ContentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/manager/ContentManager;->addContent(Lcom/baidu/themeanimation/manager/ContentManager$Content;)V

    .line 106
    return-void
.end method

.method public addElements(Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    sget-object v0, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public changedWallpaper()Z
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/util/FileUtil;->getWallpaperChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/WallpaperElement;->changeWallPaper()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public clearElement()V
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/util/FileUtil;->clearBitmap()V

    .line 318
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/manager/ExpressionManager;->reset()V

    .line 319
    invoke-static {}, Lcom/baidu/themeanimation/manager/ContentManager;->getInstance()Lcom/baidu/themeanimation/manager/ContentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/manager/ContentManager;->clear()V

    .line 320
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->clearVariables()V

    .line 321
    return-void
.end method

.method public dispatchCategoryChange(I)V
    .locals 5
    .parameter "category"

    .prologue
    .line 368
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onCategoryChange(I)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v2, 0xa

    iget v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 373
    return-void
.end method

.method public dispatchTimeTick(Landroid/text/format/Time;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 376
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 377
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method

.method public generateView(Landroid/content/Context;IILandroid/os/Handler;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "handler"

    .prologue
    const/4 v8, 0x0

    .line 211
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    if-nez v7, :cond_4

    .line 212
    new-instance v7, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-direct {v7, p1, p4}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    .line 214
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v4, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 219
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 220
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 222
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    :cond_0
    iput-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 225
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v7, v3}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->addView(Landroid/view/View;)V

    .line 229
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v7, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 230
    const/4 v5, 0x0

    .line 231
    .local v5, view:Landroid/view/View;
    sget-object v7, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    .line 232
    .local v1, element:Lcom/baidu/themeanimation/element/BaseElement;
    instance-of v7, v1, Lcom/baidu/themeanimation/element/WallpaperElement;

    if-eqz v7, :cond_3

    move-object v7, v1

    .line 234
    check-cast v7, Lcom/baidu/themeanimation/element/WallpaperElement;

    iput-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    .line 235
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-virtual {v7, p1}, Lcom/baidu/themeanimation/element/WallpaperElement;->generateView0(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    .line 240
    :goto_1
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->getCategory()I

    move-result v0

    .line 243
    .local v0, category:I
    iget v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    if-eq v0, v7, :cond_1

    const/4 v7, 0x4

    if-eq v0, v7, :cond_1

    .line 245
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 249
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_2
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v7, v5}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->addView(Landroid/view/View;)V

    .line 265
    instance-of v7, v1, Lcom/baidu/themeanimation/element/UnlockerElement;

    if-eqz v7, :cond_2

    .line 266
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 229
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v0           #category:I
    :cond_3
    invoke-virtual {v1, p1, p4}, Lcom/baidu/themeanimation/element/BaseElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 251
    .restart local v0       #category:I
    :pswitch_0
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mChargingStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    :pswitch_1
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryFullStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    :pswitch_2
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryLowStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 260
    :pswitch_3
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 277
    .end local v0           #category:I
    .end local v1           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v2           #i:I
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #view:Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 279
    .local v6, viewGroup:Landroid/view/ViewGroup;
    if-eqz v6, :cond_5

    .line 280
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    .end local v6           #viewGroup:Landroid/view/ViewGroup;
    :cond_5
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    return-object v7

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getAnimationsStatus()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 358
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->getAnimationsStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 362
    :goto_1
    return v1

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getDisplayDesktop()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    return v0
.end method

.method public releaseView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 290
    .local v2, viewGroup:Landroid/view/ViewGroup;
    const-string v3, "LockScreenElement"

    const-string v4, "generateView: removeView"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz v2, :cond_0

    .line 292
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->removeAllViews()V

    .line 297
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 298
    sget-object v3, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 299
    .local v0, element:Lcom/baidu/themeanimation/element/BaseElement;
    instance-of v3, v0, Lcom/baidu/themeanimation/element/UnlockerElement;

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 300
    check-cast v3, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->reset()V

    .line 302
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    :cond_3
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 305
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 306
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryFullStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 307
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mChargingStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 308
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryLowStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 311
    :cond_4
    iput-object v5, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    .line 312
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 313
    iput-object v5, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 314
    :cond_5
    return-void
.end method

.method public setAnimationsListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 352
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/BaseElement;->setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method public setDisplayDesktop(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "displayDesktop"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .parameter "frameRate"

    .prologue
    .line 80
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 81
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 72
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 73
    return-void
.end method

.method public startAnimations()V
    .locals 5

    .prologue
    .line 326
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 327
    sget-object v3, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    .line 328
    .local v1, element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->getCategory()I

    move-result v0

    .line 330
    .local v0, category:I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->startAnimations()V

    .line 334
    :cond_0
    iget v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    if-ne v0, v3, :cond_1

    .line 335
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->startAnimations()V

    .line 337
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    check-cast v1, Lcom/baidu/themeanimation/element/UnlockerElement;

    .end local v1           #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->reset()V

    .line 326
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v0           #category:I
    :cond_3
    return-void
.end method

.method public stopAnimations()V
    .locals 3

    .prologue
    .line 344
    const-string v1, "LockScreenElement"

    const-string v2, "stopAnimations"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 346
    sget-object v1, Lcom/baidu/themeanimation/element/LockScreenElement;->mElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->clearAnimations()V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method public updateContent(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, startTime:J
    invoke-static {}, Lcom/baidu/themeanimation/manager/ContentManager;->getInstance()Lcom/baidu/themeanimation/manager/ContentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/manager/ContentManager;->update(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public updateWallpaper()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/WallpaperElement;->changeWallPaper()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    :cond_1
    return-void
.end method
