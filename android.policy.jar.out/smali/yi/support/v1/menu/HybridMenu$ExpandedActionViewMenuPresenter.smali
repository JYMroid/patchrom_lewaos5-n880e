.class Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;
.super Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;
.source "HybridMenu.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field protected final USE_ANIMAION:Z

.field mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field protected mInAnimationFuture:Landroid/view/animation/Animation;

.field mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

.field protected mOutAnimationFuture:Landroid/view/animation/Animation;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenu;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/HybridMenu;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;-><init>(Lyi/support/v1/menu/HybridMenu;)V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->USE_ANIMAION:Z

    .line 407
    new-instance v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$1;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$1;-><init>(Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/HybridMenu;Lyi/support/v1/menu/HybridMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;-><init>(Lyi/support/v1/menu/HybridMenu;)V

    return-void
.end method

.method private startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "view"
    .parameter "animation"

    .prologue
    .line 595
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 525
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->reloadVolatile()V

    .line 527
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->this$0:Lyi/support/v1/menu/HybridMenu;

    #getter for: Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu;->access$500(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenuPanel;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x50a000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mOutAnimationFuture:Landroid/view/animation/Animation;

    .line 528
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mOutAnimationFuture:Landroid/view/animation/Animation;

    new-instance v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;

    invoke-direct {v1, p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;-><init>(Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 574
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, v1}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 575
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/yi/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 9
    .parameter "menu"
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 476
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->this$0:Lyi/support/v1/menu/HybridMenu;

    #getter for: Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenu;->access$500(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenuPanel;

    move-result-object v1

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x50a000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mInAnimationFuture:Landroid/view/animation/Animation;

    .line 477
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->reloadVolatile()V

    .line 478
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    invoke-virtual {p2}, Lcom/yi/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, bSearchView:Z
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Lyi/widget/SearchView;

    if-eqz v1, :cond_0

    .line 483
    const/4 v0, 0x1

    .line 484
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Lyi/widget/SearchView;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v8}, Lyi/widget/SearchView;->showSearchBackIcon(Landroid/view/View$OnClickListener;Z)V

    .line 486
    :cond_0
    if-eqz v0, :cond_1

    .line 487
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 489
    :cond_1
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v2, "mExpandedActionView"

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lyi/support/v1/utils/Reflection;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 491
    if-nez v0, :cond_2

    .line 492
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    const-string v2, "setIcon"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lyi/support/v1/utils/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_2
    iput-object p2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 494
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    if-eq v1, v2, :cond_3

    .line 495
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->addView(Landroid/view/View;)V

    .line 497
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    if-eq v1, v2, :cond_4

    .line 498
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->addView(Landroid/view/View;)V

    .line 500
    :cond_4
    if-nez v0, :cond_9

    .line 501
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mHomeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    :cond_5
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 504
    :cond_6
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 505
    :cond_7
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :cond_8
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->requestLayout()V

    .line 508
    :cond_9
    invoke-virtual {p2, v7}, Lcom/yi/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 510
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_b

    .line 511
    if-eqz v0, :cond_a

    .line 512
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50800e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-direct {p0, v1, v2}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 515
    :cond_a
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 517
    :cond_b
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->this$0:Lyi/support/v1/menu/HybridMenu;

    #calls: Lyi/support/v1/menu/HybridMenu;->onExpandItemActionView()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenu;->access$700(Lyi/support/v1/menu/HybridMenu;)V

    .line 518
    return v7
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView;
    .locals 1
    .parameter "root"

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 421
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    .line 424
    :cond_0
    iput-object p2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    .line 425
    return-void
.end method

.method public onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 467
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 592
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/yi/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/yi/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 458
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .parameter "cleared"

    .prologue
    .line 435
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, found:Z
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 439
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 440
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 441
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 442
    .local v3, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 443
    const/4 v1, 0x1

    .line 449
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 451
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    .line 454
    .end local v1           #found:Z
    :cond_1
    return-void

    .line 440
    .restart local v0       #count:I
    .restart local v1       #found:Z
    .restart local v2       #i:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
