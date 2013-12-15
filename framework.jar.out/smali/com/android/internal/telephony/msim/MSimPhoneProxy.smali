.class public Lcom/android/internal/telephony/msim/MSimPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "MSimPhoneProxy.java"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    .line 49
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 172
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimPhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 180
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimPhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 184
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimPhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 168
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimPhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimPhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method


# virtual methods
.method protected createNewPhone(I)V
    .locals 1
    .parameter "newVoiceRadioTech"

    .prologue
    .line 60
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "MSimPhoneProxy: deleteAndCreatePhone: Creating MSimCDMALTEPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getMSimCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "MSimPhoneProxy: deleteAndCreatePhone: Creating MSimGsmPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getMSimGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 52
    new-instance v1, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 56
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendBroadcastStickyIntent()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, flag:Z
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    const-string v1, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->updateCurrentCarrierInProvider()Z

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->updateCurrentCarrierInProvider()Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "Updating Data Connection Tracker"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->updateDataConnectionTracker()V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->updateDataConnectionTracker()V

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
