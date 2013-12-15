.class public Landroid/hardware/fmradio/FmReceiver;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmReceiver.java"


# static fields
.field private static final CTRL_BASE:I = 0x8000000

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FM_CTRL_ANTENNA:I = 0x8000012

.field private static final FM_CTRL_THRESHOLD:I = 0x8000013

.field public static final FM_RX_AUDIO_MODE_MONO:I = 0x1

.field public static final FM_RX_AUDIO_MODE_STEREO:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_0S:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_1S:I = 0x1

.field public static final FM_RX_DWELL_PERIOD_2S:I = 0x2

.field public static final FM_RX_DWELL_PERIOD_3S:I = 0x3

.field public static final FM_RX_DWELL_PERIOD_4S:I = 0x4

.field public static final FM_RX_DWELL_PERIOD_5S:I = 0x5

.field public static final FM_RX_DWELL_PERIOD_6S:I = 0x6

.field public static final FM_RX_DWELL_PERIOD_7S:I = 0x7

.field public static final FM_RX_LOW_POWER_MODE:I = 0x1

.field public static final FM_RX_MUTE:I = 0x1

.field public static final FM_RX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_RX_RDS_GRP_AF_EBL:I = 0x4

.field public static final FM_RX_RDS_GRP_PS_EBL:I = 0x2

.field public static final FM_RX_RDS_GRP_PS_SIMPLE_EBL:I = 0x10

.field public static final FM_RX_RDS_GRP_RT_EBL:I = 0x1

.field private static final FM_RX_RSSI_LEVEL_STRONG:I = -0x60

.field private static final FM_RX_RSSI_LEVEL_VERY_STRONG:I = -0x5a

.field private static final FM_RX_RSSI_LEVEL_VERY_WEAK:I = -0x69

.field private static final FM_RX_RSSI_LEVEL_WEAK:I = -0x64

.field public static final FM_RX_SEARCHDIR_DOWN:I = 0x0

.field public static final FM_RX_SEARCHDIR_UP:I = 0x1

.field public static final FM_RX_SIGNAL_STRENGTH_STRONG:I = 0x2

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_STRONG:I = 0x3

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_WEAK:I = 0x0

.field public static final FM_RX_SIGNAL_STRENGTH_WEAK:I = 0x1

.field public static final FM_RX_SRCHLIST_MAX_STATIONS:I = 0xc

.field public static final FM_RX_SRCHLIST_MODE_STRONG:I = 0x2

.field public static final FM_RX_SRCHLIST_MODE_STRONGEST:I = 0x8

.field public static final FM_RX_SRCHLIST_MODE_WEAK:I = 0x3

.field public static final FM_RX_SRCHLIST_MODE_WEAKEST:I = 0x9

.field public static final FM_RX_SRCHRDS_MODE_SCAN_PTY:I = 0x5

.field public static final FM_RX_SRCHRDS_MODE_SEEK_AF:I = 0x7

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PI:I = 0x6

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PTY:I = 0x4

.field public static final FM_RX_SRCH_MODE_SCAN:I = 0x1

.field public static final FM_RX_SRCH_MODE_SEEK:I = 0x0

.field public static final FM_RX_UNMUTE:I = 0x0

.field static final STD_BUF_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "FMRadio"

.field private static final TAVARUA_BUF_AF_LIST:I = 0x5

.field private static final TAVARUA_BUF_EVENTS:I = 0x1

.field private static final TAVARUA_BUF_MAX:I = 0x6

.field private static final TAVARUA_BUF_PS_RDS:I = 0x3

.field private static final TAVARUA_BUF_RAW_RDS:I = 0x4

.field private static final TAVARUA_BUF_RT_RDS:I = 0x2

.field private static final TAVARUA_BUF_SRCH_LIST:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field public static mSearchState:I


# instance fields
.field private mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

.field private mContext:Landroid/content/Context;

.field private mUseQcomFm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    .line 50
    const-string v0, "FMRadio"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    .line 301
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 302
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 303
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .locals 2
    .parameter "devicePath"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    .line 317
    new-instance v1, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v1}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 318
    new-instance v1, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v1}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 321
    iput-object p2, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 322
    const-string/jumbo v1, "ro.config.fm_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, fmType:Ljava/lang/String;
    const-string v1, "libqcomfm_if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    .line 326
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;Landroid/content/Context;)V
    .locals 3
    .parameter "devicePath"
    .parameter "callback"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    .line 330
    const-string/jumbo v1, "ro.config.fm_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, fmType:Ljava/lang/String;
    const-string v1, "libqcomfm_if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    .line 334
    :cond_0
    iget-boolean v1, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v1, :cond_1

    .line 335
    new-instance v1, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v1}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 336
    new-instance v1, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v1}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 339
    iput-object p2, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 354
    :goto_0
    return-void

    .line 341
    :cond_1
    new-instance v1, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v1}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 342
    new-instance v1, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v1}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 343
    iput-object p3, p0, Landroid/hardware/fmradio/FmReceiver;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {p0, p1}, Landroid/hardware/fmradio/FmReceiver;->acquire(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 346
    sget-boolean v1, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FMRadio"

    const-string v2, "FmReceiver:acquire(devicePath) fail\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    sget-boolean v1, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "FMRadio"

    const-string v2, "FmReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    invoke-virtual {p0, p2}, Landroid/hardware/fmradio/FmReceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    .line 352
    new-instance v1, Landroid/hardware/fmradio/FmRxRdsData;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v1, v2}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    goto :goto_0
.end method

.method private cancelSearchQcomFm()Z
    .locals 3

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .line 1214
    .local v0, state:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1215
    const-string v1, "FMRadio"

    const-string v2, "cancelSearch: Cancelling the on going search operation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 1217
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->cancelSearch(I)V

    .line 1219
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private disableQcomFm()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 555
    const/4 v2, 0x0

    .line 560
    .local v2, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 561
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x6

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    .line 610
    const-string v3, "FMRadio"

    const-string v4, "disable: CURRENT-STATE : FMRxOn ---> NEW-STATE : FMTurningOff"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    .line 613
    const/4 v2, 0x1

    .end local v2           #status:Z
    :goto_1
    return v2

    .line 563
    .restart local v2       #status:Z
    :pswitch_1
    const-string v3, "FMRadio"

    const-string v4, "FM already tuned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v2, 0x0

    goto :goto_1

    .line 566
    :pswitch_2
    const-string v3, "FMRadio"

    const-string v4, "disable: Cancelling the on going search operation prior to disabling FM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 568
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->cancelSearch()Z

    .line 569
    const-string v3, "FMRadio"

    const-string v4, "disable: Wait for the state to change from : Search ---> FMRxOn"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 587
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_3
    const-string v3, "FMRadio"

    const-string v4, "disable: FM not yet turned On..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_2
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 595
    if-ne v1, v5, :cond_0

    .line 596
    const-string v3, "FMRadio"

    const-string v4, "disable: FM in bad state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    :catch_1
    move-exception v0

    .line 591
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 605
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_4
    const-string v3, "FMRadio"

    const-string v4, "disable: FM is getting turned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private enableAFjumpQcomFm(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2035
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 2037
    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 2038
    :cond_0
    const-string v3, "FMRadio"

    const-string v4, "enableAFjump: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_1
    :goto_0
    return v2

    .line 2042
    :cond_2
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 2044
    .local v0, re:I
    if-nez v0, :cond_1

    .line 2047
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, p1}, Landroid/hardware/fmradio/FmRxRdsData;->enableAFjump(Z)I

    move-result v0

    .line 2049
    if-nez v0, :cond_1

    move v2, v3

    .line 2050
    goto :goto_0
.end method

.method private enableQcomFm(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 6
    .parameter "configSettings"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 424
    const/4 v1, 0x0

    .line 429
    .local v1, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .line 430
    .local v0, state:I
    if-eq v0, v5, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 431
    :cond_0
    const-string v3, "FMRadio"

    const-string v4, "enable: FM already turned On and running"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 458
    .end local v1           #status:Z
    .local v2, status:I
    :goto_0
    return v2

    .line 434
    .end local v2           #status:I
    .restart local v1       #status:Z
    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 435
    const-string v3, "FMRadio"

    const-string v4, "FM is in the process of turning off.Pls wait for sometime."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 436
    .restart local v2       #status:I
    goto :goto_0

    .line 438
    .end local v2           #status:I
    :cond_2
    if-ne v0, v4, :cond_3

    .line 439
    const-string v3, "FMRadio"

    const-string v4, "FM is in the process of turning On.Pls wait for sometime."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 440
    .restart local v2       #status:I
    goto :goto_0

    .line 443
    .end local v2           #status:I
    :cond_3
    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    .line 444
    const-string v3, "FMRadio"

    const-string v4, "enable: CURRENT-STATE : FMOff ---> NEW-STATE : FMRxStarting"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-super {p0, p1, v5}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v1

    .line 447
    if-ne v1, v5, :cond_4

    .line 449
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-virtual {p0, v3}, Landroid/hardware/fmradio/FmReceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v1

    .line 450
    new-instance v3, Landroid/hardware/fmradio/FmRxRdsData;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v3, v4}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    :goto_1
    move v2, v1

    .line 458
    .restart local v2       #status:I
    goto :goto_0

    .line 453
    .end local v2           #status:I
    :cond_4
    const/4 v1, 0x0

    .line 454
    const-string v3, "FMRadio"

    const-string v4, "enable: Error while turning FM On"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v3, "FMRadio"

    const-string v4, "enable: CURRENT-STATE : FMRxStarting ---> NEW-STATE : FMOff"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    goto :goto_1
.end method

.method private getPSInfoQcomFm()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 10

    .prologue
    const/4 v8, 0x3

    .line 1502
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 1503
    .local v0, buff:[B
    const/4 v4, 0x0

    .line 1504
    .local v4, piLower:I
    const/4 v3, 0x0

    .line 1506
    .local v3, piHigher:I
    sget v7, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v7, v0, v8}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1510
    aget-byte v7, v0, v8

    and-int/lit16 v4, v7, 0xff

    .line 1511
    const/4 v7, 0x2

    aget-byte v7, v0, v7

    and-int/lit16 v3, v7, 0xff

    .line 1512
    shl-int/lit8 v7, v3, 0x8

    or-int v2, v7, v4

    .line 1513
    .local v2, pi:I
    iget-object v7, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v7, v2}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1514
    iget-object v7, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v8, 0x1

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x1f

    invoke-virtual {v7, v8}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1515
    const/4 v7, 0x0

    aget-byte v7, v0, v7

    and-int/lit8 v1, v7, 0xf

    .line 1519
    .local v1, numOfPs:I
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x5

    mul-int/lit8 v8, v1, 0x8

    invoke-direct {v5, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 1520
    .local v5, rdsStr:Ljava/lang/String;
    iget-object v7, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v7, v5}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    .end local v5           #rdsStr:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v7

    .line 1522
    :catch_0
    move-exception v6

    .line 1524
    .local v6, x:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, "FMRadio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of PS names "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRTInfoQcomFm()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1582
    const/16 v6, 0x80

    new-array v0, v6, [B

    .line 1583
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 1584
    .local v3, piLower:I
    const/4 v2, 0x0

    .line 1586
    .local v2, piHigher:I
    sget v6, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v6, v0, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1587
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1591
    .local v4, rdsStr:Ljava/lang/String;
    const/4 v6, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v3, v6, 0xff

    .line 1592
    aget-byte v6, v0, v7

    and-int/lit16 v2, v6, 0xff

    .line 1593
    shl-int/lit8 v6, v2, 0x8

    or-int v1, v6, v3

    .line 1594
    .local v1, pi:I
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v1}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1595
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit8 v7, v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1598
    const/4 v6, 0x5

    const/4 v7, 0x0

    :try_start_0
    aget-byte v7, v0, v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1599
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v4}, Landroid/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    :goto_0
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v6

    .line 1601
    :catch_0
    move-exception v5

    .line 1603
    .local v5, x:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "FMRadio"

    const-string v7, "StringIndexOutOfBoundsException ..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getSearchState()I
    .locals 1

    .prologue
    .line 666
    sget v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    return v0
.end method

.method private getSignalThresholdQcomFm()I
    .locals 9

    .prologue
    const/16 v8, -0x60

    const/16 v7, -0x64

    .line 1792
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v2

    .line 1794
    .local v2, state:I
    if-eqz v2, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 1795
    :cond_0
    const-string v4, "FMRadio"

    const-string v5, "getSignalThreshold: Device currently busy in executing another command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v3, -0x1

    .line 1838
    :goto_0
    return v3

    .line 1798
    :cond_1
    const/4 v3, 0x0

    .line 1799
    .local v3, threshold:I
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 1800
    .local v0, rmssiThreshold:I
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal Threshhold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/16 v4, -0x69

    if-ge v4, v0, :cond_2

    if-gt v0, v7, :cond_2

    .line 1804
    const/16 v1, -0x64

    .line 1819
    .local v1, signalStrength:I
    :goto_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1822
    :sswitch_0
    const/4 v3, 0x0

    .line 1823
    goto :goto_0

    .line 1806
    .end local v1           #signalStrength:I
    :cond_2
    if-ge v7, v0, :cond_3

    if-gt v0, v8, :cond_3

    .line 1808
    const/16 v1, -0x60

    .restart local v1       #signalStrength:I
    goto :goto_1

    .line 1810
    .end local v1           #signalStrength:I
    :cond_3
    if-ge v8, v0, :cond_4

    .line 1812
    const/16 v1, -0x5a

    .restart local v1       #signalStrength:I
    goto :goto_1

    .line 1816
    .end local v1           #signalStrength:I
    :cond_4
    const/16 v1, -0x69

    .restart local v1       #signalStrength:I
    goto :goto_1

    .line 1825
    :sswitch_1
    const/4 v3, 0x1

    .line 1826
    goto :goto_0

    .line 1828
    :sswitch_2
    const/4 v3, 0x2

    .line 1829
    goto :goto_0

    .line 1831
    :sswitch_3
    const/4 v3, 0x3

    .line 1832
    goto :goto_0

    .line 1819
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_0
        -0x64 -> :sswitch_1
        -0x60 -> :sswitch_2
        -0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method private registerRdsGroupProcessingQcomFm(I)Z
    .locals 5
    .parameter "fmGrpsToProc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1986
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    if-nez v4, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return v2

    .line 1989
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 1991
    .local v1, state:I
    if-eqz v1, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 1992
    :cond_2
    const-string v3, "FMRadio"

    const-string/jumbo v4, "registerRdsGroupProcessing: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1997
    :cond_3
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1999
    .local v0, re:I
    if-nez v0, :cond_0

    .line 2002
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, p1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOptions(I)I

    move-result v0

    .line 2004
    if-nez v0, :cond_0

    move v2, v3

    .line 2005
    goto :goto_0
.end method

.method static setSearchState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 685
    sput p0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    .line 686
    sget v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    packed-switch v0, :pswitch_data_0

    .line 697
    :goto_0
    return-void

    .line 690
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    goto :goto_0

    .line 694
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSignalThresholdQcomFm(I)Z
    .locals 7
    .parameter "threshold"

    .prologue
    .line 1359
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v3

    .line 1361
    .local v3, state:I
    if-eqz v3, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1362
    :cond_0
    const-string v4, "FMRadio"

    const-string/jumbo v5, "setSignalThreshold: Device currently busy in executing another command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x0

    .line 1398
    :cond_1
    :goto_0
    return v0

    .line 1365
    :cond_2
    const/4 v0, 0x1

    .line 1367
    .local v0, bStatus:Z
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal Threshhold input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v2, 0x0

    .line 1370
    .local v2, rssiLev:I
    packed-switch p1, :pswitch_data_0

    .line 1386
    const/4 v0, 0x0

    .line 1387
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1373
    :pswitch_0
    const/16 v2, -0x69

    .line 1391
    :goto_1
    if-eqz v0, :cond_1

    .line 1392
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 1394
    .local v1, re:I
    if-eqz v1, :cond_1

    .line 1395
    const/4 v0, 0x0

    goto :goto_0

    .line 1376
    .end local v1           #re:I
    :pswitch_1
    const/16 v2, -0x64

    .line 1377
    goto :goto_1

    .line 1379
    :pswitch_2
    const/16 v2, -0x60

    .line 1380
    goto :goto_1

    .line 1382
    :pswitch_3
    const/16 v2, -0x5a

    .line 1383
    goto :goto_1

    .line 1370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 3

    .prologue
    .line 1204
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSearch():mUseQcomFm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/fmradio/FmReceiver;->cancelSearchQcomFm()Z

    move-result v0

    .line 1207
    :goto_0
    return v0

    .line 1206
    :cond_0
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->cancelSearch(I)V

    .line 1207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configureSpurTable()I
    .locals 2

    .prologue
    .line 2444
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->configureSpurTable(I)I

    move-result v0

    return v0
.end method

.method public disable()Z
    .locals 5

    .prologue
    .line 634
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_0

    .line 636
    invoke-direct {p0}, Landroid/hardware/fmradio/FmReceiver;->disableQcomFm()Z

    move-result v2

    .line 643
    :goto_0
    return v2

    .line 638
    :cond_0
    iget-object v2, p0, Landroid/hardware/fmradio/FmReceiver;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 639
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "fm_on=false"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 641
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v1

    .line 643
    .local v1, status:Z
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 6
    .parameter "configSettings"

    .prologue
    const/4 v2, 0x1

    .line 497
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable():mUseQcomFm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-boolean v3, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v3, :cond_0

    .line 499
    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmReceiver;->enableQcomFm(Landroid/hardware/fmradio/FmConfig;)Z

    move-result v2

    .line 512
    :goto_0
    return v2

    .line 505
    :cond_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 506
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v3, "fm_on=true"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 508
    invoke-super {p0, p1, v2}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v1

    .line 512
    .local v1, status:Z
    goto :goto_0
.end method

.method public enableAFjump(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 2028
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAFjump():mUseQcomFm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmReceiver;->enableAFjumpQcomFm(Z)Z

    move-result v0

    .line 2030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAFInfo()[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 1631
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAFInfo():mUseQcomFm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/16 v4, 0x80

    new-array v1, v4, [B

    .line 1633
    .local v1, buff:[B
    const/16 v4, 0x28

    new-array v0, v4, [I

    .line 1634
    .local v0, AfList:[I
    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v4, :cond_1

    .line 1637
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v5, 0x5

    invoke-static {v4, v1, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1639
    aget-byte v4, v1, v7

    if-lez v4, :cond_0

    aget-byte v4, v1, v7

    const/16 v5, 0x19

    if-le v4, v5, :cond_2

    .line 1640
    :cond_0
    const/4 v0, 0x0

    .line 1657
    .end local v0           #AfList:[I
    :cond_1
    return-object v0

    .line 1642
    .restart local v0       #AfList:[I
    :cond_2
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v3

    .line 1643
    .local v3, lowerBand:I
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low band "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_3
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_4
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_5
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_6
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_7
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_8
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    aget-byte v4, v1, v7

    if-ge v2, v4, :cond_1

    .line 1652
    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v3

    aput v4, v0, v2

    .line 1653
    sget-boolean v4, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFMState()I
    .locals 1

    .prologue
    .line 2289
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v0

    .line 2290
    .local v0, currFMState:I
    return v0
.end method

.method public getIntDet()I
    .locals 3

    .prologue
    .line 2159
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->IntDet(I)I

    move-result v0

    .line 2160
    .local v0, re:I
    return v0
.end method

.method public getIoverc()I
    .locals 3

    .prologue
    .line 2137
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->IovercControl(I)I

    move-result v0

    .line 2138
    .local v0, re:I
    return v0
.end method

.method public getMpxDcc()I
    .locals 3

    .prologue
    .line 2182
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->Mpx_Dcc(I)I

    move-result v0

    .line 2183
    .local v0, re:I
    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getOffChannelThreshold(I)I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 2

    .prologue
    .line 2322
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getOnChannelThreshold(I)I

    move-result v0

    return v0
.end method

.method public getPSInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 4

    .prologue
    .line 1481
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPSInfo():mUseQcomFm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-boolean v1, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/fmradio/FmReceiver;->getPSInfoQcomFm()Landroid/hardware/fmradio/FmRxRdsData;

    move-result-object v1

    .line 1497
    :goto_0
    return-object v1

    .line 1487
    :cond_0
    const-string v1, "dev.fm.rds.ps"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, rdsStr:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, v0}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_1
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    goto :goto_0

    .line 1493
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getPowerMode()I
    .locals 2

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getPwrMode(I)I

    move-result v0

    return v0
.end method

.method public getRTInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 5

    .prologue
    .line 1552
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRTInfo():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/hardware/fmradio/FmReceiver;->getRTInfoQcomFm()Landroid/hardware/fmradio/FmRxRdsData;

    move-result-object v2

    .line 1577
    :goto_0
    return-object v2

    .line 1560
    :cond_0
    const-string v2, "dev.fm.rds.rt"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, rdsStr:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v2, v0}, Landroid/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    goto :goto_0

    .line 1573
    :catch_0
    move-exception v1

    .line 1575
    .local v1, x:Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v2, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FMRadio"

    const-string v3, "StringIndexOutOfBoundsException ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getRawRDS(I)[B
    .locals 6
    .parameter "numBlocks"

    .prologue
    const/4 v5, 0x0

    .line 2260
    mul-int/lit8 v3, p1, 0x3

    new-array v1, v3, [B

    .line 2263
    .local v1, rawRds:[B
    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    mul-int/lit8 v4, p1, 0x3

    invoke-static {v3, v1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getRawRdsNative(I[BI)I

    move-result v2

    .line 2265
    .local v2, re:I
    mul-int/lit8 v3, p1, 0x3

    if-ne v2, v3, :cond_0

    .line 2275
    .end local v1           #rawRds:[B
    :goto_0
    return-object v1

    .line 2268
    .restart local v1       #rawRds:[B
    :cond_0
    if-gtz v2, :cond_1

    .line 2269
    const/4 v1, 0x0

    goto :goto_0

    .line 2271
    :cond_1
    new-array v0, v2, [B

    .line 2273
    .local v0, buff:[B
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 2275
    goto :goto_0
.end method

.method public getRmssiDelta()I
    .locals 4

    .prologue
    .line 2214
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->getRmssiDelta(I)I

    move-result v0

    .line 2215
    .local v0, re:I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value of RMSSI Delta is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    return v0
.end method

.method public getRssi()I
    .locals 5

    .prologue
    const/16 v1, 0x64

    .line 2107
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->getRSSINative(I)I

    move-result v0

    .line 2108
    .local v0, rssi:I
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRssi():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_1

    move v1, v0

    .line 2117
    :cond_0
    :goto_0
    return v1

    .line 2112
    :cond_1
    add-int/lit8 v0, v0, 0x78

    .line 2114
    if-gt v0, v1, :cond_0

    move v1, v0

    .line 2117
    goto :goto_0
.end method

.method public getRssiLimit()[I
    .locals 2

    .prologue
    .line 1750
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1752
    .local v0, rssiLimits:[I
    return-object v0

    .line 1750
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getSINR()I
    .locals 4

    .prologue
    .line 2368
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->getSINR(I)I

    move-result v0

    .line 2369
    .local v0, re:I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value of SINR is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    return v0
.end method

.method public getSINRThreshold()I
    .locals 2

    .prologue
    .line 2402
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getSINRThreshold(I)I

    move-result v0

    return v0
.end method

.method public getSINRsamples()I
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getSINRsamples(I)I

    move-result v0

    return v0
.end method

.method public getSignalThreshold()I
    .locals 3

    .prologue
    .line 1785
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSignalThreshold():mUseQcomFm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/fmradio/FmReceiver;->getSignalThresholdQcomFm()I

    move-result v0

    .line 1788
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStationList()[I
    .locals 5

    .prologue
    .line 2072
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationList():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_1

    .line 2075
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .line 2077
    .local v0, state:I
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2078
    :cond_0
    const-string v2, "FMRadio"

    const-string v3, "getStationList: Device currently busy in executing another command."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v1, 0x0

    .line 2086
    .end local v0           #state:I
    :goto_0
    return-object v1

    .line 2082
    :cond_1
    const/16 v2, 0x64

    new-array v1, v2, [I

    .line 2084
    .local v1, stnList:[I
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v2, v3}, Landroid/hardware/fmradio/FmRxControls;->stationList(I)[I

    move-result-object v1

    .line 2086
    goto :goto_0
.end method

.method public getTunedFrequency()I
    .locals 5

    .prologue
    .line 1439
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTunedFrequency():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_2

    .line 1441
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 1443
    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1444
    :cond_0
    const-string v2, "FMRadio"

    const-string v3, "getTunedFrequency: Device currently busy in executing another command."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/4 v0, -0x1

    .line 1452
    .end local v1           #state:I
    :cond_1
    :goto_0
    return v0

    .line 1448
    :cond_2
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 1450
    .local v0, frequency:I
    sget-boolean v2, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 390
    sget-boolean v1, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FMRadio"

    const-string/jumbo v2, "registerClient in receiver "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/fmradio/FmTransceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 394
    .local v0, status:Z
    return v0
.end method

.method public registerRdsGroupProcessing(I)Z
    .locals 5
    .parameter "fmGrpsToProc"

    .prologue
    const/4 v1, 0x1

    .line 1973
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRdsGroupProcessing():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmReceiver;->registerRdsGroupProcessingQcomFm(I)Z

    move-result v1

    .line 1981
    :cond_0
    :goto_0
    return v1

    .line 1976
    :cond_1
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v2, v1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1978
    .local v0, re:I
    if-eqz v0, :cond_0

    .line 1979
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 536
    const/4 v1, 0x0

    .line 537
    .local v1, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .line 539
    .local v0, state:I
    if-nez v0, :cond_0

    .line 540
    const-string v3, "FMRadio"

    const-string v4, "FM already turned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return v2

    .line 544
    :cond_0
    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    .line 545
    const-string v2, "FMRadio"

    const-string/jumbo v3, "reset: NEW-STATE : FMState_Turned_Off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->unregisterClient()Z

    move-result v1

    .line 549
    const-string v2, "/dev/radio0"

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->release(Ljava/lang/String;)Z

    move v2, v1

    .line 551
    goto :goto_0
.end method

.method public searchStationList(IIII)Z
    .locals 9
    .parameter "mode"
    .parameter "direction"
    .parameter "maximumStations"
    .parameter "pty"

    .prologue
    .line 1119
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStationList():mUseQcomFm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_1

    .line 1121
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v8

    .line 1123
    .local v8, state:I
    if-eqz v8, :cond_0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 1124
    :cond_0
    const-string v0, "FMRadio"

    const-string/jumbo v1, "searchStationList: Device currently busy in executing another command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v0, 0x0

    .line 1175
    .end local v8           #state:I
    :goto_0
    return v0

    .line 1129
    :cond_1
    const/4 v6, 0x1

    .line 1130
    .local v6, bStatus:Z
    const/4 v7, 0x0

    .line 1132
    .local v7, re:I
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_2
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_3
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: maximumStations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_4
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    .line 1144
    const/4 v6, 0x0

    .line 1146
    :cond_6
    if-ltz p3, :cond_7

    const/16 v0, 0xc

    if-le p3, v0, :cond_8

    .line 1149
    :cond_7
    const/4 v6, 0x0

    .line 1151
    :cond_8
    if-eqz p2, :cond_9

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    .line 1154
    const/4 v6, 0x0

    .line 1157
    :cond_9
    if-eqz v6, :cond_b

    .line 1159
    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    .line 1160
    :cond_a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_c

    const/4 p1, 0x2

    .line 1161
    :goto_1
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    .line 1166
    :goto_2
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_b

    .line 1167
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 1168
    const-string v0, "FMRadio"

    const-string/jumbo v1, "searchStationList: CURRENT-STATE : FMRxOn ---> NEW-STATE : SearchInProg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_b
    if-nez v7, :cond_e

    .line 1173
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1160
    :cond_c
    const/4 p1, 0x3

    goto :goto_1

    .line 1164
    :cond_d
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    goto :goto_2

    .line 1175
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public searchStations(III)Z
    .locals 10
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 804
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations3():mUseQcomFm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v8

    .line 809
    .local v8, state:I
    if-eqz v8, :cond_0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 810
    :cond_0
    const-string v0, "FMRadio"

    const-string/jumbo v1, "searchStations: Device currently busy in executing another command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v8           #state:I
    :goto_0
    return v5

    .line 814
    :cond_1
    const/4 v7, 0x1

    .line 816
    .local v7, bStatus:Z
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FMRadio"

    const-string v1, "Basic search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, v9, :cond_4

    .line 822
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_3
    const/4 v7, 0x0

    .line 825
    :cond_4
    if-ltz p2, :cond_5

    const/4 v0, 0x7

    if-le p2, v0, :cond_7

    .line 828
    :cond_5
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_6
    const/4 v7, 0x0

    .line 831
    :cond_7
    if-eqz p3, :cond_9

    if-eq p3, v9, :cond_9

    .line 834
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_8
    const/4 v7, 0x0

    .line 838
    :cond_9
    if-eqz v7, :cond_d

    .line 840
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_a
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 842
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_d

    .line 843
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v8

    .line 844
    .restart local v8       #state:I
    if-nez v8, :cond_b

    .line 845
    const-string v0, "FMRadio"

    const-string/jumbo v1, "searchStations: CURRENT-STATE : FMState_Off (unexpected)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 849
    :cond_b
    if-nez p1, :cond_e

    .line 850
    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 853
    :cond_c
    :goto_1
    const-string v0, "FMRadio"

    const-string/jumbo v1, "searchStations: CURRENT-STATE : FMRxOn ---> NEW-STATE : SearchInProg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #state:I
    :cond_d
    move v5, v9

    .line 856
    goto/16 :goto_0

    .line 851
    .restart local v8       #state:I
    :cond_e
    if-ne p1, v9, :cond_c

    .line 852
    invoke-static {v9}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    goto :goto_1
.end method

.method public searchStations(IIIII)Z
    .locals 10
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const/4 v3, 0x7

    const/4 v9, 0x1

    .line 986
    const/4 v7, 0x1

    .line 987
    .local v7, bStatus:Z
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seachStations5():mUseQcomFm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_1

    .line 989
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v8

    .line 991
    .local v8, state:I
    if-eqz v8, :cond_0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 992
    :cond_0
    const-string v0, "FMRadio"

    const-string/jumbo v1, "searchStations: Device currently busy in executing another command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x0

    .line 1032
    .end local v8           #state:I
    :goto_0
    return v0

    .line 997
    :cond_1
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FMRadio"

    const-string v1, "RDS search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_4

    .line 1006
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_3
    const/4 v7, 0x0

    .line 1009
    :cond_4
    if-lt p2, v9, :cond_5

    if-le p2, v3, :cond_7

    .line 1012
    :cond_5
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_6
    const/4 v7, 0x0

    .line 1015
    :cond_7
    if-eqz p3, :cond_9

    if-eq p3, v9, :cond_9

    .line 1018
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_8
    const/4 v7, 0x0

    .line 1022
    :cond_9
    if-eqz v7, :cond_f

    .line 1024
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_a
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: dwellPeriod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_b
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_c
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_d
    sget-boolean v0, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStations: pi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_e
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 1030
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v0, :cond_f

    invoke-static {v9}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    :cond_f
    move v0, v9

    .line 1032
    goto/16 :goto_0
.end method

.method public setHiLoInj(I)V
    .locals 3
    .parameter "inj"

    .prologue
    .line 2198
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setHiLoInj(II)I

    move-result v0

    .line 2199
    .local v0, re:I
    return-void
.end method

.method public setMuteMode(I)Z
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1245
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMuteMode():mUseQcomFm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-boolean v3, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v3, :cond_1

    .line 1247
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .line 1249
    .local v0, state:I
    if-eqz v0, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1250
    :cond_0
    const-string v2, "FMRadio"

    const-string/jumbo v3, "setMuteMode: Device currently busy in executing another command."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v0           #state:I
    :goto_0
    return v1

    .line 1254
    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 1266
    goto :goto_0

    .line 1257
    :pswitch_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v1}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_1

    .line 1260
    :pswitch_1
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v3, v2}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_1

    .line 1254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOffChannelThreshold(I)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2338
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setOffChannelThreshold(II)I

    move-result v0

    .line 2339
    .local v0, re:I
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2306
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setOnChannelThreshold(II)I

    move-result v0

    .line 2307
    .local v0, re:I
    return-void
.end method

.method public setPowerMode(I)Z
    .locals 5
    .parameter "powerMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1691
    if-ne p1, v1, :cond_0

    .line 1692
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v1}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 1698
    .local v0, re:I
    :goto_0
    if-nez v0, :cond_1

    .line 1700
    :goto_1
    return v1

    .line 1695
    .end local v0           #re:I
    :cond_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1700
    goto :goto_1
.end method

.method public setRdsGroupOptions(IIZ)Z
    .locals 7
    .parameter "enRdsGrpsMask"
    .parameter "rdsBuffSize"
    .parameter "enRdsChangeFilter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1893
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRdsGroupOptions():mUseQcomFm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v4, :cond_2

    .line 1895
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 1897
    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 1898
    :cond_0
    const-string v3, "FMRadio"

    const-string/jumbo v4, "setRdsGroupOptions: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    .end local v1           #state:I
    :cond_1
    :goto_0
    return v2

    .line 1903
    :cond_2
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1905
    .local v0, re:I
    if-nez v0, :cond_1

    .line 1908
    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v4, :cond_3

    .line 1909
    iget-object v4, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, p1, p2, p3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsGrpOptions(IIZ)I

    move-result v0

    .line 1910
    if-nez v0, :cond_1

    move v2, v3

    .line 1911
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1914
    goto :goto_0
.end method

.method public setRmssiDel(I)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 2232
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setRmssiDel(II)I

    move-result v0

    .line 2233
    .local v0, re:I
    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2386
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setSINRThreshold(II)I

    move-result v0

    .line 2387
    .local v0, re:I
    return-void
.end method

.method public setSINRsamples(I)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2418
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setSINRsamples(II)I

    move-result v0

    .line 2419
    .local v0, re:I
    return-void
.end method

.method public setSignalThreshold(I)Z
    .locals 5
    .parameter "threshold"

    .prologue
    .line 1334
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignalThreashold():mUseQcomFm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmReceiver;->setSignalThresholdQcomFm(I)Z

    move-result v0

    .line 1354
    :cond_0
    :goto_0
    return v0

    .line 1336
    :cond_1
    const/4 v0, 0x1

    .line 1339
    .local v0, bStatus:Z
    if-gtz p1, :cond_2

    const/4 v2, 0x3

    if-ge p1, v2, :cond_3

    .line 1342
    :cond_2
    const/4 v0, 0x0

    .line 1343
    sget-boolean v2, Landroid/hardware/fmradio/FmReceiver;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid threshol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_3
    if-eqz v0, :cond_0

    .line 1348
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v3, 0x8000013

    invoke-static {v2, v3, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 1350
    .local v1, re:I
    if-eqz v1, :cond_0

    .line 1351
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMode(Z)Z
    .locals 6
    .parameter "stereoEnable"

    .prologue
    const/4 v2, 0x0

    .line 1292
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStereoMode():mUseQcomFm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-boolean v3, p0, Landroid/hardware/fmradio/FmReceiver;->mUseQcomFm:Z

    if-eqz v3, :cond_2

    .line 1294
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .line 1296
    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1297
    :cond_0
    const-string v3, "FMRadio"

    const-string/jumbo v4, "setStereoMode: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    .end local v1           #state:I
    :cond_1
    :goto_0
    return v2

    .line 1301
    :cond_2
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, p1}, Landroid/hardware/fmradio/FmRxControls;->stereoControl(IZ)I

    move-result v0

    .line 1303
    .local v0, re:I
    if-nez v0, :cond_1

    .line 1304
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setVolume(I)Z
    .locals 1
    .parameter "vol"

    .prologue
    .line 1271
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->unregisterClient()Z

    move-result v0

    .line 419
    .local v0, status:Z
    return v0
.end method

.method public updateSpurFreq(IIZ)I
    .locals 2
    .parameter "freq"
    .parameter "rmssi"
    .parameter "enable"

    .prologue
    .line 2439
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/fmradio/FmRxControls;->updateSpurTable(IIIZ)I

    move-result v0

    return v0
.end method
