.class final Lcom/lewa/widget/Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/widget/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 161
    #calls: Lcom/lewa/widget/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/lewa/widget/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 162
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 156
    #calls: Lcom/lewa/widget/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/lewa/widget/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 157
    return-void
.end method
