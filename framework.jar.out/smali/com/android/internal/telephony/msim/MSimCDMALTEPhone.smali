.class public Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.source "MSimCDMALTEPhone.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mSubscription:I

.field private mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "subscription"

    .prologue
    .line 84
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    .line 91
    iput p5, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    .line 93
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimCDMALTEPhone: constructor: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mVmNumCdmaKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mVmNumCdmaKey:Ljava/lang/String;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mVmCountKey:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 101
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 181
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIPTION ACTIVATED : slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setProperties()V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->onUpdateIccAvailability()V

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimCdmaLteServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCdmaLteServiceStateTracker;->updateCdmaSubscription()V

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->updateRecords()V

    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 199
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    const-string v0, "SUBSCRIPTION DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 204
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mImei:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mImeiSv:Ljava/lang/String;

    .line 206
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mMeid:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mEsn:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setVoiceMessageCount(I)V

    .line 209
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 210
    return-void
.end method

.method private setProperties()V
    .locals 6

    .prologue
    .line 235
    const-string v2, "gsm.current.phone-type"

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string/jumbo v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, operatorAlpha:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, operatorNumeric:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->updateCurrentCarrierInProvider()Z

    .line 251
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->dispose()V

    .line 156
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 157
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unregisterForSubscriptionActivated(ILandroid/os/Handler;)V

    .line 158
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V

    .line 159
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 395
    const-string v1, "CDMA"

    const-string v2, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-eqz p1, :cond_0

    .line 397
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 398
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 401
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    const-string v0, "CDMA"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v0, "0"

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    const-string v0, "CDMA"

    const-string v1, "IMEI is not available in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/IsimRecords;
    .locals 2

    .prologue
    .line 382
    const-string v0, "CDMA"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    const-string v0, "CDMA"

    const-string v1, "Error! getMsisdn() in MSimCDMALTEPhone should not be called, GSMPhone inactive."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, operatorNumeric:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 298
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v0

    .line 299
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCdmaSubscriptionSource:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    const-string v2, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mIccRecords = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    return v0
.end method

.method public getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->handleMessage(Landroid/os/Message;)V

    .line 177
    :goto_0
    return-void

    .line 165
    :pswitch_0
    const-string v0, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->onSubscriptionActivated()V

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 8
    .parameter "context"
    .parameter "notifier"

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 115
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1b

    invoke-static {p1, v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 118
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 119
    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 120
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x8

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v3, 0x13

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x19

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 133
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "CDMA"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIsPhoneInEcmState:Z

    .line 138
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIsPhoneInEcmState:Z

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 144
    :cond_0
    const-string/jumbo v2, "ro.cdma.otaspnumschema"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 148
    invoke-interface {p2, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->setProperties()V

    .line 150
    return-void
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/internal/telephony/msim/MSimCdmaLteServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/MSimCdmaLteServiceStateTracker;-><init>(Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 110
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 441
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimCDMALTEPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/UiccController;

    if-nez v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    .line 416
    .local v1, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/UiccCardApplication;

    .line 417
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 418
    if-eqz v0, :cond_3

    .line 419
    const-string v2, "Removing stale icc objects."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->unregisterForRuimRecordEvents()V

    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 424
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 426
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    .line 428
    :cond_3
    if-eqz v1, :cond_0

    .line 429
    const-string v2, "New Uicc application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 431
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->registerForRuimRecordEvents()V

    .line 434
    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "nonce"
    .parameter "result"

    .prologue
    .line 405
    const-string v0, "CDMA"

    const-string/jumbo v1, "requestIsimAuthentication() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "network"
    .parameter "response"

    .prologue
    .line 355
    const-string v1, "CDMA"

    const-string/jumbo v2, "selectNetworkManually: not possible in CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz p2, :cond_0

    .line 357
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 358
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 359
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 361
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method protected sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "sendEmergencyCallbackModeChange"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->log(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    return v0
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 350
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 8

    .prologue
    .line 322
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    .line 323
    .local v0, currentDds:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, operatorNumeric:Ljava/lang/String;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCurrentCarrierInProvider: mSubscription = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->getSubscription()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentDds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " operatorNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->getSubscription()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 330
    :try_start_0
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "current"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 331
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v2, map:Landroid/content/ContentValues;
    const-string/jumbo v5, "numeric"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const/4 v5, 0x1

    .line 339
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return v5

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Landroid/database/SQLException;
    const-string v5, "CDMA"

    const-string v6, "Can\'t store current operator"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v1           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCDMALTEPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->update()V

    .line 279
    return-void
.end method
