.class Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/widget/ScrollTabBar$ScrollTabBarImp;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iput-object p2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 161
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 162
    .local v2, view:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .line 163
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 168
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    .line 169
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 174
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .local v1, params1:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v4, v4, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;

    invoke-direct {v4, p0, v2}, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;-><init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 202
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 203
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 204
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2           #view:Landroid/view/ViewGroup;
    #calls: Lyi/widget/ScrollTabBar$ScrollTabBarImp;->rebuildClickEventOnActionTab(Landroid/widget/LinearLayout;)V
    invoke-static {v3, v2}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->access$200(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Landroid/widget/LinearLayout;)V

    .line 207
    .end local v1           #params1:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 208
    return v6

    .line 171
    .restart local v2       #view:Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0
.end method
