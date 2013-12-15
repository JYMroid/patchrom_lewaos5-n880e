.class final Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$1;
.super Landroid/os/Handler;
.source "HotwordLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    const-string v0, "HotwordKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;

    iget v2, v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->level:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;

    iget v0, v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->plugged:I

    invoke-virtual {v1, v2, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onPowerUpdate(II)V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onSmsUnreadUpdated(I)V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onWordListAvaliable(Z)V

    .line 70
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$100()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onWordListAvaliable(Z)V

    .line 75
    :goto_1
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$100()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onWordListAvaliable(Z)V

    .line 73
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$100()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onWordListAvaliable(Z)V

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
