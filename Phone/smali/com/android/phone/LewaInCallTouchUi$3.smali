.class Lcom/android/phone/LewaInCallTouchUi$3;
.super Ljava/lang/Object;
.source "LewaInCallTouchUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaInCallTouchUi;

.field final synthetic val$object:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaInCallTouchUi;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi$3;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    iput-object p2, p0, Lcom/android/phone/LewaInCallTouchUi$3;->val$object:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$3;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v1}, Lcom/android/phone/LewaInCallTouchUi;->access$202(Lcom/android/phone/LewaInCallTouchUi;Z)Z

    .line 1221
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$3;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v1}, Lcom/android/phone/LewaInCallTouchUi;->access$202(Lcom/android/phone/LewaInCallTouchUi;Z)Z

    .line 1225
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1228
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$3;->val$object:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    return-void
.end method
