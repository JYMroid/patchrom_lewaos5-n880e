.class public Lcom/android/internal/telephony/msim/MSimIccCardProxy;
.super Lcom/android/internal/telephony/IccCardProxy;
.source "MSimIccCardProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_MSimIccCardProxy"


# instance fields
.field private mCardIndex:Ljava/lang/Integer;

.field private mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "cardIndex"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 68
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 69
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 74
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 78
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 84
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 85
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 155
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateIccAvailability()V

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateStateProperty()V

    .line 160
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateIccAvailability()V

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateStateProperty()V

    .line 167
    return-void
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 237
    const-string v2, "broadcastIccStateChangedIntent: Card Index is not set; Return!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 242
    .local v1, subId:I
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mQuietMode:Z

    if-eqz v2, :cond_1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v2, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for subscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 91
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 95
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 97
    :sswitch_0
    const-string v5, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->onSubscriptionActivated()V

    goto :goto_0

    .line 102
    :sswitch_1
    const-string v5, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 107
    :sswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, operator:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v4, v6, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 111
    .local v4, sub:I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SUB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 113
    if-eqz v3, :cond_5

    .line 114
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6, v4, v3}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    iget v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v6, v8, :cond_1

    .line 117
    const-string v6, "gsm.apn.sim.operator.numeric"

    invoke-static {v6, v4, v3}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 122
    const-string v5, "gsm.sim.operator.iso-country"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :cond_2
    :goto_2
    const-string v5, "LOADED"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v3       #operator:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 109
    goto :goto_1

    .line 126
    .restart local v1       #countryCode:Ljava/lang/String;
    .restart local v4       #sub:I
    :cond_4
    const-string v5, "EVENT_RECORDS_LOADED Country code is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    .end local v1           #countryCode:Ljava/lang/String;
    :cond_5
    const-string v5, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :sswitch_3
    iget v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v6, :cond_0

    .line 137
    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 138
    .restart local v4       #sub:I
    :goto_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 139
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, eventCode:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 141
    const-string v5, "gsm.sim.operator.alpha"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #eventCode:I
    .end local v4           #sub:I
    :cond_6
    move v4, v5

    .line 137
    goto :goto_3

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 283
    const-string v0, "RIL_MSimIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CardIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 288
    const-string v0, "RIL_MSimIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CardIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method protected registerUiccCardEvents()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 201
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 202
    const-string v0, "gsm.apn.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V
    .locals 3
    .parameter "newState"
    .parameter "override"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 263
    const-string/jumbo v0, "setExternalState: Card Index is not set; Return!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v0, :cond_0

    .line 270
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 271
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->getIntentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method protected unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected updateIccAvailability()V
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccController:Lcom/android/internal/telephony/UiccController;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 173
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 174
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 175
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 176
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 179
    iget v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 187
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_2

    .line 188
    :cond_1
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->unregisterUiccCardEvents()V

    .line 190
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 191
    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 192
    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->registerUiccCardEvents()V

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateActiveRecord()V

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateExternalState()V

    .line 198
    return-void

    .line 184
    :cond_3
    const-string v4, "No card available"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
