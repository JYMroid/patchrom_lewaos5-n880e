.class public Lcom/lewa/widget/CircleDrawable;
.super Ljava/lang/Object;
.source "CircleDrawable.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mRadius:F

.field private mStrokeWidth:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationX:F

    .line 33
    iput v0, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationY:F

    .line 34
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lewa/widget/CircleDrawable;->mAlpha:F

    .line 36
    const/high16 v0, 0x42f0

    iput v0, p0, Lcom/lewa/widget/CircleDrawable;->mRadius:F

    .line 37
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/lewa/widget/CircleDrawable;->mStrokeWidth:F

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .local v0, p:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/lewa/widget/CircleDrawable;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget v1, p0, Lcom/lewa/widget/CircleDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    iget v1, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationX:F

    iget v2, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationY:F

    invoke-virtual {p0}, Lcom/lewa/widget/CircleDrawable;->getRadius()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/lewa/widget/CircleDrawable;->mAlpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lewa/widget/CircleDrawable;->mRadius:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/lewa/widget/CircleDrawable;->mStrokeWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationY:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 56
    iput p1, p0, Lcom/lewa/widget/CircleDrawable;->mAlpha:F

    .line 57
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 52
    iput p1, p0, Lcom/lewa/widget/CircleDrawable;->mRadius:F

    .line 53
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .parameter "strokeWidth"

    .prologue
    .line 60
    iput p1, p0, Lcom/lewa/widget/CircleDrawable;->mStrokeWidth:F

    .line 61
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 44
    iput p1, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationX:F

    .line 45
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 48
    iput p1, p0, Lcom/lewa/widget/CircleDrawable;->mTranslationY:F

    .line 49
    return-void
.end method
