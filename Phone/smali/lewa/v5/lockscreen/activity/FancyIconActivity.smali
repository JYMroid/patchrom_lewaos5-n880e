.class public Llewa/v5/lockscreen/activity/FancyIconActivity;
.super Landroid/app/Activity;
.source "FancyIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;
    }
.end annotation


# static fields
.field private static final ADAPTER:Z


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    return-void
.end method

.method private getFancyDrawables()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, ds:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    :try_start_0
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v6

    invoke-virtual {v6}, Llewa/content/res/ThemeResources;->getFancyIcons()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 113
    .local v4, icon:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p0, v4, v6}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 114
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #icon:Ljava/lang/String;
    .end local v5           #len$:I
    :catch_0
    move-exception v6

    .line 120
    :cond_1
    return-object v2
.end method

.method private getPatternBackground()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41a0

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 125
    .local v8, side:I
    mul-int/lit8 v2, v8, 0x2

    mul-int/lit8 v3, v8, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 126
    .local v6, bmp:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 128
    .local v5, p:Landroid/graphics/Paint;
    const/high16 v2, 0x1000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    int-to-float v3, v8

    int-to-float v4, v8

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    int-to-float v1, v8

    int-to-float v2, v8

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 132
    .local v7, drawable:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 133
    return-object v7
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x5

    .line 44
    iget-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mBackground:Landroid/graphics/Bitmap;

    if-nez v9, :cond_0

    .line 45
    const-string v9, "window"

    invoke-virtual {p0, v9}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 46
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 47
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 49
    .local v5, shot:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 50
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mBackground:Landroid/graphics/Bitmap;

    .line 52
    iget-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mBackground:Landroid/graphics/Bitmap;

    const/high16 v10, -0x100

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 53
    iget-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mBackground:Landroid/graphics/Bitmap;

    invoke-static {v5, v9, v13}, Llewa/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 54
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    .end local v2           #display:Landroid/view/Display;
    .end local v5           #shot:Landroid/graphics/Bitmap;
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    move-object v0, p0

    .line 59
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x105

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff8

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 61
    .local v6, size:I
    invoke-direct {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getFancyDrawables()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mDrawables:Ljava/util/List;

    .line 70
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v4, layout:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const v10, 0x55ffffff

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mDrawables:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 73
    .local v1, d:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v7, v:Landroid/widget/ImageView;
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v7, v13, v13, v13, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 78
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v7           #v:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p0, v4}, Llewa/v5/lockscreen/activity/FancyIconActivity;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    iget-object v9, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mBackground:Landroid/graphics/Bitmap;

    if-nez v9, :cond_2

    invoke-direct {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getPatternBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void

    .line 80
    :cond_2
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mBackground:Landroid/graphics/Bitmap;

    invoke-direct {v9, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mDrawables:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyIconActivity;->mDrawables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 90
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Llewa/laml/FancyDrawable;

    if-eqz v2, :cond_0

    .line 91
    check-cast v0, Llewa/laml/FancyDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Llewa/laml/FancyDrawable;->cleanUp()V

    goto :goto_0

    .line 95
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 106
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Llewa/v5/lockscreen/activity/FancyIconActivity;->overridePendingTransition(II)V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    const/high16 v0, 0x10a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Llewa/v5/lockscreen/activity/FancyIconActivity;->overridePendingTransition(II)V

    .line 101
    return-void
.end method
