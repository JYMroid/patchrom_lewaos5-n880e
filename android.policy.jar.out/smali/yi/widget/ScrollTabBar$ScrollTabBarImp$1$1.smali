.class Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iput-object p2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->val$view:Landroid/view/ViewGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v0, v0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v1, v0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-ne v1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v0, v0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabContainerWidth:I

    .line 191
    iget-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v0, v0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v1, v1, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v2, v2, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v2, v2, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget v3, v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabContainerWidth:I

    iget-object v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->this$1:Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    iget-object v4, v4, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;->this$0:Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    iget-object v4, v4, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mViewPagerObj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->addCursorView(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1$1;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 199
    const/4 v0, 0x0

    return v0
.end method
