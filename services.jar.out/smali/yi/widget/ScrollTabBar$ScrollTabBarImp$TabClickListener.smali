.class Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/ScrollTabBar$ScrollTabBarImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;


# direct methods
.method private constructor <init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Lyi/widget/ScrollTabBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;-><init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 435
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 436
    .local v2, index:I
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v4

    .line 437
    .local v4, oldSelected:Z
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar$Tab;->select()V

    .line 438
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 439
    .local v7, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 440
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v8, v9

    .line 441
    goto :goto_1

    .line 444
    .end local v0           #child:Landroid/view/View;
    :cond_1
    if-eqz v4, :cond_2

    .line 445
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    if-eqz v8, :cond_3

    .line 446
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnClickListener;

    .line 448
    .local v5, onActionTabClickListener:Landroid/view/View$OnClickListener;
    if-eqz v5, :cond_3

    .line 449
    invoke-interface {v5, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 468
    .end local v5           #onActionTabClickListener:Landroid/view/View$OnClickListener;
    :cond_2
    :goto_2
    return-void

    .line 454
    :cond_3
    iget-object v8, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v8, v8, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 455
    .local v6, scrollContentView:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 456
    instance-of v8, v6, Landroid/widget/ScrollView;

    if-eqz v8, :cond_4

    .line 457
    check-cast v6, Landroid/widget/ScrollView;

    .end local v6           #scrollContentView:Landroid/view/View;
    invoke-virtual {v6, v9, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_2

    .line 458
    .restart local v6       #scrollContentView:Landroid/view/View;
    :cond_4
    instance-of v8, v6, Landroid/widget/AbsListView;

    if-eqz v8, :cond_2

    move-object v3, v6

    .line 459
    check-cast v3, Landroid/widget/AbsListView;

    .line 460
    .local v3, listView:Landroid/widget/AbsListView;
    invoke-virtual {v3, v9}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_2
.end method
