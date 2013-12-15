.class Lcom/android/phone/LewaCallCard$2;
.super Ljava/lang/Object;
.source "LewaCallCard.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaCallCard;->showHideCallPhotoAnim(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaCallCard;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/android/phone/LewaCallCard;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/android/phone/LewaCallCard$2;->this$0:Lcom/android/phone/LewaCallCard;

    iput-boolean p2, p0, Lcom/android/phone/LewaCallCard$2;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1612
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1615
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1618
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1621
    iget-boolean v0, p0, Lcom/android/phone/LewaCallCard$2;->val$isShow:Z

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/android/phone/LewaCallCard$2;->this$0:Lcom/android/phone/LewaCallCard;

    #getter for: Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->access$100(Lcom/android/phone/LewaCallCard;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    :cond_0
    return-void
.end method
