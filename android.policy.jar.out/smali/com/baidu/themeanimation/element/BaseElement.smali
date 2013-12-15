.class public Lcom/baidu/themeanimation/element/BaseElement;
.super Ljava/lang/Object;
.source "BaseElement.java"

# interfaces
.implements Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;,
        Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x4

.field public static final CENTER:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseElement"

.field public static final TOP:I = 0x3

.field private static mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;


# instance fields
.field private mAlign:I

.field private mAlignV:I

.field private mAlpha:I

.field private mAngle:I

.field private mAnimationElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseAnimationElement;",
            ">;"
        }
    .end annotation
.end field

.field mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field public mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

.field private mAttributAnimation:Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;

.field private mCategory:I

.field private mCenterX:I

.field private mCenterY:I

.field private mFlag:I

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mOnTimeTick:Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;

.field public mPaint:Landroid/graphics/Paint;

.field private mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

.field private mView:Landroid/view/View;

.field private mVisibility:Ljava/lang/Boolean;

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 718
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/element/BaseElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;

    .line 295
    new-instance v0, Lcom/baidu/themeanimation/element/BaseElement$1;

    invoke-direct {v0, p0}, Lcom/baidu/themeanimation/element/BaseElement$1;-><init>(Lcom/baidu/themeanimation/element/BaseElement;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 441
    iput v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mFlag:I

    .line 456
    iput-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    .line 470
    iput-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/BaseElement;->setX(I)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/BaseElement;->setY(I)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/BaseElement;->setW(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/BaseElement;->setH(I)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/element/BaseElement;->setCenterX(I)V

    .line 77
    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/element/BaseElement;->setCenterY(I)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/BaseElement;->setAngle(I)V

    .line 79
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setAlpha(I)V

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setCategory(I)V

    .line 81
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/BaseElement;->setAlign(I)V

    .line 83
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setAlignV(I)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/BaseElement;->setName(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/BaseElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAngle:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method


# virtual methods
.method public actionVisibility(Ljava/lang/String;)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 393
    const-string v0, "toggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 397
    :cond_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    .line 445
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mX:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mX:I

    .line 449
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mY:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mY:I

    .line 453
    :cond_0
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mFlag:I

    .line 454
    return-void
.end method

.method public clearAnimations()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 578
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;->cancel()V

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/AnimatorParser;->stopAnimations()V

    .line 587
    :cond_2
    return-void
.end method

.method public clearView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 655
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 659
    :cond_0
    iput-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    .line 661
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    iput-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;

    .line 662
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlign:I

    return v0
.end method

.method public getAlignV()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlignV:I

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlpha:I

    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAngle:I

    return v0
.end method

.method public getAnimationsStatus()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationStatus()I

    move-result v0

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAnimatorParser()Lcom/baidu/themeanimation/element/AnimatorParser;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCategory:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCenterY:I

    return v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mHeight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentElement()Lcom/baidu/themeanimation/element/BaseElement;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mVisibility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mY:I

    return v0
.end method

.method public moveXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getY()I

    move-result v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getX()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 181
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onCategoryChange(I)V
    .locals 2
    .parameter "category"

    .prologue
    const/4 v1, 0x4

    .line 604
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 605
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCategory:I

    if-eq v0, v1, :cond_0

    .line 608
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCategory:I

    if-ne p1, v0, :cond_1

    .line 611
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;

    invoke-interface {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;->onTimeTick(Landroid/text/format/Time;)V

    .line 708
    :cond_0
    return-void
.end method

.method public releaseAttributAnimation()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;

    .line 66
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 668
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 679
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getX()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 681
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getY()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 683
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 684
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 689
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 690
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 698
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 700
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 685
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 686
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 691
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 692
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public setAlign(I)V
    .locals 0
    .parameter "align"

    .prologue
    .line 410
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlign:I

    .line 411
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 414
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlign:I

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_0
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlign:I

    goto :goto_0

    .line 419
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlign:I

    goto :goto_0
.end method

.method public setAlignV(I)V
    .locals 0
    .parameter "alignV"

    .prologue
    .line 428
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlignV:I

    .line 429
    return-void
.end method

.method public setAlignV(Ljava/lang/String;)V
    .locals 1
    .parameter "alignV"

    .prologue
    .line 432
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlignV:I

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlignV:I

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlignV:I

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 278
    if-gez p1, :cond_3

    .line 279
    const/4 p1, 0x0

    .line 284
    :cond_0
    :goto_0
    iget v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlpha:I

    if-eq v1, p1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 287
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 291
    :cond_1
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAlpha:I

    .line 293
    .end local v0           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 280
    :cond_3
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 281
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setAlpha(Ljava/lang/String;)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setAlpha(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public setAngle(I)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 258
    iget v1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAngle:I

    if-eq v1, p1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 263
    :cond_0
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAngle:I

    .line 265
    .end local v0           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setAngle(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public setAnimationElements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseAnimationElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    .line 468
    return-void
.end method

.method public setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 731
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 326
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCategory:I

    .line 327
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 330
    iget v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCategory:I

    .line 331
    .local v0, c:I
    if-eqz p1, :cond_1

    .line 332
    const-string v1, "Charging"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const/4 v0, 0x0

    .line 341
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setCategory(I)V

    .line 343
    :cond_1
    return-void

    .line 334
    :cond_2
    const-string v1, "BatteryLow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    const/4 v0, 0x1

    goto :goto_0

    .line 336
    :cond_3
    const-string v1, "BatteryFull"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    const/4 v0, 0x2

    goto :goto_0

    .line 338
    :cond_4
    const-string v1, "Normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setCenterX(I)V
    .locals 2
    .parameter "centerX"

    .prologue
    .line 225
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 227
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCenterX:I

    .line 228
    return-void
.end method

.method public setCenterX(Ljava/lang/String;)V
    .locals 1
    .parameter "centerX"

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setCenterX(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public setCenterY(I)V
    .locals 2
    .parameter "centerY"

    .prologue
    .line 242
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 244
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mCenterY:I

    .line 245
    return-void
.end method

.method public setCenterY(Ljava/lang/String;)V
    .locals 1
    .parameter "centerY"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setCenterY(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public setH(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 208
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 210
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mHeight:I

    .line 211
    return-void
.end method

.method public setH(Ljava/lang/String;)V
    .locals 1
    .parameter "height"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setH(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mName:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setOnTimeTick(Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;)V
    .locals 0
    .parameter "onTimeTick"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;

    .line 712
    return-void
.end method

.method public setParentElement(Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    .line 464
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    .line 639
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 642
    :cond_0
    return-void
.end method

.method public setVisibility(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mVisibility:Ljava/lang/Boolean;

    .line 352
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->startAnimations()V

    .line 363
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x1

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 367
    :cond_1
    return-void

    .line 358
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->clearAnimations()V

    goto :goto_0

    .line 364
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 370
    const-string v2, "toggle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 390
    :goto_1
    return-void

    .line 371
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 376
    :cond_1
    const/4 v1, 0x1

    .line 377
    .local v1, v:Z
    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    :cond_2
    const/4 v1, 0x0

    .line 389
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/BaseElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 381
    :cond_4
    :try_start_0
    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setW(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 191
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 193
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mWidth:I

    .line 194
    return-void
.end method

.method public setW(Ljava/lang/String;)V
    .locals 1
    .parameter "width"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setW(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public setX(I)V
    .locals 5
    .parameter "posX"

    .prologue
    const/4 v4, 0x1

    .line 99
    int-to-float v2, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 101
    iget v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mFlag:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 102
    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->getX()I

    move-result v2

    sub-int/2addr p1, v2

    .line 107
    :cond_0
    iget v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mX:I

    if-ne v2, p1, :cond_2

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mX:I

    .line 112
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 116
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 117
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 122
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 119
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v2, p1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "posX"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setX(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public setY(I)V
    .locals 5
    .parameter "posY"

    .prologue
    const/4 v4, 0x1

    .line 140
    int-to-float v2, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 142
    iget v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mFlag:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 143
    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mParentElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->getY()I

    move-result v2

    sub-int/2addr p1, v2

    .line 148
    :cond_0
    iget v2, p0, Lcom/baidu/themeanimation/element/BaseElement;->mY:I

    if-ne v2, p1, :cond_2

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iput p1, p0, Lcom/baidu/themeanimation/element/BaseElement;->mY:I

    .line 153
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 158
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 159
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 161
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v2, p1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "posY"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/BaseElement;->setY(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public sortAnimations()V
    .locals 5

    .prologue
    .line 519
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v2, tempAnimationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    check-cast v0, Lcom/baidu/themeanimation/element/BaseAnimationElement;

    .line 524
    .restart local v0       #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/baidu/themeanimation/element/PositionAnimationElement;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 531
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    check-cast v0, Lcom/baidu/themeanimation/element/BaseAnimationElement;

    .line 532
    .restart local v0       #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 533
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    .end local v1           #i:I
    .end local v2           #tempAnimationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_2
    return-void
.end method

.method public startAnimations()V
    .locals 6

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v3

    .line 542
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 543
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 544
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->sortAnimations()V

    .line 546
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 547
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    .line 548
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 549
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 556
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationElements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseAnimationElement;

    .line 559
    .local v1, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement;->generateAnimations(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 560
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 562
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    .end local v2           #i:I
    :cond_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 569
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v4, :cond_3

    .line 570
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v4, v3}, Lcom/baidu/themeanimation/element/AnimatorParser;->generateAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 571
    iget-object v4, p0, Lcom/baidu/themeanimation/element/BaseElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimatorParser;->startAnimations()V

    .line 574
    :cond_3
    return-void
.end method

.method public translateAnimationStage(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lcom/baidu/themeanimation/element/BaseElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getX()I

    move-result v2

    add-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 724
    sget-object v0, Lcom/baidu/themeanimation/element/BaseElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/BaseElement;->getY()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 727
    :cond_0
    return-void
.end method
