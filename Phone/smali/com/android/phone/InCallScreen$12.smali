.class Lcom/android/phone/InCallScreen$12;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showHideMoreAnim(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3160
    iput-object p1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    iput-boolean p2, p0, Lcom/android/phone/InCallScreen$12;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mMoreAniming:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2102(Lcom/android/phone/InCallScreen;Z)Z

    .line 3164
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen$12;->val$isShow:Z

    if-nez v0, :cond_0

    .line 3165
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->tLayoutMore:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3167
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3170
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen$12;->val$isShow:Z

    if-nez v0, :cond_0

    .line 3171
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mMoreAniming:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2102(Lcom/android/phone/InCallScreen;Z)Z

    .line 3172
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->tLayoutMore:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3175
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3178
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 3181
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen$12;->val$isShow:Z

    if-eqz v0, :cond_0

    .line 3182
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mMoreAniming:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2102(Lcom/android/phone/InCallScreen;Z)Z

    .line 3183
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->tLayoutMore:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3186
    :cond_0
    return-void
.end method
