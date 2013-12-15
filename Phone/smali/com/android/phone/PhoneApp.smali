.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$7;,
        Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$TriVibRunnable;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field public static final ACTION_CALL_BACK_FROM_NOTIFICATION:Ljava/lang/String; = "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

.field public static final ACTION_SEND_SMS_FROM_NOTIFICATION:Ljava/lang/String; = "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

.field private static final ALLOWED_EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field public static final BLOCK_ADD_ACTION:Ljava/lang/String; = "com.lewa.intercept.action.ADD_BLOCK"

.field public static final BLOCK_ADD_WHITE_ACTION:Ljava/lang/String; = "com.lewa.intercept.action.ADD_WHITE_BLOCK"

.field public static final BLOCK_DEL_ACTION:Ljava/lang/String; = "com.lewa.intercept.action.DEL_BLOCK"

.field private static final CALL_ORIGIN_EXPIRATION_MILLIS:J = 0x7530L

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x0

.field private static final DEFAULT_CALL_ORIGIN_PACKAGE:Ljava/lang/String; = "com.android.contacts"

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field private static final EVENT_SIM_NETWORK_LOCKED:I = 0x3

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_START_SIP_SERVICE:I = 0x11

.field private static final EVENT_START_TENCENT_SDK:I = 0x1f

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field private static final LEWA_INTERCEPT_ADDTOBLACKLIST_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.addToBlacklist"

.field private static final LEWA_INTERCEPT_ADDTOWHITELIST_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.addToWhitelist"

.field private static final LEWA_INTERCEPT_DELETEALLBLACKFROMCACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.deleteAllBlackfromCache"

.field private static final LEWA_INTERCEPT_DELETEALLWHITEFROMCACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.deleteAllWhitefromCache"

.field private static final LEWA_INTERCEPT_DELETEBLACKFROMCACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.deleteBlackfromCache"

.field private static final LEWA_INTERCEPT_DELETEFROMBLACKLIST_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.deleteFromBlacklist"

.field private static final LEWA_INTERCEPT_DELETEFROMWHITELIST_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.deleteFromWhitelist"

.field private static final LEWA_INTERCEPT_DELETEWHITEFROMCACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.deleteWhitefromCache"

.field private static final LEWA_INTERCEPT_INSERTBLACK2CACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.insertBlack2Cache"

.field private static final LEWA_INTERCEPT_INSERTWHITE2CACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.insertWhite2Cache"

.field private static final LEWA_INTERCEPT_SAVE_MODE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.SAVE_MODE"

.field private static final LEWA_INTERCEPT_UPATEBLACKINCACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.updateBlackInCache"

.field private static final LEWA_INTERCEPT_UPATEWHITEINCACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.updateWhiteInCache"

.field private static final LEWA_INTERCEPT_UPDATE_SMART_LIB:Ljava/lang/String; = "android.provider.lewa.intercept.updateSmartLib"

.field private static final LEWA_INTERCEPT_UPDATE_SMART_LIB_RIGHTNOW:Ljava/lang/String; = "android.provider.lewa.intercept.updateSmartLibRightNow"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_INITIATE:I = 0x33

.field private static final START_TENCENT_SDK_WAIT_LONG_TIME:I = 0x2710

.field private static final START_TENCENT_SDK_WAIT_SHORT_TIME:I = 0x7530

.field private static final VDBG:Z

.field private static lewaBlocker:Lcom/android/phone/LewaBlocker;

.field static mDockState:I

.field private static mVibrator:Landroid/os/Vibrator;

.field private static sMe:Lcom/android/phone/PhoneApp;

.field static sVoiceCapable:Z


# instance fields
.field callController:Lcom/android/phone/CallController;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field cf_all_deactivation:Ljava/lang/String;

.field cfb_activation:Ljava/lang/String;

.field cfb_deactivation:Ljava/lang/String;

.field cfnrc_activation:Ljava/lang/String;

.field cfnrc_deactivation:Ljava/lang/String;

.field cfnry_activation:Ljava/lang/String;

.field cfnry_deactivation:Ljava/lang/String;

.field cfu_activation:Ljava/lang/String;

.field cfu_deactivation:Ljava/lang/String;

.field cw_activation:Ljava/lang/String;

.field cw_deactivation:Ljava/lang/String;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field private incomingSMSReceiver:Landroid/content/BroadcastReceiver;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mAddToBlacklistReceiver:Landroid/content/BroadcastReceiver;

.field private mBeginningCall:Z

.field private mBlockModeReceiver:Landroid/content/BroadcastReceiver;

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCachedSimPin:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mDeleteFromBlacklistReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mLewaBlockReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mTtyEnabled:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    sput-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 252
    sput v0, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 253
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 363
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneApp;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 562
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 249
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 250
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 251
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 285
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 287
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 296
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 302
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 303
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 311
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 316
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfu_activation:Ljava/lang/String;

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfu_deactivation:Ljava/lang/String;

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfb_activation:Ljava/lang/String;

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfb_deactivation:Ljava/lang/String;

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfnry_activation:Ljava/lang/String;

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfnry_deactivation:Ljava/lang/String;

    .line 351
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfnrc_activation:Ljava/lang/String;

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cfnrc_deactivation:Ljava/lang/String;

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cf_all_deactivation:Ljava/lang/String;

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;

    .line 361
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 407
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 2148
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->incomingSMSReceiver:Landroid/content/BroadcastReceiver;

    .line 2190
    new-instance v0, Lcom/android/phone/PhoneApp$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$3;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mBlockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2200
    new-instance v0, Lcom/android/phone/PhoneApp$4;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$4;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLewaBlockReceiver:Landroid/content/BroadcastReceiver;

    .line 2251
    new-instance v0, Lcom/android/phone/PhoneApp$5;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$5;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAddToBlacklistReceiver:Landroid/content/BroadcastReceiver;

    .line 2267
    new-instance v0, Lcom/android/phone/PhoneApp$6;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$6;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mDeleteFromBlacklistReceiver:Landroid/content/BroadcastReceiver;

    .line 563
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 564
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->startTencentSdk()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/android/phone/LewaBlocker;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/phone/PhoneApp;->lewaBlocker:Lcom/android/phone/LewaBlocker;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    return v0
.end method

.method static synthetic access$300()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/phone/PhoneApp;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 839
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    return-object v0
.end method

.method static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 874
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 851
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 854
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter "showDialpad"

    .prologue
    .line 864
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 865
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 866
    return-object v0
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 880
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 811
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 818
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 891
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 2003
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2004
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 2005
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "PhoneApp"

    const-string v6, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "PhoneApp"

    const-string v7, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v4, v5, v6

    .line 2011
    .local v4, ttymode:I
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v3, ttyModeChanged:Landroid/content/Intent;
    const-string v7, "ttyEnabled"

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2015
    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2018
    packed-switch v4, :pswitch_data_0

    .line 2030
    const-string v2, "tty_off"

    .line 2033
    .local v2, audioTtyMode:Ljava/lang/String;
    :goto_2
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2034
    .local v1, audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tty_mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 2014
    goto :goto_1

    .line 2020
    :pswitch_0
    const-string v2, "tty_full"

    .line 2021
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 2023
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :pswitch_1
    const-string v2, "tty_vco"

    .line 2024
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 2026
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :pswitch_2
    const-string v2, "tty_hco"

    .line 2027
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 2018
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1920
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1922
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1923
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1924
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 1926
    .end local v1           #state:I
    :cond_0
    return-void
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2039
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2041
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2042
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2047
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 4

    .prologue
    .line 1583
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v2, "initForNewRadioTechnology..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1587
    new-instance v1, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v1}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1588
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1590
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1592
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_2

    .line 1593
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1595
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v1, :cond_3

    .line 1596
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1598
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v1, :cond_4

    .line 1599
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1601
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v1, :cond_5

    .line 1602
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1609
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1610
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1611
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_6

    .line 1612
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 1614
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_7

    .line 1615
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1619
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1620
    .local v0, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_9

    .line 1621
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "PhoneApp"

    const-string v2, "Update registration for ICC status..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1626
    :cond_9
    return-void

    .line 1606
    .end local v0           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_0
.end method

.method private isSimInfoAvailable()Z
    .locals 4

    .prologue
    .line 2347
    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getInsertedSimList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 2348
    .local v1, simInfos:Ljava/util/List;,"Ljava/util/List<Llewa/telephony/LewaSimInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/telephony/LewaSimInfo;

    .line 2349
    .local v2, siminfo:Llewa/telephony/LewaSimInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Llewa/telephony/LewaSimInfo;->displayName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2350
    :cond_1
    const/4 v3, 0x0

    .line 2353
    .end local v2           #siminfo:Llewa/telephony/LewaSimInfo;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 1578
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1579
    .local v0, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1580
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1701
    sget-object v2, Lcom/android/phone/PhoneApp$7;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1719
    :cond_0
    :goto_0
    return v0

    .line 1707
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1716
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 1701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startTencentSdk()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 2289
    const-class v2, Lcom/android/phone/FilterService;

    invoke-static {p0, v2}, Lcom/tencent/tmsecure/common/TMSApplication;->init(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2290
    invoke-static {p0}, Lcom/android/phone/LewaBlocker;->getInstance(Landroid/content/Context;)Lcom/android/phone/LewaBlocker;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneApp;->lewaBlocker:Lcom/android/phone/LewaBlocker;

    .line 2291
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2292
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.LEWA_SMS_RECEIVED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2293
    const/16 v2, 0x3e8

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2294
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->incomingSMSReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2296
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2297
    .restart local v8       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.lewa.intercept.SAVE_MODE"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2298
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBlockModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2300
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2301
    .restart local v8       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.lewa.intercept.insertBlack2Cache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2302
    const-string v2, "android.provider.lewa.intercept.insertWhite2Cache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2303
    const-string v2, "android.provider.lewa.intercept.deleteBlackfromCache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2304
    const-string v2, "android.provider.lewa.intercept.deleteAllBlackfromCache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2305
    const-string v2, "android.provider.lewa.intercept.deleteWhitefromCache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2306
    const-string v2, "android.provider.lewa.intercept.deleteAllWhitefromCache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2307
    const-string v2, "android.provider.lewa.intercept.updateBlackInCache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2308
    const-string v2, "android.provider.lewa.intercept.updateWhiteInCache"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2309
    const-string v2, "android.provider.lewa.intercept.updateSmartLibRightNow"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2310
    const-string v2, "android.provider.lewa.intercept.updateSmartLib"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2311
    const-string v2, "check_intelligence_intercept_library"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2312
    const-string v2, "update_intelligence_intercept_library"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2313
    const-string v2, "auto_update_intelligence_intercept_library"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2314
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mLewaBlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2316
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2317
    .restart local v8       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.lewa.intercept.addToBlacklist"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2318
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mAddToBlacklistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2320
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2321
    .restart local v8       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.lewa.intercept.deleteFromBlacklist"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2322
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mDeleteFromBlacklistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2324
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2325
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2326
    .local v7, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2328
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2330
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2332
    new-instance v2, Landroid/content/Intent;

    const-string v3, "auto_update_intelligence_intercept_library"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v11, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2334
    .local v6, autoUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2336
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone_preference"

    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2338
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v2, "isFirstBoot"

    invoke-interface {v10, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2339
    .local v9, isFirstBoot:Z
    if-eqz v9, :cond_0

    .line 2340
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lewa_tencent_last_update_time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2343
    :cond_0
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirstBoot"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2344
    return-void
.end method

.method private updatePokeLock()V
    .locals 5

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    const-string v2, "PhoneApp"

    const-string v3, "PokeLock should not be used when proximity sensor is available on the device."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :goto_0
    return-void

    .line 1149
    :cond_0
    const/4 v1, 0x0

    .line 1150
    .local v1, pokeLockSetting:I
    sget-object v2, Lcom/android/phone/PhoneApp$7;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1176
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v2, :cond_1

    .line 1177
    or-int/lit8 v1, v1, 0x1

    .line 1182
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v4, "PhoneApp"

    invoke-interface {v2, v1, v3, v4}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1156
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 1157
    goto :goto_1

    .line 1164
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 1165
    goto :goto_1

    .line 1150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 1972
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1974
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1976
    :cond_1
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 1948
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1951
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1952
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_1
    return-void
.end method

.method public clearSilentHangupFlag()V
    .locals 0

    .prologue
    .line 1958
    return-void
.end method

.method clearUserActivityTimeout()V
    .locals 5

    .prologue
    .line 2051
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :goto_0
    return-void

    .line 2053
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2125
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2141
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dismissCallScreen()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_2

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1014
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1020
    :cond_1
    :goto_0
    return-void

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    .line 1962
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1965
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1966
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_1
    return-void
.end method

.method displayCallScreen()V
    .locals 5

    .prologue
    .line 906
    sget-boolean v1, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_0

    .line 907
    const-string v1, "PhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    :goto_0
    return-void

    .line 914
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method getInCallScreen()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public getNumberLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2146
    const-string v0, ""

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getUpdateLock()Landroid/os/UpdateLock;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    return-object v0
.end method

.method handleOtaspDisconnect()V
    .locals 2

    .prologue
    .line 1047
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 1052
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1029
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 1034
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1635
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 2

    .prologue
    .line 1929
    const/4 v0, 0x0

    .line 1930
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 1934
    :cond_0
    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, otaCallEnded:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 1940
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    .line 1943
    :cond_0
    return v0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isShowingCallScreenForProximity()Z
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 986
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 796
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 797
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 803
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 804
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 805
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    .line 569
    iput-object p0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 570
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 577
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x90a0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 584
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v10, :cond_7

    .line 586
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 592
    new-instance v3, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 595
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 596
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v11, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 600
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 602
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v10}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 604
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 606
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 608
    .local v6, phoneType:I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_0

    .line 610
    new-instance v10, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v10}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 611
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 614
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 617
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v10}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 618
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 624
    :goto_0
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 627
    const-string v10, "power"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 628
    .local v7, pm:Landroid/os/PowerManager;
    const v10, 0x1000001a

    const-string v11, "PhoneApp"

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 632
    const v10, 0x20000001

    const-string v11, "PhoneApp"

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 635
    invoke-virtual {v7}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_1

    .line 637
    const/16 v10, 0x20

    const-string v11, "PhoneApp"

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 640
    :cond_1
    sget-boolean v10, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate: mProximityWakeLock: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 644
    new-instance v10, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v10, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 647
    :cond_3
    const-string v10, "keyguard"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/KeyguardManager;

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 651
    const-string v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 656
    new-instance v10, Landroid/os/UpdateLock;

    const-string v11, "phone"

    invoke-direct {v10, v11}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    .line 658
    sget-boolean v10, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v10, :cond_4

    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate: mUpdateLock: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_4
    invoke-static {p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 666
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 672
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 678
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v12, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v13, Lcom/android/phone/CallLogAsync;

    invoke-direct {v13}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-static {p0, v10, v11, v12, v13}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 681
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 682
    .local v9, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v9, :cond_5

    .line 684
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 688
    :cond_5
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v11, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x34

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 697
    new-instance v4, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 699
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v10, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v10, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v10, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v10, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    iget-boolean v10, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v10, :cond_6

    .line 709
    const-string v10, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    :cond_6
    const-string v10, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v4}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 717
    new-instance v5, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 724
    .local v5, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 726
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v5}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 729
    .local v0, am:Landroid/media/AudioManager;
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 733
    const v10, 0x7f06000d

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 735
    const/high16 v10, 0x7f06

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 740
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 743
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    .end local v5           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v6           #phoneType:I
    .end local v7           #pm:Landroid/os/PowerManager;
    .end local v9           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_7
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 744
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 745
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 746
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 747
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 751
    :cond_8
    const-string v10, "content://icc/adn"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 754
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 763
    iget-boolean v10, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v10, :cond_9

    .line 764
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_tty_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 768
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 772
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hearing_aid"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 775
    .local v2, hac:I
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 776
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v11, "HACSetting"

    if-eqz v2, :cond_d

    const-string v10, "ON"

    :goto_1
    invoke-virtual {v1, v11, v10}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #hac:I
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isSimInfoAvailable()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 783
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1f

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 789
    :goto_2
    sget-object v10, Lcom/android/phone/PhoneApp;->mVibrator:Landroid/os/Vibrator;

    if-nez v10, :cond_b

    .line 790
    const-string v10, "vibrator"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    sput-object v10, Lcom/android/phone/PhoneApp;->mVibrator:Landroid/os/Vibrator;

    .line 792
    :cond_b
    return-void

    .line 621
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v6       #phoneType:I
    :cond_c
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_0

    .line 776
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #phoneType:I
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #hac:I
    :cond_d
    const-string v10, "OFF"

    goto :goto_1

    .line 786
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #hac:I
    :cond_e
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1f

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method public orientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1498
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1499
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1500
    return-void
.end method

.method pokeUserActivity()V
    .locals 5

    .prologue
    .line 1386
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :goto_0
    return-void

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method preventScreenOn(Z)V
    .locals 4
    .parameter "prevent"

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_0
    return-void

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 2
    .parameter "ws"

    .prologue
    .line 1199
    monitor-enter p0

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_2

    .line 1201
    sget-object v0, Lcom/android/phone/PhoneApp$7;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1221
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1229
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1231
    :cond_2
    monitor-exit p0

    .line 1232
    return-void

    .line 1205
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1206
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1213
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1214
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetLatestActiveCallOrigin()V
    .locals 8

    .prologue
    .line 2099
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v0, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2100
    .local v0, callOriginTimestamp:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2105
    .local v2, currentTimestamp:J
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sub-long v4, v2, v0

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 2112
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-wide v2, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2117
    :goto_0
    return-void

    .line 2115
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 1400
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1402
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1403
    return-void
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    .line 934
    return-void
.end method

.method setIgnoreTouchUserActivity(Z)V
    .locals 1
    .parameter "ignore"

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    :goto_0
    return-void

    .line 1372
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1373
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 937
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 938
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 3
    .parameter "callOrigin"

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 2078
    if-eqz p1, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2083
    :goto_0
    return-void

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    goto :goto_0
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1073
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1090
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 396
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-eq p1, v0, :cond_0

    .line 1122
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1123
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter "forceUiUpdate"

    .prologue
    .line 1664
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 1667
    if-eqz p1, :cond_2

    .line 1670
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 1671
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1676
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1677
    return-void
.end method

.method updateInCallScreen()V
    .locals 2

    .prologue
    .line 1993
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2000
    :cond_1
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1509
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_2

    .line 1510
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1511
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1517
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_3

    .line 1522
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    .line 1535
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_1

    .line 1537
    iput v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1538
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1541
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1547
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 1548
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1551
    :cond_2
    return-void

    .line 1526
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1538
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1548
    goto :goto_2
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1436
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1437
    iget-object v7, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v7

    .line 1441
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-boolean v6, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_7

    :cond_1
    move v3, v4

    .line 1449
    .local v3, screenOnImmediately:Z
    :goto_0
    iget v6, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    move v2, v4

    .line 1451
    .local v2, horizontal:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v2, :cond_9

    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    .line 1457
    const/4 v0, 0x0

    .line 1458
    .local v0, dialpadVisible:Z
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v6, :cond_2

    .line 1459
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-eqz v6, :cond_a

    move v0, v4

    .line 1464
    :cond_2
    :goto_3
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    move v6, v4

    :goto_4
    or-int/2addr v3, v6

    .line 1466
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v6, :cond_3

    iget-boolean v6, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v6, :cond_c

    :cond_3
    if-nez v3, :cond_c

    .line 1469
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1470
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "PhoneApp"

    const-string v5, "updateProximitySensorMode: acquiring..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1492
    :cond_5
    :goto_5
    monitor-exit v7

    .line 1494
    .end local v0           #dialpadVisible:Z
    .end local v2           #horizontal:Z
    .end local v3           #screenOnImmediately:Z
    :cond_6
    return-void

    :cond_7
    move v3, v5

    .line 1441
    goto :goto_0

    .restart local v3       #screenOnImmediately:Z
    :cond_8
    move v2, v5

    .line 1449
    goto :goto_1

    .restart local v2       #horizontal:Z
    :cond_9
    move v6, v5

    .line 1451
    goto :goto_2

    .restart local v0       #dialpadVisible:Z
    :cond_a
    move v0, v5

    .line 1459
    goto :goto_3

    :cond_b
    move v6, v5

    .line 1464
    goto :goto_4

    .line 1478
    :cond_c
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1479
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "PhoneApp"

    const-string v8, "updateProximitySensorMode: releasing..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_d
    if-eqz v3, :cond_e

    move v1, v5

    .line 1485
    .local v1, flags:I
    :goto_6
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_5

    .line 1492
    .end local v0           #dialpadVisible:Z
    .end local v1           #flags:I
    .end local v2           #horizontal:Z
    .end local v3           #screenOnImmediately:Z
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #dialpadVisible:Z
    .restart local v2       #horizontal:Z
    .restart local v3       #screenOnImmediately:Z
    :cond_e
    move v1, v4

    .line 1483
    goto :goto_6
.end method

.method updateWakeState()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1263
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 1268
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    .line 1273
    .local v3, isShowingCallScreen:Z
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v10

    if-eqz v10, :cond_3

    move v0, v8

    .line 1283
    .local v0, isDialerOpened:Z
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v10, :cond_4

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v4, v8

    .line 1291
    .local v4, isSpeakerInUse:Z
    :goto_1
    sget-boolean v10, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWakeState: callscreen "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dialer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", speaker "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    sget-object v10, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1322
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v10, :cond_5

    move v2, v8

    .line 1323
    .local v2, isRinging:Z
    :goto_2
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_6

    move v1, v8

    .line 1324
    .local v1, isDialing:Z
    :goto_3
    iget-object v10, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    move v6, v8

    .line 1326
    .local v6, showingDisconnectedConnection:Z
    :goto_4
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v6, :cond_8

    :cond_1
    move v5, v8

    .line 1327
    .local v5, keepScreenOn:Z
    :goto_5
    sget-boolean v8, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWakeState: keepScreenOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (isRinging "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isDialing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", showingDisc "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_2
    if-eqz v5, :cond_9

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_6
    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1333
    return-void

    .end local v0           #isDialerOpened:Z
    .end local v1           #isDialing:Z
    .end local v2           #isRinging:Z
    .end local v4           #isSpeakerInUse:Z
    .end local v5           #keepScreenOn:Z
    .end local v6           #showingDisconnectedConnection:Z
    :cond_3
    move v0, v9

    .line 1273
    goto/16 :goto_0

    .restart local v0       #isDialerOpened:Z
    :cond_4
    move v4, v9

    .line 1283
    goto/16 :goto_1

    .restart local v4       #isSpeakerInUse:Z
    :cond_5
    move v2, v9

    .line 1322
    goto :goto_2

    .restart local v2       #isRinging:Z
    :cond_6
    move v1, v9

    .line 1323
    goto :goto_3

    .restart local v1       #isDialing:Z
    :cond_7
    move v6, v9

    .line 1324
    goto :goto_4

    .restart local v6       #showingDisconnectedConnection:Z
    :cond_8
    move v5, v9

    .line 1326
    goto :goto_5

    .line 1332
    .restart local v5       #keepScreenOn:Z
    :cond_9
    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_6
.end method

.method public vibrate(III)V
    .locals 2
    .parameter "v1"
    .parameter "p1"
    .parameter "v2"

    .prologue
    .line 387
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/PhoneApp$TriVibRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/phone/PhoneApp$TriVibRunnable;-><init>(Lcom/android/phone/PhoneApp;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method wakeUpScreen()V
    .locals 5

    .prologue
    .line 1239
    monitor-enter p0

    .line 1240
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1

    .line 1241
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1248
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1249
    return-void

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1244
    :catch_0
    move-exception v0

    goto :goto_0
.end method
