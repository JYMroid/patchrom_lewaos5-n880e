.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final BLACKLIST:Ljava/lang/String; = "blacklist"

.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x16

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1a

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x18

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x19

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field public static OWNERFLAG:Z = false

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_RESEND_MUTE:I = 0xc

.field private static final PHONE_RINGBACK_TONE:I = 0xb

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGER_WAIT_FOR_QUERY:I = 0x65

.field private static final RINGTONE_INTEREPT_WAIT_TIME:I = 0x5dc

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final TIMEINTERCEPT:J = 0xbb8L

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final UPDATE_IN_CALL_NOTIFICATION:I = 0x1b

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private endTime:J

.field private isMatchOneRingCond:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSettings:Lcom/android/phone/CallFeaturesSetting;

.field private mShowIncallDelay:J

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private mSlotId:I

.field private mVoicePrivacyState:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 200
    sput-boolean v0, Lcom/android/phone/CallNotifier;->OWNERFLAG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 5
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 128
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 176
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 177
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 181
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 196
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isMatchOneRingCond:Z

    .line 199
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/phone/CallNotifier;->mShowIncallDelay:J

    .line 202
    iput v4, p0, Lcom/android/phone/CallNotifier;->mSlotId:I

    .line 393
    new-instance v2, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 223
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 224
    iget-object v2, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 225
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 227
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 229
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 236
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x0

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 245
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 247
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 249
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 252
    return-void

    .line 238
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 2206
    const/4 v0, 0x0

    .line 2207
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 2209
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 2210
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2214
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 2212
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2160
    const/4 v0, 0x0

    .line 2162
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2163
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2183
    :goto_0
    if-nez v0, :cond_4

    .line 2184
    const/4 v2, 0x0

    .line 2195
    :goto_1
    return-object v2

    .line 2170
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2172
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2174
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2176
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2179
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2186
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 2189
    .local v1, presentation:I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2192
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v2, v0

    .line 2195
    goto :goto_1
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2228
    if-nez p2, :cond_2

    .line 2229
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 2235
    .local v0, presentation:I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2236
    :cond_1
    return v0

    .line 2231
    .end local v0           #presentation:I
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2232
    .restart local v0       #presentation:I
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 545
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_0

    .line 549
    const-string v5, "CallNotifier"

    const-string v6, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_0
    return v4

    .line 556
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1
    move v4, v5

    .line 558
    goto :goto_0

    .line 562
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 564
    .local v2, provisioned:Z
    :goto_1
    if-nez v2, :cond_4

    .line 565
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: not provisioned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #provisioned:Z
    :cond_3
    move v2, v5

    .line 562
    goto :goto_1

    .line 570
    .restart local v2       #provisioned:Z
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 571
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_5

    move v0, v4

    .line 573
    .local v0, activateState:Z
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_6

    move v1, v4

    .line 575
    .local v1, dialogState:Z
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 577
    .local v3, spcState:Z
    if-eqz v3, :cond_7

    .line 578
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: OTA call is active"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v3           #spcState:Z
    :cond_5
    move v0, v5

    .line 571
    goto :goto_2

    .restart local v0       #activateState:Z
    :cond_6
    move v1, v5

    .line 573
    goto :goto_3

    .line 580
    .restart local v1       #dialogState:Z
    .restart local v3       #spcState:Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_a

    .line 585
    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 586
    :cond_9
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 587
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    move v4, v5

    .line 588
    goto :goto_0

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v3           #spcState:Z
    :cond_a
    move v4, v5

    .line 593
    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 7
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    .line 210
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 211
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/phone/CallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 216
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 214
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2240
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "r"

    .prologue
    const/16 v10, 0x17

    const/16 v9, 0x16

    const/4 v8, 0x0

    .line 1864
    invoke-virtual {p0, v9}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1865
    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1869
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v6, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1874
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1875
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1876
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1880
    :cond_1
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1881
    const-wide/16 v6, 0x4e20

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1885
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 1888
    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1892
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1893
    .local v0, infoCW:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 1894
    .local v1, isPresent:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1895
    :cond_2
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    .line 1896
    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 1897
    .local v5, uSignalType:I
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 1898
    .local v3, uAlertPitch:I
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 1899
    .local v4, uSignal:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1902
    :cond_3
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 1906
    .local v2, toneID:I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 1908
    .end local v2           #toneID:I
    .end local v3           #uAlertPitch:I
    .end local v4           #uSignal:I
    .end local v5           #uSignalType:I
    :cond_4
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 17

    .prologue
    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 1932
    .local v15, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v16, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_3

    .line 1934
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 1936
    .local v11, c:Lcom/android/internal/telephony/Connection;
    if-eqz v11, :cond_2

    .line 1937
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 1938
    .local v13, number:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 1939
    .local v5, presentation:I
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 1940
    .local v7, date:J
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .line 1941
    .local v9, duration:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v2, :cond_4

    const/4 v6, 0x3

    .line 1945
    .local v6, callLogType:I
    :goto_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 1947
    .local v14, o:Ljava/lang/Object;
    if-eqz v14, :cond_0

    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_5

    :cond_0
    move-object v3, v14

    .line 1948
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    .line 1955
    .end local v14           #o:Ljava/lang/Object;
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v3, v13, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1957
    .local v4, logNumber:Ljava/lang/String;
    if-eqz v3, :cond_6

    iget v12, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1958
    .local v12, newPresentation:I
    :goto_2
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "- onCdmaCallWaitingReject(): logNumber set to: "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, ", newPresentation value is: "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1961
    :cond_1
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v1 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 1966
    .local v1, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v2, v1}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1968
    const/4 v2, 0x3

    if-ne v6, v2, :cond_7

    .line 1970
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v8}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1977
    :goto_3
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 1981
    .end local v1           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #logNumber:Ljava/lang/String;
    .end local v5           #presentation:I
    .end local v6           #callLogType:I
    .end local v7           #date:J
    .end local v9           #duration:J
    .end local v12           #newPresentation:I
    .end local v13           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1983
    .end local v11           #c:Lcom/android/internal/telephony/Connection;
    :cond_3
    return-void

    .line 1941
    .restart local v5       #presentation:I
    .restart local v7       #date:J
    .restart local v9       #duration:J
    .restart local v11       #c:Lcom/android/internal/telephony/Connection;
    .restart local v13       #number:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1950
    .restart local v6       #callLogType:I
    .restart local v14       #o:Ljava/lang/Object;
    :cond_5
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v3, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .restart local v3       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1

    .restart local v4       #logNumber:Ljava/lang/String;
    :cond_6
    move v12, v5

    .line 1957
    goto :goto_2

    .line 1973
    .restart local v1       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .restart local v12       #newPresentation:I
    :cond_7
    const/16 v2, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_3
.end method

.method private onCfiChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 1449
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 679
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 680
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 681
    const/4 v0, 0x1

    .line 683
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    if-eqz v0, :cond_1

    .line 687
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const v1, 0x112a0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 704
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_0
    return-void

    .line 683
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 715
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 716
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1057
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 1064
    .local v0, entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    if-eqz v0, :cond_2

    .line 1065
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_0

    .line 1066
    const-string v1, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1085
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1084
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 1081
    :cond_2
    const-string v1, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 36
    .parameter "r"

    .prologue
    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/phone/CallNotifier;->endTime:J

    .line 1091
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1092
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/Connection;

    .line 1093
    .local v19, c:Lcom/android/internal/telephony/Connection;
    if-eqz v19, :cond_3

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDisconnect: cause = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", incoming = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", date = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1101
    :goto_0
    const/16 v18, 0x0

    .line 1102
    .local v18, autoretrySetting:I
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_0

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v12, "call_auto_retry"

    const/4 v15, 0x0

    invoke-static {v3, v12, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1108
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1110
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_1

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1115
    const/16 v3, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1116
    const/16 v3, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1118
    :cond_1
    const/16 v22, 0x0

    .line 1119
    .local v22, isOneRingIncomingCall:Z
    if-eqz v19, :cond_7

    .line 1120
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v27

    .line 1121
    .local v27, o:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v25

    .line 1122
    .local v25, newnumber:Ljava/lang/String;
    const-string v3, "blacklist"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1400
    .end local v25           #newnumber:Ljava/lang/String;
    .end local v27           #o:Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 1098
    .end local v18           #autoretrySetting:I
    .end local v22           #isOneRingIncomingCall:Z
    :cond_3
    const-string v3, "CallNotifier"

    const-string v12, "onDisconnect: null connection"

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    .restart local v18       #autoretrySetting:I
    .restart local v22       #isOneRingIncomingCall:Z
    .restart local v25       #newnumber:Ljava/lang/String;
    .restart local v27       #o:Ljava/lang/Object;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->getInstance(Landroid/content/Context;)Lcom/android/phone/LewaBlocker;

    move-result-object v24

    .line 1128
    .local v24, lewaBlocker:Lcom/android/phone/LewaBlocker;
    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/phone/LewaBlocker;->interceptSwitch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/LewaBlocker;->isBlockCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    goto :goto_1

    .line 1134
    :cond_5
    sget-boolean v3, Lcom/android/phone/CallNotifier;->OWNERFLAG:Z

    if-nez v3, :cond_1a

    .line 1135
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/phone/CallNotifier;->endTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier;->startTime:J

    move-wide/from16 v34, v0

    sub-long v15, v15, v34

    const-wide/16 v34, 0xbb8

    cmp-long v3, v15, v34

    if-gez v3, :cond_7

    if-eqz v24, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v12, v1}, Lcom/android/phone/LewaBlocker;->oneringblock(Lcom/android/internal/telephony/Call;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v12, "RingOnce"

    const/4 v15, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1, v12, v15}, Lcom/android/phone/LewaBlocker;->interceptCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/phone/LewaBlocker;->interceptNotifySwitch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1138
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.provider.lewa.intercept.notification"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v26, notifiyIntent:Landroid/content/Intent;
    const-string v3, "callCount"

    const/4 v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1140
    const-string v3, "number"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1143
    .end local v26           #notifiyIntent:Landroid/content/Intent;
    :cond_6
    const/16 v22, 0x1

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1152
    .end local v24           #lewaBlocker:Lcom/android/phone/LewaBlocker;
    .end local v25           #newnumber:Ljava/lang/String;
    .end local v27           #o:Ljava/lang/Object;
    :cond_7
    :goto_2
    if-eqz v19, :cond_1b

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDisconnect: cause = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", incoming = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", date = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 1157
    .local v30, pref:Landroid/content/SharedPreferences;
    const-string v3, "button_vibrate_outgoing"

    const/4 v12, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 1158
    .local v33, vibHangup:Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v15

    const-wide/16 v34, 0x0

    cmp-long v3, v15, v34

    if-lez v3, :cond_8

    if-eqz v33, :cond_8

    if-nez v22, :cond_8

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/16 v12, 0x3c

    const/16 v15, 0x64

    const/16 v16, 0x3c

    move/from16 v0, v16

    invoke-virtual {v3, v12, v15, v0}, Lcom/android/phone/PhoneApp;->vibrate(III)V

    .line 1178
    .end local v30           #pref:Landroid/content/SharedPreferences;
    .end local v33           #vibHangup:Z
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    .line 1179
    .local v31, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_1e

    .line 1180
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1183
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1184
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1195
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v3, :cond_a

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1201
    :cond_a
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1202
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 1203
    .local v14, number:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v14}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1204
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1205
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->handleOtaspDisconnect()V

    .line 1211
    .end local v14           #number:Ljava/lang/String;
    :cond_c
    const/16 v32, 0x0

    .line 1214
    .local v32, toneToPlay:I
    if-eqz v19, :cond_e

    .line 1215
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 1216
    .local v20, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_20

    .line 1217
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1218
    :cond_d
    const/16 v32, 0x2

    .line 1255
    .end local v20           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_e
    :goto_5
    if-nez v32, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v12, :cond_10

    if-eqz v19, :cond_10

    .line 1258
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 1259
    .restart local v20       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_10

    .line 1262
    :cond_f
    const/16 v32, 0x4

    .line 1263
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1268
    .end local v20           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v12, :cond_12

    .line 1271
    if-nez v32, :cond_11

    .line 1272
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1275
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    .line 1286
    :cond_12
    if-eqz v19, :cond_2

    .line 1287
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 1288
    .restart local v14       #number:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 1289
    .local v8, date:J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 1290
    .local v10, duration:J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 1291
    .restart local v20       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 1292
    .local v13, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v14, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v21

    .line 1296
    .local v21, isEmergencyNumber:Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1297
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_31

    const/4 v7, 0x3

    .line 1306
    .local v7, callLogType:I
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 1307
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1309
    .local v5, logNumber:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "- onDisconnect(): logNumber set to: xxxxxxx"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1316
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v6

    .line 1318
    .local v6, presentation:I
    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_14

    .line 1319
    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v3, :cond_14

    .line 1321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v3, :cond_14

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v3}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$700(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1331
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v12, 0x7f0b000f

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    .line 1336
    .local v28, okToLogEmergencyNumber:Z
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/16 v23, 0x1

    .line 1341
    .local v23, isOtaspNumber:Z
    :goto_7
    if-eqz v21, :cond_15

    if-eqz v28, :cond_34

    :cond_15
    if-nez v23, :cond_34

    const/16 v29, 0x1

    .line 1345
    .local v29, okToLogThisCall:Z
    :goto_8
    if-nez v22, :cond_16

    if-eqz v29, :cond_16

    .line 1346
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v2 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 1350
    .local v2, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1354
    .end local v2           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_16
    const/4 v3, 0x3

    if-ne v7, v3, :cond_17

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1365
    :cond_17
    if-eqz v32, :cond_18

    .line 1367
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v3, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1379
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v12, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v12, :cond_2

    :cond_19
    if-nez v21, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_2

    .line 1386
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v3, :cond_36

    .line 1387
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_35

    .line 1390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1391
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_1

    .line 1147
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v6           #presentation:I
    .end local v7           #callLogType:I
    .end local v8           #date:J
    .end local v10           #duration:J
    .end local v13           #phone:Lcom/android/internal/telephony/Phone;
    .end local v14           #number:Ljava/lang/String;
    .end local v20           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v21           #isEmergencyNumber:Z
    .end local v23           #isOtaspNumber:Z
    .end local v28           #okToLogEmergencyNumber:Z
    .end local v29           #okToLogThisCall:Z
    .end local v31           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v32           #toneToPlay:I
    .restart local v24       #lewaBlocker:Lcom/android/phone/LewaBlocker;
    .restart local v25       #newnumber:Ljava/lang/String;
    .restart local v27       #o:Ljava/lang/Object;
    :cond_1a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/CallNotifier;->OWNERFLAG:Z

    goto/16 :goto_2

    .line 1162
    .end local v24           #lewaBlocker:Lcom/android/phone/LewaBlocker;
    .end local v25           #newnumber:Ljava/lang/String;
    .end local v27           #o:Ljava/lang/Object;
    :cond_1b
    const-string v3, "CallNotifier"

    const-string v12, "onDisconnect: null connection"

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1186
    .restart local v31       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_1c
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1d

    const-string v3, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1187
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_4

    .line 1190
    :cond_1e
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1f

    const-string v3, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1191
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_4

    .line 1219
    .restart local v20       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v32       #toneToPlay:I
    :cond_20
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_22

    .line 1220
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_21

    const-string v3, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1221
    :cond_21
    const/16 v32, 0x3

    goto/16 :goto_5

    .line 1222
    :cond_22
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_23

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_25

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1225
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_24

    const-string v3, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1226
    :cond_24
    const/16 v32, 0xb

    goto/16 :goto_5

    .line 1227
    :cond_25
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_27

    .line 1228
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_26

    const-string v3, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1229
    :cond_26
    const/16 v32, 0x6

    goto/16 :goto_5

    .line 1230
    :cond_27
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_29

    .line 1231
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_28

    const-string v3, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1232
    :cond_28
    const/16 v32, 0x7

    goto/16 :goto_5

    .line 1233
    :cond_29
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_2b

    .line 1234
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_2a

    const-string v3, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1235
    :cond_2a
    const/16 v32, 0x8

    goto/16 :goto_5

    .line 1236
    :cond_2b
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_2d

    .line 1237
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_2c

    const-string v3, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1238
    :cond_2c
    const/16 v32, 0x9

    goto/16 :goto_5

    .line 1239
    :cond_2d
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_2f

    .line 1240
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_2e

    const-string v3, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1241
    :cond_2e
    const/16 v32, 0xd

    goto/16 :goto_5

    .line 1242
    :cond_2f
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_e

    .line 1243
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_30

    const-string v3, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1244
    :cond_30
    const/16 v32, 0x4

    goto/16 :goto_5

    .line 1297
    .restart local v8       #date:J
    .restart local v10       #duration:J
    .restart local v13       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v14       #number:Ljava/lang/String;
    .restart local v21       #isEmergencyNumber:Z
    :cond_31
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 1300
    :cond_32
    const/4 v7, 0x2

    .restart local v7       #callLogType:I
    goto/16 :goto_6

    .line 1336
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #logNumber:Ljava/lang/String;
    .restart local v6       #presentation:I
    .restart local v28       #okToLogEmergencyNumber:Z
    :cond_33
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 1341
    .restart local v23       #isOtaspNumber:Z
    :cond_34
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 1393
    .restart local v29       #okToLogThisCall:Z
    :cond_35
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_1

    .line 1396
    :cond_36
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_1
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 1763
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 1765
    .local v1, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_1

    .line 1766
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 1767
    .local v0, displayInfo:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1768
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 1771
    const/16 v2, 0x18

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1774
    .end local v0           #displayInfo:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onMwiChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1424
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_0

    .line 1430
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "r"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/phone/CallNotifier;->startTime:J

    .line 410
    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->isMatchOneRingCond:Z

    .line 411
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 412
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNewRingingConnection(): state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", conn = { "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " }"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 414
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 417
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 422
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 525
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 427
    const-string v2, "0000"

    .line 440
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 441
    const-string v8, "CallNotifier"

    const-string v9, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/LewaBlocker;->getInstance(Landroid/content/Context;)Lcom/android/phone/LewaBlocker;

    move-result-object v1

    .line 430
    .local v1, lewaBlocker:Lcom/android/phone/LewaBlocker;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v5, v3, v2, v10}, Lcom/android/phone/LewaBlocker;->block(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 432
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->stopRing()V

    goto :goto_0

    .line 436
    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Lcom/android/phone/LewaBlocker;->MatchOneRingBlockCondition(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 437
    iput-boolean v12, p0, Lcom/android/phone/CallNotifier;->isMatchOneRingCond:Z

    goto :goto_1

    .line 446
    .end local v1           #lewaBlocker:Lcom/android/phone/LewaBlocker;
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v8

    if-nez v8, :cond_5

    .line 447
    const-string v8, "CallNotifier"

    const-string v9, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 491
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v9, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 495
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 496
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 498
    :cond_6
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 499
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v8, "button_vibrate_outgoing"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 500
    .local v7, vibCallWaiting:Z
    if-eqz v7, :cond_7

    .line 501
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/16 v9, 0xc8

    const/16 v10, 0x12c

    const/16 v11, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/phone/PhoneApp;->vibrate(III)V

    .line 504
    :cond_7
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v8, :cond_8

    .line 505
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v12}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 506
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 510
    :cond_8
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_9

    const-string v8, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 511
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "r"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x1b

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 817
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 823
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v9, v6, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_e

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 826
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 827
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 828
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_0

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_2

    .line 831
    :cond_0
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v6, :cond_1

    .line 832
    const/16 v5, 0xa

    .line 833
    .local v5, toneToPlay:I
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 836
    .end local v5           #toneToPlay:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 838
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 846
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v8}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 850
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v4}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 852
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_8

    .line 854
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v6, :cond_4

    .line 855
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 856
    iput-object v13, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 861
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 865
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_5

    .line 866
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v9, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v6, v9}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 867
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v9, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v6, v9}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 876
    :cond_5
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 877
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->stopRing()V

    .line 892
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 894
    :cond_7
    invoke-virtual {p0, v12}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 895
    const/16 v0, 0x3e8

    .line 896
    .local v0, IN_CALL_NOTIFICATION_UPDATE_DELAY:I
    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v12, v9, v10}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 900
    .end local v0           #IN_CALL_NOTIFICATION_UPDATE_DELAY:I
    :cond_8
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_b

    .line 901
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 902
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v6, v9}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 905
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 906
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v6, :cond_9

    .line 907
    new-instance v6, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v6, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 910
    :cond_9
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_f

    .line 911
    :cond_a
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "emergency_tone"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 914
    iget v6, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v6, :cond_b

    .line 916
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v6, :cond_b

    .line 917
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v6}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$600(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 930
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_b
    :goto_1
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v7, :cond_c

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    .line 932
    :cond_c
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 933
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_d

    .line 936
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v6, :cond_d

    .line 937
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 938
    iput-object v13, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 942
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_d
    return-void

    .end local v3           #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_e
    move v6, v8

    .line 823
    goto/16 :goto_0

    .line 920
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v3       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_f
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_b

    .line 921
    iget v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v6, :cond_b

    .line 922
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v6, :cond_b

    .line 923
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v6}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$700(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto :goto_1
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2140
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2141
    .local v0, muteState:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2142
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2143
    return-void

    .line 2141
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2116
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2118
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2123
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2125
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2126
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2134
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2130
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "r"

    .prologue
    .line 1810
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 1811
    const-string v6, "CallNotifier"

    const-string v7, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1818
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 1821
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 1823
    .local v1, signalInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    .line 1824
    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 1825
    .local v0, isPresent:Z
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1826
    :cond_3
    if-eqz v0, :cond_0

    .line 1827
    iget v5, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 1828
    .local v5, uSignalType:I
    iget v3, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 1829
    .local v3, uAlertPitch:I
    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 1831
    .local v4, uSignal:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1834
    :cond_4
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 1839
    .local v2, toneID:I
    const/4 v6, 0x2

    if-ne v6, v5, :cond_5

    const/4 v6, 0x1

    if-eq v6, v4, :cond_0

    .line 1841
    :cond_5
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto/16 :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 722
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 724
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 725
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 728
    :cond_1
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 978
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 979
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 980
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 983
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 985
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 991
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1416
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1417
    return-void
.end method

.method private showIncomingCall()V
    .locals 3

    .prologue
    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 755
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/CallNotifier;->mShowIncallDelay:J

    .line 790
    new-instance v0, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iget-wide v1, p0, Lcom/android/phone/CallNotifier;->mShowIncallDelay:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    return-void

    .line 756
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 10
    .parameter "c"
    .parameter "date"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, p1, p0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 2012
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v9, :cond_3

    .line 2016
    iget-boolean v0, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_0

    .line 2019
    iget-object v8, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2024
    .local v8, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2025
    .local v1, name:Ljava/lang/String;
    iget-object v2, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2026
    .local v2, number:Ljava/lang/String;
    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_1

    .line 2027
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f070051

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2034
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 2042
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v8           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_1
    return-void

    .line 2028
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v8       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_2

    .line 2029
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f070050

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2031
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v3, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v8, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2040
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v8           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, shouldStartQuery:Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 613
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v2, :cond_0

    .line 614
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 615
    const/4 v1, 0x1

    .line 617
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    if-eqz v1, :cond_2

    .line 620
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 623
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 628
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_1

    .line 630
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v4, p0, v2}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 657
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-void

    .line 617
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 636
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 646
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    const v2, 0x112a1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 650
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 654
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 655
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method


# virtual methods
.method getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 2003
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 1996
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x65

    const/4 v4, 0x1

    .line 256
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 258
    :sswitch_0
    const-string v2, "RINGING... (new)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 259
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 260
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_0

    .line 266
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 269
    .local v0, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v2, :cond_3

    .line 271
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RINGING... (PHONE_INCOMING_RING event) isMatchOneRingCond="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->isMatchOneRingCond:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->isMatchOneRingCond:Z

    if-eqz v2, :cond_2

    .line 274
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 278
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 283
    :cond_3
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RING before NEW_RING, skipping"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 293
    :sswitch_3
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "DISCONNECT"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 294
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 298
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 302
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_0

    .line 310
    :sswitch_7
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 311
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 315
    :sswitch_8
    const-string v2, "CallNotifier"

    const-string v3, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 320
    :sswitch_9
    const-string v2, "CallNotifier"

    const-string v3, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 322
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 326
    :sswitch_a
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 328
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2, v4}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 329
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    .line 333
    :sswitch_b
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 334
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 338
    :sswitch_c
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 339
    :cond_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 343
    :sswitch_d
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "Received Display Info notification done event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 344
    :cond_9
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 348
    :sswitch_e
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 349
    :cond_a
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 353
    :sswitch_f
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 354
    :cond_b
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v2, :cond_0

    .line 355
    const/4 v1, 0x5

    .line 356
    .local v1, toneToPlay:I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 357
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 359
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 360
    :cond_c
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 365
    .end local v1           #toneToPlay:I
    :sswitch_10
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 366
    :cond_d
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v2, :cond_0

    .line 367
    const/4 v1, 0x5

    .line 368
    .restart local v1       #toneToPlay:I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 369
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 371
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 372
    :cond_e
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 377
    .end local v1           #toneToPlay:I
    :sswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 381
    :sswitch_12
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 385
    :sswitch_13
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_b
        0x7 -> :sswitch_c
        0x8 -> :sswitch_7
        0x9 -> :sswitch_f
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0x15 -> :sswitch_6
        0x16 -> :sswitch_9
        0x17 -> :sswitch_a
        0x18 -> :sswitch_d
        0x19 -> :sswitch_e
        0x1a -> :sswitch_8
        0x1b -> :sswitch_13
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1001
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1007
    .restart local p2
    :cond_1
    instance-of v0, p2, Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_0

    .line 1012
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1014
    const/4 v8, 0x0

    .line 1015
    .local v8, isQueryExecutionTimeOK:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1017
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1018
    const/4 v8, 0x1

    .line 1020
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    if-eqz v8, :cond_0

    .line 1025
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_4

    .line 1026
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1027
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1032
    :cond_4
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 1033
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1034
    :cond_5
    check-cast p2, Lcom/android/phone/CallNotifier;

    .end local p2
    iget-object v9, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1035
    .local v9, r:Lcom/android/phone/Ringer;
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v9, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1038
    .end local v9           #r:Lcom/android/phone/Ringer;
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0
.end method

.method restartRinger()V
    .locals 3

    .prologue
    .line 1475
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "restartRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1476
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1486
    :cond_1
    :goto_0
    return-void

    .line 1478
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1482
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1483
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 1484
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 1918
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 1919
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 1442
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1443
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1444
    return-void
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1464
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1466
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 1855
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1856
    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 1857
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 945
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 948
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 949
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 950
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 951
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 952
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 953
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 954
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 955
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 956
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 960
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 965
    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 968
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 970
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 971
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 974
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 975
    return-void
.end method
