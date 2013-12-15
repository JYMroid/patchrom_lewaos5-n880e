.class abstract Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.super Ljava/lang/Object;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;
    }
.end annotation


# instance fields
.field public obj:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 0
    .parameter "oldState"

    .prologue
    .line 299
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V
    .locals 3
    .parameter "v"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 310
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    if-ne p2, v0, :cond_1

    .line 311
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$300()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 313
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    if-ne p2, v0, :cond_2

    .line 315
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 316
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_2
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    if-ne p2, v0, :cond_3

    .line 318
    const v0, 0x3e99999a

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 319
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_3
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    if-ne p2, v0, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 322
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;Z)V
    .locals 3
    .parameter "v"
    .parameter "state"
    .parameter "ring"

    .prologue
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 328
    if-eqz p3, :cond_0

    .line 329
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 331
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
