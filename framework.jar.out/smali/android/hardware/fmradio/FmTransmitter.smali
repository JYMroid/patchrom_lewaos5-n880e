.class public Landroid/hardware/fmradio/FmTransmitter;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fmradio/FmTransmitter$TransmitterCallbacks;,
        Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    }
.end annotation


# static fields
.field public static final FM_TX_LOW_POWER_MODE:I = 0x1

.field public static final FM_TX_MAX_PS_LEN:I = 0x61

.field public static final FM_TX_MAX_RT_LEN:I = 0x3f

.field public static final FM_TX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_TX_PWR_LEVEL_0:I = 0x0

.field public static final FM_TX_PWR_LEVEL_1:I = 0x1

.field public static final FM_TX_PWR_LEVEL_2:I = 0x2

.field public static final FM_TX_PWR_LEVEL_3:I = 0x3

.field public static final FM_TX_PWR_LEVEL_4:I = 0x4

.field public static final FM_TX_PWR_LEVEL_5:I = 0x5

.field public static final FM_TX_PWR_LEVEL_6:I = 0x6

.field public static final FM_TX_PWR_LEVEL_7:I = 0x7

.field private static final MAX_PS_CHARS:I = 0x61

.field private static final MAX_PS_REP_COUNT:I = 0xf

.field private static final MAX_RDS_GROUP_BUF_SIZE:I = 0x3e

.field public static final RDS_GRPS_TX_PAUSE:I = 0x0

.field public static final RDS_GRPS_TX_RESUME:I = 0x1

.field public static final RDS_GRPS_TX_STOP:I = 0x2

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPSStarted:Z

.field private mRTStarted:Z

.field private mTxCallbacks:Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 39
    const-string v0, "FmTransmitter"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->TAG:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 88
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 118
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 119
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 120
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .locals 2
    .parameter "path"
    .parameter "callbacks"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 39
    const-string v0, "FmTransmitter"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->TAG:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 88
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 140
    invoke-virtual {p0, p1}, Landroid/hardware/fmradio/FmTransmitter;->acquire(Ljava/lang/String;)Z

    .line 141
    invoke-virtual {p0, p2}, Landroid/hardware/fmradio/FmTransmitter;->registerTransmitClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    .line 142
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 143
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 144
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;)V
    .locals 2
    .parameter "path"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 39
    const-string v0, "FmTransmitter"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->TAG:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 88
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 129
    new-instance v0, Landroid/hardware/fmradio/FmTxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmTxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;

    .line 130
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 131
    iput-object p2, p0, Landroid/hardware/fmradio/FmTransmitter;->mTxCallbacks:Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;

    .line 132
    return-void
.end method

.method private disableQcomFm()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 260
    const/4 v2, 0x0

    .line 263
    .local v2, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->getFMState()I

    move-result v1

    .line 264
    .local v1, state:I
    sparse-switch v1, :sswitch_data_0

    .line 294
    :cond_0
    const/4 v4, 0x6

    invoke-static {v4}, Landroid/hardware/fmradio/FmTransmitter;->setFMPowerState(I)V

    .line 295
    const-string v4, "FmTransmitter"

    const-string v5, "disable: CURRENT-STATE : FMTxOn ---> NEW-STATE : FMTurningOff"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-boolean v4, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    if-eqz v4, :cond_1

    .line 298
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopPSInfo()Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    const-string v4, "FmTransmitter"

    const-string v5, "FmTrasmitter:stopPSInfo failed\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    iget-boolean v4, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    if-eqz v4, :cond_2

    .line 303
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopRTInfo()Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    const-string v4, "FmTransmitter"

    const-string v5, "FmTrasmitter:stopRTInfo failed\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/hardware/fmradio/FmTransmitter;->transmitRdsGroupControl(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 308
    const-string v4, "FmTransmitter"

    const-string v5, "FmTrasmitter:transmitRdsGroupControl failed\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_3
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move v2, v3

    .line 311
    .end local v2           #status:Z
    :goto_0
    return v2

    .line 266
    .restart local v2       #status:Z
    :sswitch_0
    const-string v4, "FmTransmitter"

    const-string v5, "FM already tuned Off."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 267
    goto :goto_0

    .line 273
    :sswitch_1
    const-string v4, "FmTransmitter"

    const-string v5, "disable: FM not yet turned On..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->getFMState()I

    move-result v1

    .line 281
    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 282
    const-string v3, "FmTransmitter"

    const-string v4, "disable: FM in bad state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v0           #e:Ljava/lang/InterruptedException;
    :sswitch_2
    const-string v3, "FmTransmitter"

    const-string v4, "disable: FM is getting turned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private enableQcomFm(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 7
    .parameter "configSettings"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, status:Z
    const-string v3, "FmTransmitter"

    const-string v4, "enableQcomFm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->getFMState()I

    move-result v0

    .line 204
    .local v0, state:I
    if-ne v0, v5, :cond_0

    .line 205
    const-string v3, "FmTransmitter"

    const-string v4, "enable: FM Tx already turned On and running"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 226
    .end local v1           #status:Z
    .local v2, status:I
    :goto_0
    return v2

    .line 207
    .end local v2           #status:I
    .restart local v1       #status:Z
    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 208
    const-string v3, "FmTransmitter"

    const-string v4, "FM is in the process of turning off.Pls wait for sometime."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 209
    .restart local v2       #status:I
    goto :goto_0

    .line 210
    .end local v2           #status:I
    :cond_1
    if-ne v0, v6, :cond_2

    .line 211
    const-string v3, "FmTransmitter"

    const-string v4, "FM is in the process of turning On.Pls wait for sometime."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 212
    .restart local v2       #status:I
    goto :goto_0

    .line 214
    .end local v2           #status:I
    :cond_2
    invoke-static {v6}, Landroid/hardware/fmradio/FmTransmitter;->setFMPowerState(I)V

    .line 215
    const-string v3, "FmTransmitter"

    const-string v4, "enable: CURRENT-STATE : FMOff ---> NEW-STATE : FMTxStarting"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0, p1, v5}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v1

    .line 217
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 218
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransmitter;->mTxCallbacks:Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;

    invoke-virtual {p0, v3}, Landroid/hardware/fmradio/FmTransmitter;->registerTransmitClient(Landroid/hardware/fmradio/FmTransmitterCallbacks;)Z

    .line 219
    new-instance v3, Landroid/hardware/fmradio/FmRxRdsData;

    sget v4, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v3, v4}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    :goto_1
    move v2, v1

    .line 226
    .restart local v2       #status:I
    goto :goto_0

    .line 221
    .end local v2           #status:I
    :cond_3
    const/4 v1, 0x0

    .line 222
    const-string v3, "FmTransmitter"

    const-string v4, "enable: failed to turn On FM TX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "FmTransmitter"

    const-string v4, "enable: CURRENT-STATE : FMTxStarting ---> NEW-STATE : FMOff"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/hardware/fmradio/FmTransmitter;->setFMPowerState(I)V

    goto :goto_1
.end method

.method private stopPSInfoQcomFm()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 686
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "stopPSInfoQcomFm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, err:I
    sget v2, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->stopPSNative(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 689
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "return for startPS is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return v1

    .line 692
    :cond_0
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "stopPSNative is successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 694
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private stopRTInfoQcomFm()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 863
    sget v1, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->stopRTNative(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 864
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "stopRTInfoQcomFm is failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_0
    return v0

    .line 867
    :cond_0
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "mRTStarted is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iput-boolean v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 869
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private transmitRdsGroupControlQcomFm(I)Z
    .locals 2
    .parameter "ctrlCmd"

    .prologue
    .line 1092
    const/4 v0, 0x1

    .line 1096
    .local v0, bStatus:Z
    const/4 v1, 0x0

    .line 1097
    .local v1, val:I
    packed-switch p1, :pswitch_data_0

    .line 1103
    const/4 v0, 0x0

    .line 1105
    :pswitch_0
    return v0

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public disable()Z
    .locals 3

    .prologue
    .line 250
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransmitter;->disableQcomFm()Z

    move-result v2

    .line 256
    :goto_0
    return v2

    .line 255
    :cond_0
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v1

    .line 256
    .local v1, status:Z
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 3
    .parameter "configSettings"

    .prologue
    .line 183
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmTransmitter;->enableQcomFm(Landroid/hardware/fmradio/FmConfig;)Z

    move-result v2

    .line 196
    :goto_0
    return v2

    .line 192
    :cond_0
    const/4 v2, 0x2

    invoke-super {p0, p1, v2}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v1

    .line 196
    .local v1, status:Z
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getFMState()I
    .locals 1

    .prologue
    .line 1144
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v0

    .line 1145
    .local v0, currFMState:I
    return v0
.end method

.method public getPSFeatures()Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    new-instance v1, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;

    invoke-direct {v1, p0}, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;-><init>(Landroid/hardware/fmradio/FmTransmitter;)V

    .line 459
    .local v1, psFeatures:Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    const-string v2, "FmTransmitter"

    const-string v3, "getPSFeatures:use Qcom Fm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v2, 0x61

    iput v2, v1, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSCharacters:I

    .line 463
    const/16 v2, 0xf

    iput v2, v1, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSStringRepeatCount:I

    .line 468
    :goto_0
    return-object v1

    .line 466
    :cond_0
    iput v3, v1, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSCharacters:I

    .line 467
    iput v3, v1, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSStringRepeatCount:I

    goto :goto_0
.end method

.method public getRdsGroupBufSize()I
    .locals 2

    .prologue
    .line 932
    const-string/jumbo v1, "ro.config.fm_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, fmType:Ljava/lang/String;
    const-string v1, "libqcomfm_if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    const/16 v1, 0x3e

    .line 936
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x1

    return v0
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->unregisterTransmitClient()Z

    move-result v0

    .line 337
    return v0
.end method

.method public setPSInfo([Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "psStr"
    .parameter "pty"
    .parameter "repeatCount"

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, bStatus:Z
    return v0
.end method

.method public setPSRTProgramType(I)Z
    .locals 1
    .parameter "pty"

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, bStatus:Z
    return v0
.end method

.method public setPowerMode(I)Z
    .locals 5
    .parameter "powerMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 408
    if-ne p1, v1, :cond_0

    .line 409
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {v3, v4, v1}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 415
    .local v0, re:I
    :goto_0
    if-nez v0, :cond_1

    .line 417
    :goto_1
    return v1

    .line 412
    .end local v0           #re:I
    :cond_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_0

    :cond_1
    move v1, v2

    .line 417
    goto :goto_1
.end method

.method public setRTInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "rtStr"

    .prologue
    .line 829
    const/4 v0, 0x0

    .line 831
    .local v0, bStatus:Z
    return v0
.end method

.method public setStation(I)Z
    .locals 4
    .parameter "frequencyKHz"

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, status:Z
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    if-eqz v2, :cond_0

    .line 365
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter:setStation mPSStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopPSInfo()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 377
    .end local v0           #status:Z
    .local v1, status:I
    :goto_0
    return v1

    .line 368
    .end local v1           #status:I
    .restart local v0       #status:Z
    :cond_0
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    if-eqz v2, :cond_1

    .line 369
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter:setStation mRTStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopRTInfo()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #status:I
    goto :goto_0

    .line 372
    .end local v1           #status:I
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/hardware/fmradio/FmTransmitter;->transmitRdsGroupControl(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .restart local v1       #status:I
    goto :goto_0

    .line 374
    .end local v1           #status:I
    :cond_2
    const-string v2, "FmTransmitter"

    const-string v3, "FmTrasmitter:SetStation\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-super {p0, p1}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v0

    move v1, v0

    .line 377
    .restart local v1       #status:I
    goto :goto_0
.end method

.method public setTxPowerLevel(I)Z
    .locals 4
    .parameter "powLevel"

    .prologue
    .line 1126
    const/4 v0, 0x1

    .line 1127
    .local v0, bStatus:Z
    sget v2, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setTxPowerLevelNative(II)I

    move-result v1

    .line 1128
    .local v1, err:I
    if-gez v1, :cond_0

    .line 1129
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxPowerLevel is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v0, 0x0

    .line 1132
    .end local v0           #bStatus:Z
    :cond_0
    return v0
.end method

.method public startPSInfo(Ljava/lang/String;III)Z
    .locals 6
    .parameter "psStr"
    .parameter "pty"
    .parameter "pi"
    .parameter "repeatCount"

    .prologue
    const/16 v4, 0x61

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    if-ltz p2, :cond_0

    const/16 v3, 0x1f

    if-le p2, v3, :cond_1

    .line 534
    :cond_0
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "pTy is expected from 0 to 31"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    return v1

    .line 538
    :cond_1
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setPTYNative(II)I

    move-result v0

    .line 539
    .local v0, err:I
    if-gez v0, :cond_2

    .line 540
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPTYNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_2
    if-ltz p3, :cond_3

    const v3, 0xffff

    if-le p3, v3, :cond_4

    .line 545
    :cond_3
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "pi is expected from 0 to 65535"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_4
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setPINative(II)I

    move-result v0

    .line 551
    if-gez v0, :cond_5

    .line 552
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPINative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_5
    if-ltz p4, :cond_6

    const/16 v3, 0xf

    if-le p4, v3, :cond_7

    .line 557
    :cond_6
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "repeat count is expected from 0 to 15"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :cond_7
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->setPSRepeatCountNative(II)I

    move-result v0

    .line 562
    if-gez v0, :cond_8

    .line 563
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPSRepeatCountNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_9

    .line 570
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 574
    :cond_9
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->startPSNative(ILjava/lang/String;I)I

    move-result v0

    .line 575
    const-string v3, "FmTransmitter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return for startPS is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-gez v0, :cond_a

    .line 578
    const-string v2, "FmTransmitter"

    const-string v3, "FmReceiverJNI.startPSNative returned false\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 582
    :cond_a
    const-string v1, "FmTransmitter"

    const-string/jumbo v3, "startPSNative is successful"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    move v1, v2

    .line 584
    goto/16 :goto_0
.end method

.method public startRTInfo(Ljava/lang/String;II)Z
    .locals 5
    .parameter "rtStr"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const/16 v4, 0x3f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 744
    if-ltz p2, :cond_0

    const/16 v3, 0x1f

    if-le p2, v3, :cond_1

    .line 745
    :cond_0
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "pTy is expected from 0 to 31"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return v1

    .line 749
    :cond_1
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setPTYNative(II)I

    move-result v0

    .line 750
    .local v0, err:I
    if-gez v0, :cond_2

    .line 751
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPTYNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_2
    if-ltz p3, :cond_3

    const v3, 0xffff

    if-le p3, v3, :cond_4

    .line 756
    :cond_3
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "pi is expected from 0 to 65535"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_4
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setPINative(II)I

    move-result v0

    .line 761
    if-gez v0, :cond_5

    .line 762
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPINative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_6

    .line 770
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 773
    :cond_6
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->startRTNative(ILjava/lang/String;I)I

    move-result v0

    .line 775
    if-gez v0, :cond_7

    .line 776
    const-string v2, "FmTransmitter"

    const-string v3, "FmReceiverJNI.startRTNative returned false\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    :cond_7
    const-string v1, "FmTransmitter"

    const-string/jumbo v3, "mRTStarted is true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iput-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    move v1, v2

    .line 781
    goto :goto_0
.end method

.method public stopPSInfo()Z
    .locals 3

    .prologue
    .line 675
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopPSInfoQcomFm()Z

    move-result v0

    .line 682
    :goto_0
    return v0

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 682
    .local v0, bStatus:Z
    goto :goto_0
.end method

.method public stopRTInfo()Z
    .locals 3

    .prologue
    .line 852
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopRTInfoQcomFm()Z

    move-result v0

    .line 858
    :goto_0
    return v0

    .line 856
    :cond_0
    const/4 v0, 0x0

    .line 858
    .local v0, bStatus:Z
    goto :goto_0
.end method

.method public transmitRdsContGroups([BJ)I
    .locals 1
    .parameter "rdsGroups"
    .parameter "numGroupsToTransmit"

    .prologue
    .line 1057
    const/4 v0, -0x1

    return v0
.end method

.method public transmitRdsGroupControl(I)Z
    .locals 3
    .parameter "ctrlCmd"

    .prologue
    .line 1082
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmTransmitter;->transmitRdsGroupControlQcomFm(I)Z

    move-result v0

    .line 1088
    :goto_0
    return v0

    .line 1086
    :cond_0
    const/4 v0, 0x0

    .line 1088
    .local v0, bStatus:Z
    goto :goto_0
.end method

.method public transmitRdsGroups([BJ)I
    .locals 1
    .parameter "rdsGroups"
    .parameter "numGroupsToTransmit"

    .prologue
    .line 997
    const/4 v0, -0x1

    return v0
.end method
