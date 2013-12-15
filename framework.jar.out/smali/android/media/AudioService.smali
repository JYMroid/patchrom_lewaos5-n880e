.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RemotePlaybackState;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x7

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xb

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x5

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xf

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xa

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x16
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x6

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x12

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x13

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xc

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xd

.field private static final MSG_REEVALUATE_REMOTE:I = 0x11

.field private static final MSG_REPORT_NEW_ROUTES:I = 0x10

.field private static final MSG_SET_A2DP_CONNECTION_STATE:I = 0x15

.field private static final MSG_SET_ALL_VOLUMES:I = 0xe

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x9

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x14

.field private static final NOTIFICATION_VOLUME_DELAY_MS:I = 0x1388

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_CURRENT:I = 0x1

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PERSIST_LAST_AUDIBLE:I = 0x2

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static SOUND_EFFECT_VOLUME_DB:I = 0x0

.field public static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I


# instance fields
.field private final MAX_STREAM_VOLUME:[I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_NAMES:[Ljava/lang/String;

.field private final STREAM_VOLUME_ALIAS:[I
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field private final STREAM_VOLUME_ALIAS_NON_VOICE:[I

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mHasRemotePlayback:Z

.field private final mHasVibrator:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMasterVolumeRamp:[I

.field private mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevVolDirection:I

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mState:I

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private mVoiceCapable:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private mVolumeControlStream:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 3785
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 3787
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 4415
    sput v3, Landroid/media/AudioService;->sLastRccId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 432
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 204
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 217
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 238
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 251
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    .line 267
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v11

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v12

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v3, "STREAM_MUSIC"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "STREAM_ALARM"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "STREAM_NOTIFICATION"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "STREAM_BLUETOOTH_SCO"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "STREAM_DTMF"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "STREAM_TTS"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "STREAM_FM"

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 281
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 332
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    iput-boolean v11, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 390
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 397
    iput v11, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 402
    iput v2, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 403
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 407
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 411
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 418
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 419
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 2138
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3446
    const/16 v0, 0x38c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 3789
    new-instance v0, Landroid/media/AudioService$3;

    invoke-direct {v0, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3865
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 4187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    .line 4348
    new-instance v0, Landroid/media/AudioService$4;

    invoke-direct {v0, p0}, Landroid/media/AudioService$4;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 4363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 4369
    iput-object v5, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4383
    iput v11, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4528
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 4534
    iput-object v5, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 5056
    iput v2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5057
    iput v2, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 433
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 435
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 438
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 439
    .local v8, pm:Landroid/os/PowerManager;
    const-string v0, "handleMediaEvent"

    invoke-virtual {v8, v12, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 441
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    .line 442
    .local v10, vibrator:Landroid/os/Vibrator;
    if-nez v10, :cond_1

    move v0, v11

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 445
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v1, "ro.config.vc_call_vol_steps"

    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v11

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v11

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    .line 452
    new-instance v0, Landroid/view/VolumePanel;

    invoke-direct {v0, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 453
    iput v11, p0, Landroid/media/AudioService;->mMode:I

    .line 454
    iput v11, p0, Landroid/media/AudioService;->mState:I

    .line 455
    iput v11, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 456
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 457
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 458
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 459
    invoke-direct {p0, v11}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 460
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 462
    iput-boolean v12, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 466
    iput v11, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 467
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v11}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 469
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 472
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 474
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v0, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v0, "android.intent.action.FM"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v0, "android.intent.action.FMTX"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v0, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v0, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 499
    .local v7, pkgFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 506
    .local v9, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v9, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 510
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 515
    new-instance v0, Landroid/media/AudioService$RemotePlaybackState;

    iget-object v1, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v3, v1, v3

    iget-object v1, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v4, v1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$RemotePlaybackState;-><init>(Landroid/media/AudioService;IIILandroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    .line 517
    iput-boolean v11, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 518
    iput-boolean v11, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 519
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 520
    return-void

    .line 442
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #pkgFilter:Landroid/content/IntentFilter;
    .end local v9           #tmgr:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_0

    .line 204
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 217
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 238
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 251
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1402(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 101
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2402(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4400()I
    .locals 1

    .prologue
    .line 101
    sget v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    return v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$4600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$5800(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6000(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/AudioService;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$6702(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$7102(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$7202(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7702(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$7800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$8104()I
    .locals 1

    .prologue
    .line 101
    sget v0, Landroid/media/AudioService;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/AudioService;->sLastRccId:I

    return v0
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$8402(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method private adjustRemoteVolume(III)V
    .locals 4
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 5337
    const/4 v0, -0x1

    .line 5338
    .local v0, rccId:I
    const/4 v1, 0x0

    .line 5339
    .local v1, volFixed:Z
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 5340
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    if-nez v2, :cond_0

    .line 5342
    monitor-exit v3

    .line 5357
    :goto_0
    return-void

    .line 5344
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5345
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 5347
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5351
    if-nez v1, :cond_1

    .line 5352
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdateToRemote(II)V

    .line 5356
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postRemoteVolumeChanged(II)V

    goto :goto_0

    .line 5345
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5347
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 4
    .parameter "muted"

    .prologue
    .line 983
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    const/high16 v3, 0x2800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 988
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 989
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 990
    return-void
.end method

.method private broadcastRingerMode(I)V
    .locals 4
    .parameter "ringerMode"

    .prologue
    .line 2428
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2429
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2430
    const/high16 v3, 0x2800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2433
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2434
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2435
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2128
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 2129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2131
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2133
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2134
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2136
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 2439
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2441
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2442
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2443
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2445
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 3960
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3961
    const/4 v0, 0x0

    .line 3963
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 3355
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 3356
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 5

    .prologue
    .line 543
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 544
    .local v0, numStreamTypes:I
    const/4 v1, 0x0

    .local v1, streamType:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 545
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 546
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 549
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 554
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_1

    .line 555
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 544
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_2
    return-void
.end method

.method private checkForRingerModeChange(III)Z
    .locals 5
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "step"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2243
    const/4 v0, 0x1

    .line 2244
    .local v0, adjustVolumeIndex:Z
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 2246
    .local v1, ringerMode:I
    packed-switch v1, :pswitch_data_0

    .line 2292
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2298
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2300
    return v0

    .line 2248
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 2249
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 2255
    if-gt p3, p1, :cond_0

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 2256
    const/4 v1, 0x1

    goto :goto_0

    .line 2260
    :cond_1
    if-ge p1, p3, :cond_0

    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 2261
    const/4 v1, 0x0

    goto :goto_0

    .line 2267
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_2

    .line 2268
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2272
    :cond_2
    if-ne p2, v3, :cond_4

    .line 2273
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_3

    .line 2274
    const/4 v1, 0x0

    .line 2279
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 2280
    goto :goto_0

    .line 2276
    :cond_4
    if-ne p2, v4, :cond_3

    .line 2277
    const/4 v1, 0x2

    goto :goto_1

    .line 2282
    :pswitch_2
    if-ne p2, v4, :cond_5

    .line 2283
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_6

    .line 2284
    const/4 v1, 0x1

    .line 2289
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 2290
    goto :goto_0

    .line 2286
    :cond_6
    const/4 v1, 0x2

    goto :goto_2

    .line 2246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 2036
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2040
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2042
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 6
    .parameter "device"
    .parameter "state"

    .prologue
    .line 3452
    const/4 v0, 0x0

    .line 3453
    .local v0, delay:I
    if-nez p2, :cond_2

    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 3454
    const/4 v2, 0x0

    .line 3455
    .local v2, devices:I
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3456
    .local v1, dev:I
    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 3457
    or-int/2addr v2, v1

    goto :goto_0

    .line 3460
    .end local v1           #dev:I
    :cond_1
    if-ne v2, p1, :cond_2

    .line 3461
    const/16 v0, 0x3e8

    .line 3462
    invoke-direct {p0}, Landroid/media/AudioService;->sendBecomingNoisyIntent()V

    .line 3466
    .end local v2           #devices:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3468
    :cond_3
    const/16 v0, 0x3e8

    .line 3470
    :cond_4
    return v0
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 2
    .parameter "infoChangedFlags"

    .prologue
    .line 4867
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4868
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4888
    :goto_0
    return-void

    .line 4872
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4876
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 4881
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v1, v0, :cond_3

    .line 4882
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 4887
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private checkUpdateRemoteStateIfActive(I)Z
    .locals 7
    .parameter "streamType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5290
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5291
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5292
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5294
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v5, v2, :cond_0

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-static {v5}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v5, p1, :cond_0

    .line 5299
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5300
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5301
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5302
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5303
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5304
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5305
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5306
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5313
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_0
    return v2

    .line 5305
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 5309
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5310
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 5311
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5312
    monitor-exit v4

    move v2, v3

    .line 5313
    goto :goto_0

    .line 5312
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    .prologue
    .line 4819
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4820
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4821
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4823
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4824
    return-void

    .line 4821
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 523
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 524
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 525
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 526
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 561
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 562
    .local v1, numStreamTypes:I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 564
    .local v2, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 565
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 569
    return-void
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2097
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2098
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2099
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 2101
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 2102
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 2103
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2105
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2116
    :cond_1
    :goto_0
    monitor-exit v7

    .line 2117
    return-void

    .line 2108
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 2116
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2114
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 12
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/16 v2, 0x7bc

    const/4 v1, 0x0

    .line 4152
    if-eqz p2, :cond_0

    .line 4153
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4155
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4156
    .local v3, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4157
    iget-object v11, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v11

    .line 4158
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 4161
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    :goto_0
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4177
    :goto_1
    :try_start_2
    monitor-exit v11

    .line 4178
    return-void

    .line 4161
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4164
    :catch_0
    move-exception v10

    .line 4165
    .local v10, e:Landroid/app/PendingIntent$CanceledException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending pending intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    invoke-virtual {v10}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 4177
    .end local v10           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4171
    :cond_2
    if-eqz p2, :cond_3

    .line 4172
    :try_start_3
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v1, 0x7bc

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4174
    :cond_3
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 8
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x0

    .line 4133
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4134
    .local v1, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4135
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4136
    if-eqz p2, :cond_0

    .line 4137
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4138
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4140
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, -0x1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4142
    return-void
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .parameter "volume"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 1099
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1100
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 1101
    .local v8, oldVolume:I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1103
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 1104
    .local v7, newVolume:I
    if-eq v7, v8, :cond_0

    .line 1106
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1110
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 1112
    .end local v7           #newVolume:I
    .end local v8           #oldVolume:I
    :cond_1
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3872
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3873
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3874
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3875
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3876
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3877
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3881
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3882
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4562
    const-string v2, "\nRemote Control Client stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4563
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4564
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4565
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4567
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4577
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4578
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 4579
    :try_start_2
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_1

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4588
    monitor-exit v3

    .line 4589
    return-void

    .line 4583
    :cond_1
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 4588
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4541
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4542
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4543
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4544
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4546
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4553
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4554
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 572
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 574
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 577
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_0
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 2316
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 2317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2319
    :cond_1
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .parameter "ringerMode"

    .prologue
    .line 1153
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .parameter "steps"

    .prologue
    .line 2322
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 2323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2325
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 2328
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4103
    invoke-static {p1}, Landroid/media/AudioService;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4104
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    :goto_0
    return-void

    .line 4108
    :cond_0
    sget-object v1, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4109
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4110
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4112
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 4113
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 4116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4115
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4116
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4118
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioService;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 4115
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4121
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x1

    .line 4203
    const/4 v1, 0x1

    .line 4204
    .local v1, voiceButtonAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4205
    .local v0, keyAction:I
    iget-object v3, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4206
    if-nez v0, :cond_2

    .line 4207
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4209
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4210
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4226
    :cond_0
    :goto_0
    monitor-exit v3

    .line 4229
    packed-switch v1, :pswitch_data_0

    .line 4243
    :goto_1
    :pswitch_0
    return-void

    .line 4211
    :cond_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 4214
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4215
    const/4 v1, 0x2

    goto :goto_0

    .line 4217
    :cond_2
    if-ne v0, v2, :cond_0

    .line 4218
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 4220
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4221
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4222
    const/4 v1, 0x3

    goto :goto_0

    .line 4226
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4236
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/media/AudioService;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 4240
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 4229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .parameter "direction"
    .parameter "volume"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, delta:I
    if-ne p1, v5, :cond_4

    .line 917
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v3

    .line 921
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 924
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-le v1, v5, :cond_2

    .line 925
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 926
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1           #i:I
    :cond_2
    :goto_2
    move v3, v0

    .line 946
    goto :goto_0

    .line 924
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 930
    .end local v1           #i:I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 931
    if-eqz p2, :cond_0

    .line 934
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 936
    .local v2, length:I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 939
    const/4 v1, 0x2

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 940
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 941
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 942
    goto :goto_2

    .line 939
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .parameter "suggestedStreamType"

    .prologue
    const/16 v1, -0xc8

    const/high16 v5, -0x8000

    const/16 v3, 0xa

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 2348
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_8

    .line 2349
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2350
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2353
    const/4 p1, 0x6

    .line 2421
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    move p1, v0

    .line 2356
    goto :goto_0

    .line 2358
    :cond_2
    if-ne p1, v5, :cond_6

    .line 2361
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v1

    .line 2364
    goto :goto_0

    .line 2365
    :cond_3
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_4

    move p1, v2

    .line 2368
    goto :goto_0

    .line 2369
    :cond_4
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_5

    move p1, v3

    .line 2372
    goto :goto_0

    .line 2376
    :cond_5
    const/4 p1, 0x2

    goto :goto_0

    .line 2378
    :cond_6
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_7

    move p1, v2

    .line 2381
    goto :goto_0

    .line 2382
    :cond_7
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v3

    .line 2385
    goto :goto_0

    .line 2392
    :cond_8
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2393
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 2396
    const/4 p1, 0x6

    goto :goto_0

    :cond_9
    move p1, v0

    .line 2399
    goto :goto_0

    .line 2401
    :cond_a
    const/4 v0, 0x5

    const/16 v3, 0x1388

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x2

    const/16 v3, 0x1388

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2406
    :cond_b
    const/4 p1, 0x5

    goto :goto_0

    .line 2407
    :cond_c
    if-ne p1, v5, :cond_0

    .line 2408
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move p1, v1

    .line 2412
    goto :goto_0

    :cond_d
    move p1, v2

    .line 2416
    goto :goto_0
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2081
    const/4 v8, 0x0

    .line 2082
    .local v8, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 2083
    .local v7, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 2084
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 2091
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2093
    return v8

    :cond_1
    move v6, v2

    .line 2091
    goto :goto_0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .parameter "stream"

    .prologue
    .line 2483
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 2484
    .local v0, device:I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2490
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2491
    const/4 v0, 0x2

    .line 2501
    :cond_0
    :goto_0
    return v0

    .line 2493
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 2494
    const/4 v0, 0x4

    goto :goto_0

    .line 2497
    :cond_2
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 2045
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2046
    const/4 v0, 0x0

    .line 2047
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2048
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2049
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2050
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 2051
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 2057
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 2048
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 2053
    :cond_1
    if-eqz p2, :cond_2

    .line 2054
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2055
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 2058
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1275
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1278
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1280
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 5477
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 5478
    .local v1, newOrientation:I
    iget v2, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v1, v2, :cond_0

    .line 5479
    iput v1, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 5480
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5485
    .end local v1           #newOrientation:I
    :cond_0
    :goto_0
    return-void

    .line 5482
    :catch_0
    move-exception v0

    .line 5483
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving device orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 6
    .parameter "connected"
    .parameter "device"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3423
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 3424
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 3427
    .local v0, isConnected:Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 3428
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3431
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3432
    monitor-exit v4

    move v1, v2

    .line 3441
    :goto_1
    return v1

    .end local v0           #isConnected:Z
    :cond_1
    move v0, v3

    .line 3424
    goto :goto_0

    .line 3433
    .restart local v0       #isConnected:Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 3434
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3437
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    monitor-exit v4

    move v1, v2

    goto :goto_1

    .line 3440
    :cond_3
    monitor-exit v4

    move v1, v3

    .line 3441
    goto :goto_1

    .line 3440
    .end local v0           #isConnected:Z
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 3360
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 4701
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4702
    const/4 v0, 0x1

    .line 4704
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 5

    .prologue
    .line 2334
    const/4 v1, 0x0

    .line 2336
    .local v1, isOffhook:Z
    iget-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v3, :cond_0

    .line 2338
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2339
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2344
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v4, "Couldn\'t connect to phone service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2344
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isPlaystateActive(I)Z
    .locals 1
    .parameter "playState"

    .prologue
    .line 5323
    packed-switch p0, :pswitch_data_0

    .line 5332
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5330
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5323
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2308
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    .line 4257
    if-nez p0, :cond_0

    .line 4279
    :goto_0
    return v1

    .line 4260
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4261
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 4279
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 4261
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 4289
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 4290
    const/4 v0, 0x1

    .line 4292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v0, 0x1

    .line 3318
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3319
    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3323
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3324
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 3344
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3346
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3349
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3351
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    const/16 v1, 0x80

    .line 3334
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3337
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3338
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 3808
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 3809
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3811
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3819
    :cond_0
    :goto_0
    return-void

    .line 3813
    :catch_0
    move-exception v0

    .line 3814
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .locals 6
    .parameter "rccId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 5205
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5206
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5207
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5209
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_0

    .line 5210
    sparse-switch p2, :sswitch_data_0

    .line 5255
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhandled key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    :goto_0
    monitor-exit v3

    .line 5262
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_1
    return-void

    .line 5212
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :sswitch_0
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    .line 5213
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    goto :goto_0

    .line 5261
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5216
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :sswitch_1
    :try_start_1
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 5217
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5218
    :try_start_2
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_1

    .line 5219
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5220
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5222
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2

    .line 5225
    :sswitch_2
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 5226
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5227
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_2

    .line 5228
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5229
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5231
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v2

    .line 5234
    :sswitch_3
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 5235
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5236
    :try_start_6
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_3

    .line 5237
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5238
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5240
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v2

    .line 5243
    :sswitch_4
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    goto :goto_0

    .line 5246
    :sswitch_5
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    .line 5247
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5248
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_4

    .line 5249
    invoke-static {p3}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5250
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 5252
    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v2

    .line 5261
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_5
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 5210
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 4770
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4771
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4772
    :try_start_1
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4774
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 4776
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4777
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4778
    return-void

    .line 4776
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4777
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 7
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 4784
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 4785
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4786
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4789
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4792
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4798
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4809
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4810
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4811
    return-void

    .line 4800
    :catch_0
    move-exception v0

    .line 4801
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 4809
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 4810
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 6

    .prologue
    .line 5446
    const/4 v0, 0x0

    .line 5447
    .local v0, hasRemotePlayback:Z
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5448
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5449
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5451
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 5452
    const/4 v0, 0x1

    .line 5456
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5457
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 5458
    :try_start_1
    iget-boolean v3, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2

    .line 5459
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 5460
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3, v0}, Landroid/view/VolumePanel;->postRemoteSliderVisibility(Z)V

    .line 5462
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5463
    return-void

    .line 5456
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 5462
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 4
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    .line 5271
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5272
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5273
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5275
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_0

    .line 5276
    iput-object p2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5280
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    monitor-exit v3

    .line 5281
    return-void

    .line 5280
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3365
    if-nez p1, :cond_0

    .line 3420
    :goto_0
    return-void

    .line 3368
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 3369
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3370
    const-string v7, ""

    .line 3372
    :cond_1
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 3373
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3377
    .local v8, isConnected:Z
    :goto_1
    if-eqz v8, :cond_7

    if-eq p2, v3, :cond_7

    .line 3378
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3379
    if-nez p2, :cond_2

    .line 3383
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 3389
    :cond_2
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3390
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 3391
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3392
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3395
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3419
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v8           #isConnected:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v8, v1

    .line 3373
    goto :goto_1

    .line 3387
    .restart local v8       #isConnected:Z
    :cond_6
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3395
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 3396
    :cond_7
    if-nez v8, :cond_4

    if-ne p2, v3, :cond_4

    .line 3397
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3399
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3400
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 3409
    :cond_8
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 3410
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3411
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 3412
    .local v9, name:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3413
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3414
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3417
    :cond_9
    monitor-exit v11

    goto :goto_3

    .end local v9           #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 3404
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3405
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3406
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 6
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3523
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 3524
    if-nez p2, :cond_1

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 3526
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3528
    :cond_1
    if-ne p2, v0, :cond_4

    :goto_0
    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 3529
    if-eqz p2, :cond_3

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    .line 3531
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3533
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 3534
    monitor-exit v2

    .line 3535
    return-void

    :cond_4
    move v0, v1

    .line 3528
    goto :goto_0

    .line 3534
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 5440
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5441
    return-void
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 7
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 4655
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4677
    :goto_0
    return-void

    .line 4658
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4659
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 4660
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 4661
    .local v2, wasInsideStack:Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4662
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4663
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4664
    const/4 v2, 0x1

    .line 4665
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4669
    :cond_2
    if-nez v2, :cond_3

    .line 4670
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4672
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4675
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 7
    .parameter "handler"
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2454
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2455
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2456
    return-void
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .locals 5

    .prologue
    .line 5098
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_0

    .line 5100
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5101
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 5103
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5110
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 5104
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 5106
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .locals 1

    .prologue
    .line 5091
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 5093
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 5095
    :cond_0
    return-void
.end method

.method private readPersistedSettings()V
    .locals 9
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 610
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 612
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v4, "mode_ringer"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 614
    .local v3, ringerModeFromSettings:I
    move v2, v3

    .line 617
    .local v2, ringerMode:I
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    const/4 v2, 0x2

    .line 620
    :cond_0
    if-ne v2, v7, :cond_1

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_1

    .line 621
    const/4 v2, 0x0

    .line 623
    :cond_1
    if-eq v2, v3, :cond_2

    .line 624
    const-string/jumbo v4, "mode_ringer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    :cond_2
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 627
    :try_start_0
    iput v2, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 628
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_lewa_0

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 636
    iget v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_4

    :goto_1
    invoke-static {v4, v6, v5}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    :goto_lewa_0
    const-string v4, "mode_ringer_streams_affected"

    const/16 v5, 0xa6

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 647
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_5

    .line 648
    iget v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 652
    :goto_2
    const-string/jumbo v4, "mode_ringer_streams_affected"

    iget v5, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 655
    const-string/jumbo v4, "mute_streams_affected"

    const/16 v5, 0xe

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 659
    iget v4, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 661
    const-string/jumbo v4, "volume_master_mute"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_6

    move v1, v7

    .line 662
    .local v1, masterMute:Z
    :goto_3
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 663
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 668
    invoke-direct {p0, v2}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 671
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 672
    invoke-direct {p0, v7}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 675
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 676
    return-void

    .line 628
    .end local v1           #masterMute:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_lewa_0
    const-string v4, "vibrate_on"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    goto :goto_lewa_0

    :cond_5
    iget v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_2

    :cond_6
    move v1, v6

    .line 661
    goto :goto_3
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 3894
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3897
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3898
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 3899
    if-eqz p2, :cond_0

    .line 3901
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 3903
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 3904
    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3905
    monitor-exit v3

    .line 3921
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_0
    return-void

    .line 3905
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3910
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3911
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3913
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3914
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3917
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 3930
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 3932
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3933
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3934
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3935
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3936
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3930
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3942
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 3945
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 3947
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 3948
    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3949
    monitor-exit v4

    .line 3951
    :cond_3
    return-void

    .line 3949
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 4685
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4686
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4688
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4689
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4690
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4694
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"

    .prologue
    .line 4597
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4598
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4599
    monitor-exit v4

    .line 4626
    :goto_0
    return-void

    .line 4601
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4602
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4604
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4605
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4606
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4608
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4609
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1

    .line 4625
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4612
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4614
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4625
    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 4617
    :cond_4
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 4620
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 679
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 2120
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2121
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2122
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2124
    monitor-exit v1

    .line 2125
    return-void

    .line 2124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 4

    .prologue
    .line 1219
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x4080

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1222
    .local v0, volume:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 1223
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1226
    .end local v0           #volume:F
    :cond_0
    return-void
.end method

.method private restoreMediaButtonReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4633
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4635
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4636
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4639
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4641
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4642
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4644
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4646
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private sendBecomingNoisyIntent()V
    .locals 3

    .prologue
    .line 3329
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3330
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 12
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3475
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3477
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3478
    const-string/jumbo v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3479
    const/high16 v0, 0x4000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3481
    const/4 v7, 0x0

    .line 3483
    .local v7, connType:I
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 3484
    const/4 v7, 0x1

    .line 3485
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3486
    const-string/jumbo v0, "microphone"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3502
    :cond_0
    :goto_0
    iget-object v10, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v10

    .line 3503
    if-eqz v7, :cond_1

    .line 3504
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v9, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 3505
    .local v9, newConn:I
    if-eqz p2, :cond_6

    .line 3506
    or-int/2addr v9, v7

    .line 3510
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v9, v0, :cond_1

    .line 3511
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v9, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 3512
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3516
    .end local v9           #newConn:I
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3518
    invoke-static {v8, v11}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3519
    return-void

    .line 3487
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 3488
    const/4 v7, 0x2

    .line 3489
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3490
    const-string/jumbo v0, "microphone"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3491
    :cond_3
    const/16 v0, 0x800

    if-ne p1, v0, :cond_4

    .line 3492
    const/4 v7, 0x4

    .line 3493
    const-string v0, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3494
    :cond_4
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_5

    .line 3495
    const/4 v7, 0x4

    .line 3496
    const-string v0, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3497
    :cond_5
    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    .line 3498
    const/16 v7, 0x8

    .line 3499
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3508
    .restart local v9       #newConn:I
    :cond_6
    xor-int/lit8 v0, v7, -0x1

    and-int/2addr v9, v0

    goto :goto_1

    .line 3516
    .end local v9           #newConn:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 1
    .parameter "muted"
    .parameter "flags"

    .prologue
    .line 978
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 979
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 980
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 2
    .parameter "flags"
    .parameter "oldVolume"
    .parameter "newVolume"

    .prologue
    .line 968
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V

    .line 970
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .parameter "handler"
    .parameter "msg"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2461
    if-nez p2, :cond_1

    .line 2462
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2467
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2468
    :goto_0
    return-void

    .line 2463
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .parameter "originalKeyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4247
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4248
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4250
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4251
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4253
    return-void
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 2
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 951
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 952
    const/4 p1, 0x5

    .line 955
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1, p4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 957
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 958
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 959
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 964
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 6
    .parameter "rccId"
    .parameter "direction"

    .prologue
    .line 5361
    if-nez p2, :cond_1

    .line 5384
    :cond_0
    :goto_0
    return-void

    .line 5365
    :cond_1
    const/4 v2, 0x0

    .line 5366
    .local v2, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 5367
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5368
    .local v3, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5371
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v4, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_2

    .line 5372
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5376
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5377
    if-eqz v2, :cond_0

    .line 5379
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v2, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5380
    :catch_0
    move-exception v0

    .line 5381
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5376
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 6
    .parameter "newClientGeneration"

    .prologue
    .line 4733
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4734
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4735
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4736
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 4738
    :try_start_0
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4739
    :catch_0
    move-exception v0

    .line 4740
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4742
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 4746
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4716
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    .line 4718
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4727
    :cond_0
    :goto_0
    return-void

    .line 4720
    :catch_0
    move-exception v0

    .line 4721
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 4724
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4759
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 4761
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 4762
    return-void
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5488
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5506
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    :goto_0
    return-void

    .line 5491
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5495
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5499
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5503
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .locals 12
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1171
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1172
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1179
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 1180
    .local v9, numStreamTypes:I
    add-int/lit8 v11, v9, -0x1

    .local v11, streamType:I
    :goto_0
    if-ltz v11, :cond_6

    .line 1181
    invoke-direct {p0, v11}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1182
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_4

    .line 1186
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v4, :cond_3

    .line 1188
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 1189
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1190
    .local v10, set:Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1191
    .local v8, i:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1192
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1193
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1197
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1173
    .end local v9           #numStreamTypes:I
    .end local v11           #streamType:I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1197
    .restart local v8       #i:Ljava/util/Iterator;
    .restart local v9       #numStreamTypes:I
    .restart local v10       #set:Ljava/util/Set;
    .restart local v11       #streamType:I
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1199
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1200
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1180
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1203
    :cond_5
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_4

    .line 1205
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1206
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_2

    .line 1212
    :cond_6
    if-eqz p2, :cond_7

    .line 1213
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1216
    :cond_7
    return-void
.end method

.method private setStreamVolumeInt(IIIZZ)V
    .locals 7
    .parameter "streamType"
    .parameter "index"
    .parameter "device"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1008
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1011
    .local v5, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    if-eqz p2, :cond_0

    .line 1014
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 1016
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/16 v6, 0x1f4

    move v3, v2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    invoke-virtual {v5, p2, p3, p5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    .line 1028
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 8
    .parameter "needWakeLock"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4300
    const/4 v3, 0x0

    .line 4305
    .local v3, voiceIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 4306
    .local v2, pm:Landroid/os/PowerManager;
    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 4307
    .local v1, isLocked:Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4308
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4315
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    :goto_1
    if-eqz p1, :cond_0

    .line 4316
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4319
    :cond_0
    if-eqz v3, :cond_1

    .line 4320
    const/high16 v4, 0x1080

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4322
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4327
    :cond_1
    if-eqz p1, :cond_2

    .line 4328
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_2
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4331
    :cond_2
    return-void

    .end local v1           #isLocked:Z
    :cond_3
    move v1, v5

    .line 4306
    goto :goto_0

    .line 4310
    .restart local v1       #isLocked:Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4311
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_3

    .line 4324
    :catch_0
    move-exception v0

    .line 4325
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4327
    if-eqz p1, :cond_2

    .line 4328
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 4327
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_6

    .line 4328
    iget-object v5, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4327
    :cond_6
    throw v4
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .parameter "infoChangedFlags"

    .prologue
    .line 4835
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4836
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 4839
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    .line 4841
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4854
    :goto_0
    return-void

    .line 4844
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4845
    :try_start_0
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4847
    const/16 v0, 0xf

    .line 4849
    :cond_1
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4850
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4852
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4850
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .parameter "updateVolumes"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 584
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 586
    const/4 v7, 0x2

    .line 591
    .local v7, dtmfStreamAlias:I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const/4 v7, 0x0

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 595
    if-eqz p1, :cond_1

    .line 596
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 598
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 600
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 607
    :cond_1
    return-void

    .line 588
    .end local v7           #dtmfStreamAlias:I
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 589
    const/4 v7, 0x3

    .restart local v7       #dtmfStreamAlias:I
    goto :goto_0
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 530
    monitor-enter p0

    .line 531
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 534
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 540
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 4065
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    :try_start_0
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4069
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4070
    monitor-exit v2

    .line 4079
    :goto_0
    return v4

    .line 4070
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4071
    :catch_0
    move-exception v0

    .line 4075
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustLocalOrRemoteStreamVolume(II)V
    .locals 4
    .parameter "streamType"
    .parameter "direction"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 695
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    invoke-direct {p0, v2, p2, v1}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {p0, v2, p2, v1}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_0

    .line 699
    :cond_2
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0, v3, p2, v1}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public adjustMasterVolume(II)V
    .locals 7
    .parameter "steps"
    .parameter "flags"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 812
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 813
    .local v4, volume:I
    const/4 v0, 0x0

    .line 814
    .local v0, delta:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 815
    .local v3, numSteps:I
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 816
    .local v1, direction:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 817
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 818
    add-int/2addr v4, v0

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 815
    .end local v1           #direction:I
    .end local v2           #i:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 822
    .restart local v1       #direction:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p0, v4, p2}, Landroid/media/AudioService;->setMasterVolume(II)V

    .line 823
    return-void
.end method

.method public adjustStreamVolume(III)V
    .locals 25
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 736
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 737
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v24, v5, p1

    .line 743
    .local v24, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v10, v5, v24

    .line 745
    .local v10, streamState:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 747
    .local v9, device:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v10, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v19

    .line 749
    .local v19, aliasIndex:I
    const/16 v18, 0x1

    .line 752
    .local v18, adjustVolume:Z
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v5, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v23

    .line 756
    .local v23, step:I
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_2

    .line 758
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v22

    .line 760
    .local v22, ringerMode:I
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_1

    .line 761
    and-int/lit8 p3, p3, -0x11

    .line 765
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v18

    .line 766
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v5, :cond_2

    .line 768
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 774
    .end local v22           #ringerMode:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v21

    .line 777
    .local v21, oldIndex:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 778
    if-eqz v18, :cond_3

    .line 781
    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(II)V

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/16 v11, 0x1f4

    invoke-static/range {v5 .. v11}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 790
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .line 806
    .local v20, index:I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 807
    return-void

    .line 747
    .end local v18           #adjustVolume:Z
    .end local v19           #aliasIndex:I
    .end local v20           #index:I
    .end local v21           #oldIndex:I
    .end local v23           #step:I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 774
    .restart local v18       #adjustVolume:Z
    .restart local v19       #aliasIndex:I
    .restart local v23       #step:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 792
    .restart local v21       #oldIndex:I
    :cond_6
    if-eqz v18, :cond_7

    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 795
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x0

    move v14, v9

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v17}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 803
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .restart local v20       #index:I
    goto :goto_2
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 4
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    const/16 v3, -0xc8

    .line 708
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 709
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 715
    .local v0, streamType:I
    :goto_0
    if-eq v0, v3, :cond_1

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    :cond_0
    and-int/lit8 p3, p3, -0x5

    .line 722
    :cond_1
    if-ne v0, v3, :cond_3

    .line 724
    and-int/lit8 p3, p3, -0x5

    .line 726
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p3}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 730
    :goto_1
    return-void

    .line 711
    .end local v0           #streamType:I
    :cond_2
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_0

    .line 728
    :cond_3
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_1
.end method

.method public adjustVolume(II)V
    .locals 1
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 688
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 689
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 2471
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2473
    const/4 v1, 0x1

    .line 2479
    :goto_0
    return v1

    .line 2475
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2478
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 2062
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2063
    const/4 v2, 0x0

    .line 2064
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2065
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2066
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 2067
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 2068
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2065
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2070
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 2073
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2074
    if-eqz v2, :cond_2

    .line 2075
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    :cond_2
    monitor-exit v5

    .line 2078
    return-void

    .line 2077
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 4094
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4095
    return-void
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 4098
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4099
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5544
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5546
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 5547
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 5548
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 5549
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 5550
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5551
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5552
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5553
    return-void
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .parameter "streamType"
    .parameter "cb"

    .prologue
    .line 865
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 866
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 867
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 868
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 875
    :cond_0
    :goto_0
    monitor-exit v1

    .line 876
    return-void

    .line 873
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInCallMode()I
    .locals 1

    .prologue
    .line 1570
    iget v0, p0, Landroid/media/AudioService;->mState:I

    return v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 1133
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1127
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1128
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 1121
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 1139
    const/4 v0, 0x2

    .line 1141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 1084
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1085
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1565
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 5387
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 5388
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5389
    const/4 v0, 0x0

    monitor-exit v1

    .line 5391
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 5392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 5396
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 5397
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5398
    const/4 v0, 0x0

    monitor-exit v1

    .line 5400
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 5401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerMode()I
    .locals 2

    .prologue
    .line 1147
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1148
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5530
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1117
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1078
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1079
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1080
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 1251
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1252
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 1854
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1855
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 1844
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1073
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1826
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2312
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2304
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    .line 1593
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1594
    :try_start_0
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_0

    .line 1595
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v8, 0x0

    monitor-exit v9

    .line 1698
    :goto_0
    return v8

    .line 1599
    :cond_0
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1

    .line 1600
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 1697
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1602
    :cond_1
    :try_start_1
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1606
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1607
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1609
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1614
    :goto_1
    :try_start_3
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_3

    .line 1615
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_2

    .line 1617
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1618
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1620
    :cond_2
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1621
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1622
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1623
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1631
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1632
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_2
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_4

    .line 1633
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1632
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1641
    :cond_4
    const/4 v4, 0x0

    .line 1642
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_3
    const/16 v8, 0x9

    if-ge v1, v8, :cond_8

    .line 1644
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_5

    .line 1642
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1647
    :cond_5
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 1648
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1651
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1652
    .local v6, sampleId:I
    if-gtz v6, :cond_6

    .line 1653
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1655
    :cond_6
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1656
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1657
    move v4, v6

    goto :goto_4

    .line 1660
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_7
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_4

    .line 1664
    :cond_8
    if-eqz v4, :cond_b

    .line 1665
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1668
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1669
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    .line 1678
    .local v7, status:I
    :goto_5
    :try_start_5
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_9

    .line 1679
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1680
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1682
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1683
    if-eqz v7, :cond_e

    .line 1684
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_c

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_6
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v1, 0x0

    :goto_7
    const/16 v8, 0x9

    if-ge v1, v8, :cond_d

    .line 1689
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_a

    .line 1690
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1688
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1670
    .end local v7           #status:I
    :catch_1
    move-exception v0

    .line 1671
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v7, -0x1

    .line 1673
    .restart local v7       #status:I
    goto :goto_5

    .line 1675
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_b
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_5

    .line 1684
    :cond_c
    const/4 v8, -0x1

    goto :goto_6

    .line 1694
    :cond_d
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1695
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1697
    :cond_e
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1698
    if-nez v7, :cond_f

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 4343
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 4344
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4346
    :cond_0
    return-void
.end method

.method persistVibrateSetting()V
    .locals 3
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_on"

    iget v2, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public playSoundEffect(I)V
    .locals 7
    .parameter "effectType"

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1577
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1581
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1582
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/high16 v3, 0x447a

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1584
    return-void
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 4931
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4933
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    :goto_0
    return-void

    .line 4936
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4937
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4938
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 4895
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4898
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4899
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4901
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4902
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4903
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4904
    return-void

    .line 4902
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4903
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 11
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 4965
    const/4 v2, -0x1

    .line 4966
    .local v2, rccId:I
    sget-object v7, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4967
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4969
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4970
    .local v5, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4971
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4972
    .local v4, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4974
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v6, :cond_1

    .line 4976
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4979
    :cond_1
    iput-object p2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 4980
    iput-object p3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 4981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 4982
    if-nez p2, :cond_4

    .line 4984
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 5016
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5017
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5019
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5020
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5021
    return v2

    .line 4987
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_4
    :try_start_3
    iget v2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 4991
    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_5

    .line 4993
    :try_start_4
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v9, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v6, v9}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5000
    :cond_5
    :goto_1
    :try_start_5
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5001
    .local v0, b:Landroid/os/IBinder;
    new-instance v3, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v3, p0, v0, v6}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5004
    .local v3, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v6, 0x0

    :try_start_6
    invoke-interface {v0, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5010
    :goto_2
    :try_start_7
    iput-object v3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_0

    .line 5019
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v5           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    .line 5020
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 4994
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v5       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_0
    move-exception v1

    .line 4995
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error connecting remote control display to client: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5005
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_1
    move-exception v1

    .line 5007
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    const/4 v6, 0x0

    iput-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 8
    .parameter "rcd"

    .prologue
    .line 5121
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5122
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5123
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_0

    if-nez p1, :cond_1

    .line 5124
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5152
    :goto_0
    return-void

    .line 5127
    :cond_1
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5128
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5130
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 5135
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5136
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5138
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 5140
    :try_start_4
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 5141
    :catch_0
    move-exception v0

    .line 5142
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5150
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 5151
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 5149
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    const/16 v3, 0xf

    :try_start_7
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5150
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5151
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 7
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    const/4 v4, 0x0

    .line 5265
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5267
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1786
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1789
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1790
    .local v1, numStreamTypes:I
    const/4 v4, 0x0

    .local v4, streamType:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1791
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 1793
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    monitor-enter v3

    .line 1794
    :try_start_0
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 1797
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1798
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1799
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1800
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2002(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1801
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1799
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1804
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_0
    monitor-exit v3

    .line 1790
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1804
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1807
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 1810
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v7}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1811
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 2
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5189
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5191
    :try_start_0
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5192
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5193
    monitor-exit v1

    .line 5194
    return-void

    .line 5193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 3993
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3999
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    const/4 v1, 0x0

    .line 4060
    :goto_0
    return v1

    .line 4003
    :cond_0
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4004
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4005
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4058
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4011
    :cond_1
    :try_start_1
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4013
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4020
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4023
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    .line 4026
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4027
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_0

    .line 4014
    :catch_0
    move-exception v10

    .line 4016
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4031
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 4032
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4036
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4038
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4048
    :cond_4
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4051
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4055
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4056
    const/16 v1, 0xf

    :try_start_6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4057
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4058
    :try_start_7
    monitor-exit v12

    .line 4060
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4041
    :catch_1
    move-exception v10

    .line 4042
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 4057
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 8
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 2519
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2520
    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2522
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x15

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2528
    monitor-exit v7

    .line 2529
    return v6

    .line 2528
    .end local v6           #delay:I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 1849
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 1850
    return-void
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 5513
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5514
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5515
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5519
    monitor-exit v7

    .line 5520
    return-void

    .line 5515
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 5519
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .parameter "on"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1831
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    :goto_0
    return-void

    .line 1834
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1836
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1838
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1834
    goto :goto_1
.end method

.method public setInCallMode(ILandroid/os/IBinder;)V
    .locals 3
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1371
    const-string/jumbo v1, "setInCallMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    const/4 v0, 0x0

    .line 1376
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1377
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setInCallModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1378
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    if-eqz v0, :cond_0

    .line 1383
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 1378
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setInCallModeInt(ILandroid/os/IBinder;I)I
    .locals 18
    .parameter "state"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1478
    const/4 v14, 0x0

    .line 1480
    .local v14, newModeOwnerPid:I
    if-eqz p1, :cond_0

    .line 1481
    const/4 v13, 0x2

    .line 1485
    .local v13, mode:I
    :goto_0
    if-nez p2, :cond_1

    .line 1486
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 1560
    .end local v14           #newModeOwnerPid:I
    .local v15, newModeOwnerPid:I
    :goto_1
    return v15

    .line 1483
    .end local v13           #mode:I
    .end local v15           #newModeOwnerPid:I
    .restart local v14       #newModeOwnerPid:I
    :cond_0
    const/4 v13, 0x0

    .restart local v13       #mode:I
    goto :goto_0

    .line 1490
    :cond_1
    const/4 v11, 0x0

    .line 1491
    .local v11, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1492
    .local v12, iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1493
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1494
    .local v10, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_2

    .line 1495
    move-object v11, v10

    .line 1497
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 1498
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1502
    .end local v10           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_3
    const/16 v16, 0x0

    .line 1504
    .local v16, status:I
    :cond_4
    if-nez v11, :cond_5

    .line 1505
    new-instance v11, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1509
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_5
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1517
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setInCallMode(I)V

    .line 1518
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mState:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 1519
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setInCallPhoneState(I)I

    move-result v16

    .line 1520
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mState:I

    .line 1525
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    if-eq v13, v3, :cond_d

    .line 1526
    if-nez v16, :cond_b

    .line 1527
    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/AudioService;->mMode:I

    .line 1539
    :goto_4
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1541
    :cond_6
    if-nez v16, :cond_9

    .line 1542
    if-eqz v13, :cond_7

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1544
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_7
    :goto_5
    const/high16 v3, -0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v17

    .line 1550
    .local v17, streamType:I
    const/16 v3, -0xc8

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 1552
    const/16 v17, 0x3

    .line 1554
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1555
    .local v6, device:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v17

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v5

    .line 1556
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v17

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 1558
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v5           #index:I
    .end local v6           #device:I
    .end local v17           #streamType:I
    :cond_9
    move v15, v14

    .line 1560
    .end local v14           #newModeOwnerPid:I
    .restart local v15       #newModeOwnerPid:I
    goto/16 :goto_1

    .line 1510
    .end local v15           #newModeOwnerPid:I
    .restart local v14       #newModeOwnerPid:I
    :catch_0
    move-exception v9

    .line 1512
    .local v9, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1522
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1529
    :cond_b
    if-eqz v11, :cond_c

    .line 1530
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1531
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1534
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1537
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1546
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v14

    goto/16 :goto_5
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 7
    .parameter "state"
    .parameter "flags"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 1062
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1063
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1065
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1067
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1069
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 1065
    goto :goto_0
.end method

.method public setMasterVolume(II)V
    .locals 2
    .parameter "volume"
    .parameter "flags"

    .prologue
    .line 1089
    if-gez p1, :cond_1

    .line 1090
    const/4 p1, 0x0

    .line 1094
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    .line 1095
    return-void

    .line 1091
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 1092
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 4
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v3, -0x1

    .line 1347
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    if-lt p1, v3, :cond_0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1357
    if-ne p1, v3, :cond_2

    .line 1358
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1360
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1361
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    if-eqz v0, :cond_0

    .line 1365
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 1361
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .locals 17
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1391
    const/4 v13, 0x0

    .line 1392
    .local v13, newModeOwnerPid:I
    if-nez p2, :cond_0

    .line 1393
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1474
    .end local v13           #newModeOwnerPid:I
    .local v14, newModeOwnerPid:I
    :goto_0
    return v14

    .line 1397
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_0
    const/4 v11, 0x0

    .line 1398
    .local v11, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1399
    .local v12, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1400
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1401
    .local v10, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 1402
    move-object v11, v10

    .line 1404
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 1405
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1409
    .end local v10           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v15, 0x0

    .line 1411
    .local v15, status:I
    :cond_3
    if-nez p1, :cond_8

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v11, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1415
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1416
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1436
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    .line 1438
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_a

    .line 1439
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioService;->mState:I

    .line 1443
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v15

    .line 1444
    if-nez v15, :cond_b

    .line 1447
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mMode:I

    .line 1459
    :goto_3
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1461
    :cond_5
    if-nez v15, :cond_7

    .line 1462
    if-eqz p1, :cond_6

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1464
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_6
    :goto_4
    const/high16 v3, -0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v16

    .line 1470
    .local v16, streamType:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1471
    .local v6, device:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v16

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v5

    .line 1472
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v3, v16

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .end local v5           #index:I
    .end local v6           #device:I
    .end local v16           #streamType:I
    :cond_7
    move v14, v13

    .line 1474
    .end local v13           #newModeOwnerPid:I
    .restart local v14       #newModeOwnerPid:I
    goto/16 :goto_0

    .line 1419
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_8
    if-nez v11, :cond_9

    .line 1420
    new-instance v11, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1424
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_9
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1433
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 1425
    :catch_0
    move-exception v9

    .line 1427
    .local v9, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1441
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioService;->mState:I

    goto/16 :goto_2

    .line 1449
    :cond_b
    if-eqz v11, :cond_c

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1451
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1454
    :cond_c
    const/16 p1, 0x0

    goto/16 :goto_3

    .line 1457
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1466
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v13

    goto/16 :goto_4
.end method

.method public setPlaybackInfoForRcc(III)V
    .locals 7
    .parameter "rccId"
    .parameter "what"
    .parameter "value"

    .prologue
    .line 5197
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5199
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 8
    .parameter "vol"

    .prologue
    .line 5406
    const/4 v1, -0x1

    .line 5407
    .local v1, rccId:I
    iget-object v6, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v6

    .line 5408
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v5, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 5409
    monitor-exit v6

    .line 5432
    :cond_0
    :goto_0
    return-void

    .line 5411
    :cond_1
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v1, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5412
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5413
    const/4 v3, 0x0

    .line 5414
    .local v3, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 5415
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5416
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5417
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5418
    .local v2, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v1, :cond_2

    .line 5420
    iget-object v3, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5424
    .end local v2           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5425
    if-eqz v3, :cond_0

    .line 5427
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v3, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5428
    :catch_0
    move-exception v0

    .line 5429
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5412
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #rvo:Landroid/media/IRemoteVolumeObserver;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 5424
    .restart local v3       #rvo:Landroid/media/IRemoteVolumeObserver;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    const/4 v1, 0x1

    .line 1160
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 1161
    const/4 p1, 0x0

    .line 1163
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1164
    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1166
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 1168
    :cond_1
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .parameter "player"

    .prologue
    .line 5524
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5525
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5526
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 7
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 1815
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1818
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1820
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1818
    goto :goto_1
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 1
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1053
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1041
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1042
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 1041
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 1046
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 9
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 827
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 828
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    aget-object v8, v0, v1

    .line 830
    .local v8, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 832
    .local v3, device:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_0
    invoke-virtual {v8, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v7

    .line 835
    .local v7, oldIndex:I
    mul-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 838
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 841
    :cond_0
    if-nez p2, :cond_4

    .line 842
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    move v6, v5

    .line 844
    .local v6, newRingerMode:I
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 852
    :goto_2
    invoke-virtual {p0, v6}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 855
    .end local v6           #newRingerMode:I
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 857
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result p2

    .line 860
    invoke-direct {p0, p1, v7, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 861
    return-void

    .end local v7           #oldIndex:I
    :cond_2
    move v0, v4

    .line 832
    goto :goto_0

    .restart local v7       #oldIndex:I
    :cond_3
    move v6, v4

    .line 842
    goto :goto_1

    .line 850
    :cond_4
    const/4 v6, 0x2

    .restart local v6       #newRingerMode:I
    goto :goto_2

    .end local v6           #newRingerMode:I
    :cond_5
    move v5, v4

    .line 857
    goto :goto_3
.end method

.method public setVibrateSetting(II)V
    .locals 7
    .parameter "vibrateType"
    .parameter "vibrateSetting"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1263
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    .line 2505
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2506
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2507
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x14

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2513
    monitor-exit v7

    .line 2514
    return-void

    .line 2513
    .end local v6           #delay:I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1230
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 1245
    :goto_0
    :pswitch_0
    return v1

    .line 1232
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1235
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1238
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1861
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1866
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .parameter "observer"

    .prologue
    .line 5535
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5536
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5537
    .local v0, routes:Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5538
    monitor-exit v2

    return-object v0

    .line 5539
    .end local v0           #routes:Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1871
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1879
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1876
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_0

    .line 1877
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    .line 1707
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1708
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 1709
    monitor-exit v4

    .line 1733
    :goto_0
    return-void

    .line 1712
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1713
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1715
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1716
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1717
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1716
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1720
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    const/16 v3, 0x9

    if-ge v0, v3, :cond_4

    .line 1721
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 1720
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1724
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 1725
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1726
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1727
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 1732
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1730
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1731
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1732
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .parameter "clientId"

    .prologue
    .line 4084
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4085
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4086
    monitor-exit v1

    .line 4087
    return-void

    .line 4086
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 4945
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4947
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    :goto_0
    return-void

    .line 4950
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4951
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4952
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 4912
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4915
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4916
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 4917
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 4918
    if-eqz v0, :cond_0

    .line 4920
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4922
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4923
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4924
    return-void

    .line 4922
    .end local v0           #topOfStackWillChange:Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 4923
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 5
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 5030
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5031
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5032
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5033
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5034
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5035
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5039
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5041
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5042
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_0

    .line 5045
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 5046
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 5045
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5046
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5047
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .parameter "rcd"

    .prologue
    .line 5162
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5164
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_1

    .line 5166
    :cond_0
    monitor-exit v4

    .line 5186
    :goto_0
    return-void

    .line 5169
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5170
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5173
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5174
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5176
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 5178
    :try_start_1
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5179
    :catch_0
    move-exception v0

    .line 5180
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5185
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
