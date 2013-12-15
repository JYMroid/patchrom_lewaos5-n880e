.class Lyi/widget/ScrollTabBar$ScrollTabBarImp;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"

# interfaces
.implements Lyi/widget/ScrollTabBar$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/ScrollTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollTabBarImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;
    }
.end annotation


# static fields
.field private static final SCROLLING_HORIZONTAL_VIEW_NAME:Ljava/lang/String; = "com.android.internal.widget.ScrollingTabContainerView"


# instance fields
.field mActionbar:Landroid/app/ActionBar;

.field mAdapterCount:I

.field mBadgeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lyi/widget/BadgeView;",
            ">;"
        }
    .end annotation
.end field

.field mCursor:Landroid/widget/ImageView;

.field mCursorParent:Landroid/widget/FrameLayout;

.field mCursorWidth:I

.field mOnActionTabClickListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollContentViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mScrollView:Landroid/widget/HorizontalScrollView;

.field mSlidDrawableResLand:I

.field mSlidDrawableResPort:I

.field private mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

.field mTabContainerWidth:I

.field mTabLayout:Landroid/widget/LinearLayout;

.field mViewPagerObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 1
    .parameter "activity"
    .parameter "viewPagerObj"

    .prologue
    const v0, 0x5080101

    .line 106
    invoke-direct {p0, p1, p2, v0, v0}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;-><init>(Landroid/app/Activity;Ljava/lang/Object;II)V

    .line 107
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Object;I)V
    .locals 0
    .parameter "activity"
    .parameter "viewPagerObj"
    .parameter "slidDrawableRes"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;-><init>(Landroid/app/Activity;Ljava/lang/Object;II)V

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Object;II)V
    .locals 1
    .parameter "activity"
    .parameter "viewPagerObj"
    .parameter "slidDrawableResPort"
    .parameter "slidDrawableResLand"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mActionbar:Landroid/app/ActionBar;

    .line 128
    iput-object p2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mViewPagerObj:Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p2}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getAdapterCount(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mAdapterCount:I

    .line 130
    iput p3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableResPort:I

    .line 131
    iput p4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableResLand:I

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    .line 133
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->init(Landroid/app/Activity;)V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Object;IILyi/widget/ScrollTabBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;-><init>(Landroid/app/Activity;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$200(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->rebuildClickEventOnActionTab(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private getAdapterCount(Ljava/lang/Object;)I
    .locals 10
    .parameter "viewPagerObj"

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, count:I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 277
    .local v7, viewPagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v9, "getAdapter"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 278
    .local v5, getAdapterM:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 279
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    .local v1, adapterObj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 282
    .local v0, adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getCount"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 283
    .local v6, getCountM:Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 284
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 285
    .local v3, countObj:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 300
    .end local v0           #adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #adapterObj:Ljava/lang/Object;
    .end local v3           #countObj:Ljava/lang/Integer;
    .end local v5           #getAdapterM:Ljava/lang/reflect/Method;
    .end local v6           #getCountM:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 291
    :catch_0
    move-exception v4

    .line 292
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 294
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 296
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 298
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private getViewPagerCurrentItem(Ljava/lang/Object;)I
    .locals 9
    .parameter "viewPagerObj"

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, currentItem:I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 308
    .local v6, viewPagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v8, "getCurrentItem"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 309
    .local v5, getCurrentItemM:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 310
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 311
    .local v3, currentItemObj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 312
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 313
    .local v2, currentItemI:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 325
    .end local v2           #currentItemI:Ljava/lang/Integer;
    .end local v3           #currentItemObj:Ljava/lang/Object;
    .end local v5           #getCurrentItemM:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v4

    .line 317
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 319
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 321
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 323
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private rebuildClickEventOnActionTab(Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "tabLayout"

    .prologue
    .line 399
    iput-object p1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    .line 400
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 401
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    if-nez v3, :cond_0

    .line 402
    new-instance v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;-><init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Lyi/widget/ScrollTabBar$1;)V

    iput-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    .line 404
    :cond_0
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 405
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 406
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #tabCount:I
    :cond_1
    return-void
.end method

.method private showBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)V
    .locals 2
    .parameter "activity"
    .parameter "position"
    .parameter "targetResId"
    .parameter "text"

    .prologue
    .line 532
    invoke-virtual {p0, p1, p2, p3, p4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)Lyi/widget/BadgeView;

    move-result-object v0

    .line 534
    .local v0, badge:Lyi/widget/BadgeView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyi/widget/BadgeView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/widget/BadgeView;->show(Z)V

    .line 536
    :cond_0
    return-void
.end method


# virtual methods
.method addCursorView(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 7
    .parameter "context"
    .parameter "cursorParent"
    .parameter "tabContainerWidth"
    .parameter "viewPagerObj"

    .prologue
    const/16 v6, 0x50

    .line 337
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 338
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    .line 339
    :cond_0
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getOrientation(Landroid/content/Context;)I

    move-result v0

    .line 342
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 347
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    iget v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableResPort:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    :goto_0
    iget v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mAdapterCount:I

    .line 352
    .local v3, tabCount:I
    invoke-direct {p0, p4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getViewPagerCurrentItem(Ljava/lang/Object;)I

    move-result v2

    .line 353
    .local v2, selectedTabIndex:I
    div-int v4, p3, v3

    iput v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    .line 354
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 357
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_1

    .line 358
    const/16 v4, 0x55

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 367
    :goto_1
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-void

    .line 344
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #selectedTabIndex:I
    .end local v3           #tabCount:I
    :pswitch_0
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    iget v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableResLand:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 359
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2       #selectedTabIndex:I
    .restart local v3       #tabCount:I
    :cond_1
    if-lez v2, :cond_2

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_2

    .line 360
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 361
    iget v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 363
    :cond_2
    const/16 v4, 0x53

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 364
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 342
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getActionContainerView(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter "activity"

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 393
    .local v0, decorView:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 395
    .local v1, resId:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    return-object v2
.end method

.method public getBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)Lyi/widget/BadgeView;
    .locals 4
    .parameter "activity"
    .parameter "position"
    .parameter "targetResId"
    .parameter "text"

    .prologue
    .line 619
    iget-object v2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/widget/BadgeView;

    .line 620
    .local v0, badge:Lyi/widget/BadgeView;
    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0, p1, p2, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getTargetView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v1

    .line 623
    .local v1, target:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 624
    new-instance v0, Lyi/widget/BadgeView;

    .end local v0           #badge:Lyi/widget/BadgeView;
    invoke-direct {v0, p1, v1, p2, p3}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 625
    .restart local v0       #badge:Lyi/widget/BadgeView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lyi/widget/BadgeView;->setContainerMatchParent(Z)V

    .line 626
    iget-object v2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .end local v1           #target:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0, p4}, Lyi/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :cond_1
    return-object v0
.end method

.method getHorizontalScrollView(Landroid/content/Context;Landroid/widget/FrameLayout;)Landroid/widget/HorizontalScrollView;
    .locals 11
    .parameter "context"
    .parameter "containerView"

    .prologue
    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, hScrollView:Landroid/widget/HorizontalScrollView;
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->hasEmbeddedTabs(Landroid/content/Context;)Z

    move-result v5

    .line 244
    .local v5, hasEmbeddedTabs:Z
    if-eqz p2, :cond_0

    .line 245
    if-eqz v5, :cond_2

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "action_bar"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, actionBarId:I
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 249
    .local v1, actionBarView:Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 250
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, childView:Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, className:Ljava/lang/String;
    const-string v7, "com.android.internal.widget.ScrollingTabContainerView"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v2

    .line 253
    check-cast v4, Landroid/widget/HorizontalScrollView;

    .line 270
    .end local v0           #actionBarId:I
    .end local v1           #actionBarView:Landroid/view/ViewGroup;
    .end local v2           #childView:Landroid/view/View;
    .end local v3           #className:Ljava/lang/String;
    .end local v6           #i:I
    :cond_0
    :goto_1
    return-object v4

    .line 249
    .restart local v0       #actionBarId:I
    .restart local v1       #actionBarView:Landroid/view/ViewGroup;
    .restart local v2       #childView:Landroid/view/View;
    .restart local v3       #className:Ljava/lang/String;
    .restart local v6       #i:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 258
    .end local v0           #actionBarId:I
    .end local v1           #actionBarView:Landroid/view/ViewGroup;
    .end local v2           #childView:Landroid/view/View;
    .end local v3           #className:Ljava/lang/String;
    .end local v6           #i:I
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 259
    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .restart local v2       #childView:Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 261
    .restart local v3       #className:Ljava/lang/String;
    const-string v7, "rendayun"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyi/support/v1/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v7, "com.android.internal.widget.ScrollingTabContainerView"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v2

    .line 263
    check-cast v4, Landroid/widget/HorizontalScrollView;

    .line 264
    goto :goto_1

    .line 258
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method getOrientation(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method getTabView(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 5
    .parameter "tabParent"
    .parameter "position"
    .parameter "targetResId"

    .prologue
    .line 588
    const/4 v3, 0x0

    .line 589
    .local v3, tabView:Landroid/view/View;
    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 591
    .local v2, tabLayout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 592
    if-eqz p3, :cond_1

    .line 593
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 605
    .end local v2           #tabLayout:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-object v3

    .line 595
    .restart local v2       #tabLayout:Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 596
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 597
    .local v0, childView:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 598
    move-object v3, v0

    .line 599
    goto :goto_0

    .line 595
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getTargetView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 8
    .parameter "activity"
    .parameter "position"
    .parameter "targetResId"

    .prologue
    .line 556
    const/4 v4, 0x0

    .line 557
    .local v4, tabParent:Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getActionContainerView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getHorizontalScrollView(Landroid/content/Context;Landroid/widget/FrameLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    .line 559
    .local v3, scrollView:Landroid/widget/HorizontalScrollView;
    if-eqz v3, :cond_0

    .line 560
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 561
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 562
    instance-of v7, v5, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    move-object v4, v5

    .line 563
    check-cast v4, Landroid/view/ViewGroup;

    .line 578
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, p2, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getTabView(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    return-object v7

    .line 564
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    instance-of v7, v5, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    move-object v6, v5

    .line 565
    check-cast v6, Landroid/view/ViewGroup;

    .line 566
    .local v6, vp:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 567
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 568
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, childView:Landroid/view/View;
    instance-of v7, v1, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    move-object v4, v1

    .line 570
    check-cast v4, Landroid/view/ViewGroup;

    .line 571
    goto :goto_0

    .line 567
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method hasEmbeddedTabs(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_embed_tabs"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public hideBadgeView(I)V
    .locals 3
    .parameter "tabIndex"

    .prologue
    .line 543
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/widget/BadgeView;

    .line 544
    .local v0, badge:Lyi/widget/BadgeView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyi/widget/BadgeView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/widget/BadgeView;->hide(Z)V

    .line 547
    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getActionContainerView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 141
    .local v0, containerView:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, p1, v0}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getHorizontalScrollView(Landroid/content/Context;Landroid/widget/FrameLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    iput-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 144
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 146
    .local v3, view:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 147
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_1

    .line 148
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    if-ne v4, v3, :cond_0

    .line 149
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, tabView:Landroid/view/View;
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 151
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 152
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 153
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v2           #tabView:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    invoke-direct {v5, p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;-><init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 214
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #view:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 215
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 217
    :cond_2
    return-void
.end method

.method public onScrolled(IFI)V
    .locals 11
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    const/16 v10, 0x50

    const/4 v9, 0x0

    .line 478
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 479
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 481
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 482
    .local v4, screenWidth:I
    iget v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v6, p1

    iget v7, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v7, p3

    div-int/2addr v7, v4

    add-int v2, v6, v7

    .line 484
    .local v2, end:I
    iget v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mAdapterCount:I

    .line 485
    .local v5, tabCount:I
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    const-string v6, "ViewPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Viewpager:position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " positionOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " positionOffsetPixels = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " screenWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyi/support/v1/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {p2, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p3, :cond_2

    .line 491
    :cond_0
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 492
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 493
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    .line 505
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #end:I
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #screenWidth:I
    .end local v5           #tabCount:I
    :cond_1
    :goto_0
    return-void

    .line 494
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #end:I
    .restart local v3       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #screenWidth:I
    .restart local v5       #tabCount:I
    :cond_2
    invoke-static {p2, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_1

    if-nez p3, :cond_1

    .line 495
    add-int/lit8 v6, v5, -0x1

    if-ge p1, v6, :cond_3

    .line 496
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 497
    iget v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v6, p1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 498
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0

    .line 499
    :cond_3
    add-int/lit8 v6, v5, -0x1

    if-ne p1, v6, :cond_1

    .line 500
    const/16 v6, 0x55

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 501
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0
.end method

.method public setTabOnClickListener(ILandroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "positon"
    .parameter "scrollView"
    .parameter "l"

    .prologue
    .line 413
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 414
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    .line 417
    :cond_0
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 418
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    .line 421
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_2
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_3
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public showBadgeView(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "tabIndex"

    .prologue
    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->showBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)V

    .line 513
    return-void
.end method

.method public showBadgeView(Landroid/app/Activity;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "activity"
    .parameter "tabIndex"
    .parameter "text"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->showBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)V

    .line 522
    return-void
.end method
