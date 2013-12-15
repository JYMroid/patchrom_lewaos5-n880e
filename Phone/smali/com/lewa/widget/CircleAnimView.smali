.class public Lcom/lewa/widget/CircleAnimView;
.super Landroid/view/View;
.source "CircleAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/widget/CircleAnimView$Circle;
    }
.end annotation


# static fields
.field public static final CRICLE_ANIMATION_DURATION_ALL:I = 0x7d0

.field private static final CRICLE_ANIMATION_DURATION_APPEAR:I = 0x258

.field private static final CRICLE_ANIMATION_DURATION_DISAPPEAR:I = 0x578


# instance fields
.field private mCircles:[Lcom/lewa/widget/CircleDrawable;

.field private mCricleAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lewa/widget/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    .line 24
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/lewa/widget/CircleDrawable;

    iput-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    .line 136
    new-instance v1, Lcom/lewa/widget/CircleAnimView$1;

    invoke-direct {v1, p0}, Lcom/lewa/widget/CircleAnimView$1;-><init>(Lcom/lewa/widget/CircleAnimView;)V

    iput-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 142
    new-instance v1, Lcom/lewa/widget/CircleAnimView$2;

    invoke-direct {v1, p0}, Lcom/lewa/widget/CircleAnimView$2;-><init>(Lcom/lewa/widget/CircleAnimView;)V

    iput-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    new-instance v2, Lcom/lewa/widget/CircleDrawable;

    invoke-direct {v2}, Lcom/lewa/widget/CircleDrawable;-><init>()V

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    .line 45
    return-void
.end method

.method private startCricleAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 64
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_ONE:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x7d0

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "strokeWidth"

    aput-object v5, v4, v9

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    aput-object v5, v4, v10

    const-string v5, "radius"

    aput-object v5, v4, v8

    new-array v5, v8, [F

    iget v6, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    const/high16 v7, 0x426c

    mul-float/2addr v6, v7

    aput v6, v5, v9

    iget v6, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    const/high16 v7, 0x429a

    mul-float/2addr v6, v7

    aput v6, v5, v10

    aput-object v5, v4, v11

    const-string v5, "onUpdate"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/lewa/widget/CircleAnimView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_TWO:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "strokeWidth"

    aput-object v5, v4, v9

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    aput-object v5, v4, v10

    const-string v5, "radius"

    aput-object v5, v4, v8

    new-array v5, v8, [F

    iget v6, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    const/high16 v7, 0x429c

    mul-float/2addr v6, v7

    aput v6, v5, v9

    iget v6, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    aput v6, v5, v10

    aput-object v5, v4, v11

    const-string v5, "onUpdate"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_THREE:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "strokeWidth"

    aput-object v5, v4, v9

    new-array v5, v8, [F

    fill-array-data v5, :array_2

    aput-object v5, v4, v10

    const-string v5, "radius"

    aput-object v5, v4, v8

    new-array v5, v8, [F

    iget v6, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    const/high16 v7, 0x42d2

    mul-float/2addr v6, v7

    aput v6, v5, v9

    iget v6, p0, Lcom/lewa/widget/CircleAnimView;->mDensity:F

    const/high16 v7, 0x42f4

    mul-float/2addr v6, v7

    aput v6, v5, v10

    aput-object v5, v4, v11

    const-string v5, "onUpdate"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_ONE:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x258

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "alpha"

    aput-object v5, v4, v9

    new-array v5, v8, [F

    fill-array-data v5, :array_3

    aput-object v5, v4, v10

    const-string v5, "onUpdate"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    aput-object v5, v4, v11

    invoke-static {v1, v2, v3, v9, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_TWO:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x258

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "alpha"

    aput-object v5, v4, v9

    new-array v5, v8, [F

    fill-array-data v5, :array_4

    aput-object v5, v4, v10

    const-string v5, "onUpdate"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    aput-object v5, v4, v11

    invoke-static {v1, v2, v3, v9, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_THREE:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x258

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "alpha"

    aput-object v5, v4, v9

    new-array v5, v8, [F

    fill-array-data v5, :array_5

    aput-object v5, v4, v10

    const-string v5, "onUpdate"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    aput-object v5, v4, v11

    invoke-static {v1, v2, v3, v9, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_ONE:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x578

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v9

    const/16 v5, 0x258

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "alpha"

    aput-object v5, v4, v8

    new-array v5, v8, [F

    fill-array-data v5, :array_6

    aput-object v5, v4, v11

    const-string v5, "onUpdate"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v9, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_TWO:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x578

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v9

    const/16 v5, 0x258

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "alpha"

    aput-object v5, v4, v8

    new-array v5, v8, [F

    fill-array-data v5, :array_7

    aput-object v5, v4, v11

    const-string v5, "onUpdate"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v9, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    sget-object v2, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_THREE:Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView$Circle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x578

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v9

    const/16 v5, 0x258

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "alpha"

    aput-object v5, v4, v8

    new-array v5, v8, [F

    fill-array-data v5, :array_8

    aput-object v5, v4, v11

    const-string v5, "onUpdate"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v9, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 73
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 78
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 85
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3et
    .end array-data

    .line 90
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0xa3t 0x3dt
    .end array-data

    .line 95
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8ft 0xc2t 0xf5t 0x3ct
    .end array-data

    .line 102
    :array_6
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 108
    :array_7
    .array-data 0x4
        0xat 0xd7t 0xa3t 0x3dt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_8
    .array-data 0x4
        0x8ft 0xc2t 0xf5t 0x3ct
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopCricleAnimation()V
    .locals 3

    .prologue
    .line 124
    iget-object v2, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/Tweener;

    .line 125
    .local v0, anim:Lcom/lewa/widget/Tweener;
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 126
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 129
    :cond_1
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt2:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 133
    .end local v0           #anim:Lcom/lewa/widget/Tweener;
    :cond_2
    iget-object v2, p0, Lcom/lewa/widget/CircleAnimView;->mCricleAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 134
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    .local v0, arr$:[Lcom/lewa/widget/CircleDrawable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 152
    .local v1, circle:Lcom/lewa/widget/CircleDrawable;
    invoke-virtual {v1, p1}, Lcom/lewa/widget/CircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v1           #circle:Lcom/lewa/widget/CircleDrawable;
    :cond_0
    return-void
.end method

.method public setPosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView;->mCircles:[Lcom/lewa/widget/CircleDrawable;

    .local v0, arr$:[Lcom/lewa/widget/CircleDrawable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 49
    .local v1, circle:Lcom/lewa/widget/CircleDrawable;
    invoke-virtual {v1, p1}, Lcom/lewa/widget/CircleDrawable;->setX(F)V

    .line 50
    invoke-virtual {v1, p2}, Lcom/lewa/widget/CircleDrawable;->setY(F)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1           #circle:Lcom/lewa/widget/CircleDrawable;
    :cond_0
    return-void
.end method

.method public showAnim()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lewa/widget/CircleAnimView;->stopCricleAnimation()V

    .line 56
    invoke-direct {p0}, Lcom/lewa/widget/CircleAnimView;->startCricleAnimation()V

    .line 57
    return-void
.end method

.method public stopAnim()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lewa/widget/CircleAnimView;->stopCricleAnimation()V

    .line 61
    return-void
.end method
