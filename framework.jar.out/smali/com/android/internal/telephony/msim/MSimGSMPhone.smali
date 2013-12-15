.class public Lcom/android/internal/telephony/msim/MSimGSMPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "MSimGSMPhone.java"


# static fields
.field private static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field private static final CALL_FORWARD_NOTIFICATION_SUB2:I = 0x15


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;

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
    .line 66
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/msim/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 67
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

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 55
    iput-object v4, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    .line 74
    iput p5, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    .line 76
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimGSMPhone: constructor: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mVmNumGsmKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mVmNumGsmKey:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mVmCountKey:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mVmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mVmId:Ljava/lang/String;

    .line 85
    new-instance v1, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 88
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setProperties()V

    .line 94
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 125
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIPTION ACTIVATED : slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setProperties()V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->onUpdateIccAvailability()V

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->updateRecords()V

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 143
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 1

    .prologue
    .line 146
    const-string v0, "SUBSCRIPTION DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->resetSubSpecifics()V

    .line 149
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 100
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 101
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unregisterForSubscriptionActivated(ILandroid/os/Handler;)V

    .line 102
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V

    .line 103
    return-void
.end method

.method protected getCallForwardingPreference()Z
    .locals 5

    .prologue
    .line 304
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get callforwarding info from perferences for sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_enabled_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 309
    .local v0, cf:Z
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CF enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, operatorNumeric:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccRecords;

    .line 239
    .local v1, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    return v0
.end method

.method public getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mUiccController:Lcom/android/internal/telephony/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_0
    return-void

    .line 109
    :pswitch_0
    const-string v0, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->onSubscriptionActivated()V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v0, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initSubscriptionSpecifics()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 183
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method public resetSubSpecifics()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mImei:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mImeiSv:Ljava/lang/String;

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setVoiceMessageCount(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallForwardingIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    if-nez v1, :cond_1

    const/4 v0, 0x6

    .line 158
    .local v0, notificationId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    .end local v0           #notificationId:I
    :cond_0
    return-void

    .line 156
    :cond_1
    const/16 v0, 0x15

    goto :goto_0
.end method

.method protected setCallForwardingPreference(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 291
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set callforwarding info to perferences for sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 294
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_enabled_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 225
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    return v0
.end method

.method protected setProperties()V
    .locals 4

    .prologue
    .line 189
    const-string v0, "gsm.current.phone-type"

    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .parameter "imsi"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 280
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 320
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 8

    .prologue
    .line 251
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    .line 252
    .local v0, currentDds:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, operatorNumeric:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCurrentCarrierInProvider: mSubscription = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

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

    .line 257
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 259
    :try_start_0
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "current"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 260
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v2, map:Landroid/content/ContentValues;
    const-string/jumbo v5, "numeric"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v5, 0x1

    .line 268
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return v5

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Landroid/database/SQLException;
    const-string v5, "GSM"

    const-string v6, "Can\'t store current operator"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v1           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->update()V

    .line 220
    return-void
.end method
