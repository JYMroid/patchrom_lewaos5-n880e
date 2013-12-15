.class public Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
.super Ljava/lang/Object;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/UnlockerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartPoint"
.end annotation


# instance fields
.field private final MIN_ENDPOINT_DIM:I

.field private mDeltaX:I

.field private mDeltaY:I

.field private mH:I

.field private mNormalElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalSound:Ljava/lang/String;

.field private mPressedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedSound:Ljava/lang/String;

.field private mReachedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mReachedSound:Ljava/lang/String;

.field private mStartPointView:Landroid/widget/RelativeLayout;

.field private mState:I

.field private mW:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    .line 303
    iput-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    .line 304
    iput-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    .line 349
    const/16 v0, 0x23

    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->MIN_ENDPOINT_DIM:I

    .line 491
    iput-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mState:I

    .line 307
    iput v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mX:I

    .line 308
    iput v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mY:I

    .line 309
    iput v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mW:I

    .line 310
    iput v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mH:I

    .line 311
    return-void
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 498
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 4

    .prologue
    .line 501
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 503
    .local v2, viewGroup:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 504
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_1
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 511
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    .line 514
    .end local v1           #i:I
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 515
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 516
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 517
    .local v0, element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 523
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 524
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 525
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 526
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 530
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 531
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 532
    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 533
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 536
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_5
    return-void
.end method

.method public dispatchCategoryChange(I)V
    .locals 3
    .parameter "category"

    .prologue
    .line 442
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 443
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 445
    .local v0, element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onCategoryChange(I)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 452
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 454
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onCategoryChange(I)V

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 458
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 459
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 461
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onCategoryChange(I)V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 464
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mH:I

    return v0
.end method

.method public getNormalElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    return-object v0
.end method

.method public getNormalSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalSound:Ljava/lang/String;

    return-object v0
.end method

.method public getPressedElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    return-object v0
.end method

.method public getPressedSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedSound:Ljava/lang/String;

    return-object v0
.end method

.method public getReachedElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    return-object v0
.end method

.method public getReachedSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedSound:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;ILandroid/os/Handler;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "state"
    .parameter "handler"

    .prologue
    const/4 v8, 0x0

    .line 539
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 540
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    .line 541
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    iget v6, v6, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v7

    iget v7, v7, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    :cond_0
    const/4 v1, 0x0

    .line 552
    .local v1, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    packed-switch p2, :pswitch_data_0

    .line 577
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 578
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    .end local v2           #i:I
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    .line 557
    iput v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mDeltaX:I

    .line 558
    iput v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mDeltaY:I

    goto :goto_0

    .line 562
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    .line 563
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 564
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    goto :goto_0

    .line 569
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    .line 570
    goto :goto_0

    .line 581
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 584
    iput p2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mState:I

    .line 586
    if-eqz v1, :cond_3

    .line 587
    const/4 v3, 0x0

    .line 588
    .local v3, view:Landroid/view/View;
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getCategoryValue()I

    move-result v0

    .line 589
    .local v0, category:I
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 590
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v4, p1, p3}, Lcom/baidu/themeanimation/element/BaseElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v3

    .line 591
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v4, v0}, Lcom/baidu/themeanimation/element/BaseElement;->onCategoryChange(I)V

    .line 592
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 596
    .end local v0           #category:I
    .end local v3           #view:Landroid/view/View;
    :cond_3
    iget v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mDeltaX:I

    iget v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mDeltaY:I

    invoke-virtual {p0, v4, v5}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->moveBy(II)V

    .line 598
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 600
    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mStartPointView:Landroid/widget/RelativeLayout;

    return-object v4

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mW:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mY:I

    return v0
.end method

.method public moveBy(II)V
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 724
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mDeltaX:I

    .line 725
    iput p2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mDeltaY:I

    .line 726
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mState:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->moveBy(III)V

    .line 727
    return-void
.end method

.method public moveBy(III)V
    .locals 8
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "state"

    .prologue
    const/4 v7, 0x1

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    packed-switch p3, :pswitch_data_0

    .line 688
    :goto_0
    const/4 v3, 0x0

    .line 689
    .local v3, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_7

    .line 690
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 691
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 692
    .local v0, element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v4

    .line 693
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 694
    .restart local v3       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 695
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getX()I

    move-result v5

    add-int/2addr v5, p1

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 696
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getY()I

    move-result v5

    add-int/2addr v5, p2

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 701
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 702
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 707
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 708
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 713
    :cond_1
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 659
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v2           #i:I
    .end local v3           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #view:Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    .line 660
    goto :goto_0

    .line 663
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    if-nez v5, :cond_2

    .line 664
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    goto :goto_0

    .line 666
    :cond_2
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    .line 669
    goto :goto_0

    .line 672
    :pswitch_2
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 673
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    goto :goto_0

    .line 675
    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 676
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    goto :goto_0

    .line 678
    :cond_4
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    .line 681
    goto :goto_0

    .line 703
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    .restart local v2       #i:I
    .restart local v3       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #view:Landroid/view/View;
    :cond_5
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 704
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 709
    :cond_6
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 710
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 716
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v2           #i:I
    .end local v4           #view:Landroid/view/View;
    :cond_7
    return-void

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 470
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 472
    .local v0, element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 477
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 479
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 483
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 484
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 485
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/BaseElement;

    .line 486
    .restart local v0       #element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 489
    .end local v0           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 631
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, elements:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;>;"
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 640
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 642
    .local v0, baseElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    if-eqz v0, :cond_0

    .line 643
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 644
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    .line 646
    .local v1, element:Lcom/baidu/themeanimation/element/BaseElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->reset()V

    .line 643
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 639
    .end local v1           #element:Lcom/baidu/themeanimation/element/BaseElement;
    .end local v4           #j:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    .end local v0           #baseElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    :cond_1
    return-void
.end method

.method public setH(I)V
    .locals 3
    .parameter "h"

    .prologue
    .line 371
    int-to-float v1, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 373
    move v0, p1

    .line 374
    .local v0, th:I
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 375
    const/16 v0, 0x23

    .line 377
    :cond_0
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mH:I

    .line 378
    return-void
.end method

.method public setH(Ljava/lang/String;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setH(I)V

    .line 382
    return-void
.end method

.method public setNormalElements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, normalElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    .line 421
    return-void
.end method

.method public setNormalSound(Ljava/lang/String;)V
    .locals 0
    .parameter "normalSound"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalSound:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setPressedElements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, pressedElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    .line 429
    return-void
.end method

.method public setPressedSound(Ljava/lang/String;)V
    .locals 0
    .parameter "pressedSound"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedSound:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setReachedElements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, reachedElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    .line 437
    return-void
.end method

.method public setReachedSound(Ljava/lang/String;)V
    .locals 0
    .parameter "reachedSound"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedSound:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setW(I)V
    .locals 3
    .parameter "w"

    .prologue
    .line 352
    int-to-float v1, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 354
    move v0, p1

    .line 355
    .local v0, tw:I
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 356
    const/16 v0, 0x23

    .line 358
    :cond_0
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mW:I

    .line 359
    return-void
.end method

.method public setW(Ljava/lang/String;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setW(I)V

    .line 363
    return-void
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 319
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 321
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mX:I

    .line 323
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setX(I)V

    .line 327
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 335
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 337
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mY:I

    .line 339
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setY(I)V

    .line 343
    return-void
.end method

.method public startAnimations(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    packed-switch p1, :pswitch_data_0

    .line 622
    :goto_0
    if-eqz v0, :cond_0

    .line 623
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 624
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->startAnimations()V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 607
    .end local v1           #i:I
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mNormalElements:Ljava/util/List;

    .line 608
    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mPressedElements:Ljava/util/List;

    .line 612
    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->mReachedElements:Ljava/util/List;

    .line 616
    goto :goto_0

    .line 627
    :cond_0
    return-void

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
