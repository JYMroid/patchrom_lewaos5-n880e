.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateTouch"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>()V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    .line 385
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;Z)V

    .line 386
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 387
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 388
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1300()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 389
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1400()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 390
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1500()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 391
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 397
    :goto_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 400
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 395
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 372
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 373
    #calls: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1800()V

    .line 375
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$500()Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->hide()V

    .line 376
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setTransparent(Z)V

    .line 377
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->requestSingleLine(Z)V

    .line 378
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 381
    :cond_1
    return-void
.end method
