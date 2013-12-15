.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateIdle"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>()V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 355
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 356
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 357
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 358
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1300()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 359
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1400()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 360
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1500()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 361
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 3
    .parameter "oldState"

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$500()Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->show()V

    .line 342
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setTransparent(Z)V

    .line 343
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->requestSingleLine(Z)V

    .line 344
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$700()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 345
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;Z)V

    goto :goto_0
.end method
