.class Lcom/baidu/themeanimation/element/BaseElement$1;
.super Ljava/lang/Object;
.source "BaseElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/BaseElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/element/BaseElement;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement$1;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement$1;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    #getter for: Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/baidu/themeanimation/element/BaseElement;->access$100(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement$1;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement$1;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    #getter for: Lcom/baidu/themeanimation/element/BaseElement;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/baidu/themeanimation/element/BaseElement;->access$100(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
