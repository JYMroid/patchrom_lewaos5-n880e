.class Landroid/hardware/fmradio/FmRxControls;
.super Ljava/lang/Object;
.source "FmRxControls.java"


# static fields
.field private static final CTRL_BASE:I = 0x8000000

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final FM_ANALOG_PATH:I = 0x1

.field private static final FM_CTRL_AUDIO_MUTE:I = 0x8000012

.field private static final FM_CTRL_EMPHASIS:I = 0x800000c

.field private static final FM_CTRL_LP_MODE:I = 0x8000011

.field private static final FM_CTRL_RDSGROUP_MASK:I = 0x8000006

.field private static final FM_CTRL_RDSGROUP_PROC:I = 0x8000010

.field private static final FM_CTRL_RDSON:I = 0x800000f

.field private static final FM_CTRL_RDS_STD:I = 0x800000d

.field private static final FM_CTRL_REGION:I = 0x8000007

.field private static final FM_CTRL_SCANDWELL:I = 0x8000002

.field private static final FM_CTRL_SIGNAL_TH:I = 0x8000008

.field private static final FM_CTRL_SPACING:I = 0x800000e

.field private static final FM_CTRL_SRCHMODE:I = 0x8000001

.field private static final FM_CTRL_SRCHON:I = 0x8000003

.field private static final FM_CTRL_SRCH_CNT:I = 0x800000b

.field private static final FM_CTRL_SRCH_PI:I = 0x800000a

.field private static final FM_CTRL_SRCH_PTY:I = 0x8000009

.field private static final FM_CTRL_STATE:I = 0x8000004

.field private static final FM_CTRL_THRESHOLD:I = 0x8000013

.field private static final FM_CTRL_TRANSMIT_MODE:I = 0x8000005

.field static final FM_DIGITAL_PATH:I = 0x0

.field static final FREQ_MUL:I = 0x3e8

.field static final SCAN_BACKWARD:I = 0x3

.field static final SCAN_FORWARD:I = 0x2

.field static final SEEK_BACKWARD:I = 0x1

.field static final SEEK_FORWARD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmRxControls"

.field private static final V4L2_CID_AUDIO_MUTE:I = 0x980909

.field private static final V4L2_CID_BASE:I = 0x980900

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_SINR:I = 0x800002c

.field private static final V4L2_CID_PRIVATE_SPUR_FREQ:I = 0x8000031

.field private static final V4L2_CID_PRIVATE_SPUR_FREQ_RMSSI:I = 0x8000032

.field private static final V4L2_CID_PRIVATE_SPUR_SELECTION:I = 0x8000033

.field private static final V4L2_CID_PRIVATE_TAVARUA_AF_JUMP:I = 0x800001b

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_HLSI:I = 0x800001d

.field private static final V4L2_CID_PRIVATE_TAVARUA_INTDET:I = 0x8000019

.field private static final V4L2_CID_PRIVATE_TAVARUA_IOVERC:I = 0x8000018

.field private static final V4L2_CID_PRIVATE_TAVARUA_LP_MODE:I = 0x8000011

.field private static final V4L2_CID_PRIVATE_TAVARUA_MPX_DCC:I = 0x800001a

.field private static final V4L2_CID_PRIVATE_TAVARUA_OFF_CHANNEL_THRESHOLD:I = 0x800002e

.field private static final V4L2_CID_PRIVATE_TAVARUA_ON_CHANNEL_THRESHOLD:I = 0x800002d

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_RSSI_DELTA:I = 0x800001c

.field private static final V4L2_CID_PRIVATE_TAVARUA_SCANDWELL:I = 0x8000002

.field private static final V4L2_CID_PRIVATE_TAVARUA_SET_AUDIO_PATH:I = 0x8000029

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field private static final V4L2_CID_PRIVATE_TAVARUA_SINR_SAMPLES:I = 0x8000030

.field private static final V4L2_CID_PRIVATE_TAVARUA_SINR_THRESHOLD:I = 0x800002f

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHMODE:I = 0x8000001

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHON:I = 0x8000003

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_CNT:I = 0x800000b

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PI:I = 0x800000a

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PTY:I = 0x8000009

.field private static final V4L2_CID_PRIVATE_TAVARUA_STATE:I = 0x8000004

.field private static final V4L2_CID_PRIVATE_TAVARUA_TRANSMIT_MODE:I = 0x8000005

.field private static final V4L2_CTRL_CLASS_USER:I = 0x980000


# instance fields
.field private mFreq:I

.field private mPrgmId:I

.field private mPrgmType:I

.field private mScanTime:I

.field private mSrchDir:I

.field private mSrchListMode:I

.field private mSrchMode:I

.field private mStateMute:Z

.field private mStateStereo:Z

.field private sOffData:I

.field private sOnData:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "FmRxControls"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fmOffQcomFm(I)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 187
    const-string v0, "FmRxControls"

    const-string v1, "fmOffQcomFm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v0, 0x8000004

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 189
    return-void
.end method

.method private fmOnQcomFm(II)V
    .locals 3
    .parameter "fd"
    .parameter "device"

    .prologue
    .line 156
    const v1, 0x8000004

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/hardware/fmradio/FmRxControls;->setAudioPath(IZ)I

    .line 158
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->SetCalibrationNative(I)I

    move-result v0

    .line 159
    .local v0, re:I
    if-eqz v0, :cond_0

    .line 160
    const-string v1, "FmRxControls"

    const-string v2, "Calibration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method private getPwrModeQcomFm(I)I
    .locals 3
    .parameter "fd"

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, re:I
    const-string v1, "FmRxControls"

    const-string v2, "getPwrModeQcomFm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const v1, 0x8000011

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 746
    return v0
.end method

.method private muteControlQcomFm(IZ)V
    .locals 4
    .parameter "fd"
    .parameter "on"

    .prologue
    const v3, 0x980909

    .line 210
    const-string v0, "FmRxControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "muteControlQcomFm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p2, :cond_0

    .line 213
    const/4 v0, 0x3

    invoke-static {p1, v3, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v3, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method private searchStationListQcomFm(IIIII)I
    .locals 3
    .parameter "fd"
    .parameter "mode"
    .parameter "preset_num"
    .parameter "dir"
    .parameter "pty"

    .prologue
    .line 446
    const-string v1, "FmRxControls"

    const-string/jumbo v2, "searchStationListQcomFm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const v1, 0x8000001

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 452
    .local v0, re:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 477
    :goto_0
    return v1

    .line 457
    :cond_0
    const v1, 0x800000b

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 458
    if-eqz v0, :cond_1

    move v1, v0

    .line 459
    goto :goto_0

    .line 463
    :cond_1
    if-lez p5, :cond_2

    .line 464
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 466
    :cond_2
    if-eqz v0, :cond_3

    move v1, v0

    .line 467
    goto :goto_0

    .line 472
    :cond_3
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 473
    if-eqz v0, :cond_4

    move v1, v0

    .line 474
    goto :goto_0

    .line 477
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private searchStationsQcomFm(IIIIII)V
    .locals 5
    .parameter "fd"
    .parameter "mode"
    .parameter "dwell"
    .parameter "dir"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const v4, 0x8000001

    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, re:I
    const-string v1, "FmRxControls"

    const-string/jumbo v2, "searchStationsQcomFm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Dwell is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PTY is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-static {p1, v4, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 645
    const v1, 0x8000002

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 647
    if-eqz p5, :cond_0

    .line 649
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 652
    :cond_0
    if-eqz p6, :cond_1

    .line 654
    const v1, 0x800000a

    invoke-static {p1, v1, p6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 657
    :cond_1
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 659
    return-void
.end method

.method private setLowPwrModeQcomFm(IZ)I
    .locals 4
    .parameter "fd"
    .parameter "lpmOn"

    .prologue
    const v3, 0x8000011

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, re:I
    const-string v1, "FmRxControls"

    const-string/jumbo v2, "setLowPwrModeQcomFm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-eqz p2, :cond_0

    .line 715
    const/4 v1, 0x1

    invoke-static {p1, v3, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 721
    :goto_0
    return v0

    .line 718
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v3, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    goto :goto_0
.end method

.method private stationListQcomFm(I)[I
    .locals 17
    .parameter "fd"

    .prologue
    .line 539
    const/4 v2, 0x0

    .line 540
    .local v2, freq:I
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .line 541
    .local v5, j:I
    const/4 v10, 0x0

    .line 542
    .local v10, station_num:I
    const/4 v7, 0x0

    .line 544
    .local v7, real_freq:F
    const/16 v13, 0x64

    new-array v8, v13, [B

    .line 545
    .local v8, sList:[B
    const/4 v11, 0x0

    .line 546
    .local v11, tmpFreqByte1:I
    const/4 v12, 0x0

    .line 548
    .local v12, tmpFreqByte2:I
    const-string v13, "FmRxControls"

    const-string/jumbo v14, "stationListQcomFm"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static/range {p1 .. p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    double-to-float v6, v13

    .line 551
    .local v6, lowBand:F
    invoke-static/range {p1 .. p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getUpperBandNative(I)I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    double-to-float v3, v13

    .line 553
    .local v3, highBand:F
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lowBand: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "highBand: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v0, v8, v13}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 558
    const/4 v13, 0x0

    aget-byte v13, v8, v13

    if-lez v13, :cond_0

    .line 559
    const/4 v13, 0x0

    aget-byte v10, v8, v13

    .line 561
    :cond_0
    add-int/lit8 v13, v10, 0x1

    new-array v9, v13, [I

    .line 562
    .local v9, stationList:[I
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "station_num: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v10, :cond_3

    .line 565
    const/4 v2, 0x0

    .line 566
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Byte1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v4, 0x2

    add-int/lit8 v15, v15, 0x1

    aget-byte v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Byte2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v4, 0x2

    add-int/lit8 v15, v15, 0x2

    aget-byte v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v8, v13

    and-int/lit16 v11, v13, 0xff

    .line 569
    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v8, v13

    and-int/lit16 v12, v13, 0xff

    .line 570
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " tmpFreqByte1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " tmpFreqByte2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    and-int/lit8 v13, v11, 0x3

    shl-int/lit8 v2, v13, 0x8

    .line 573
    or-int/2addr v2, v12

    .line 574
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " freq: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    mul-int/lit8 v13, v2, 0x32

    int-to-float v13, v13

    const/high16 v14, 0x447a

    mul-float/2addr v14, v6

    add-float v7, v13, v14

    .line 576
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " real_freq: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/high16 v13, 0x447a

    mul-float/2addr v13, v6

    cmpg-float v13, v7, v13

    if-ltz v13, :cond_1

    const/high16 v13, 0x447a

    mul-float/2addr v13, v3

    cmpl-float v13, v7, v13

    if-lez v13, :cond_2

    .line 578
    :cond_1
    const-string v13, "FmRxControls"

    const-string v14, "Frequency out of band limits"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 581
    :cond_2
    float-to-int v13, v7

    aput v13, v9, v5

    .line 582
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " stationList: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v9, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 589
    :cond_3
    const/4 v13, 0x0

    :try_start_0
    aput v13, v9, v10
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_2
    return-object v9

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v13, "FmRxControls"

    const-string v14, "ArrayIndexOutOfBoundsException !!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public IntDet(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 233
    const v1, 0x8000019

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 234
    .local v0, intdet:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOVERC value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v0
.end method

.method public IovercControl(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 224
    const v1, 0x8000018

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 225
    .local v0, ioverc:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOVERC value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v0
.end method

.method public Mpx_Dcc(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 243
    const v1, 0x800001a

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 244
    .local v0, mpx_dcc:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPX_DCC value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v0
.end method

.method public cancelSearch(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 686
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->cancelSearchNative(I)I

    .line 687
    return-void
.end method

.method public configureSpurTable(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 781
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->configureSpurTable(I)I

    move-result v0

    return v0
.end method

.method public fmOff(I)Z
    .locals 5
    .parameter "fd"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    const v4, 0x8000004

    invoke-static {p1, v4, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 167
    const-string/jumbo v4, "ro.config.fm_type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, fmType:Ljava/lang/String;
    const-string v4, "libqcomfm_if"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmRxControls;->fmOffQcomFm(I)V

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    invoke-static {}, Lcom/broadcom/bt/service/framework/BtFmPowerManager;->getProxy()Lcom/broadcom/bt/service/framework/BtFmPowerManager;

    move-result-object v0

    .line 173
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/BtFmPowerManager;
    if-nez v0, :cond_2

    .line 174
    const-string v2, "FmRxControls"

    const-string v4, "UNABLE TO TURN OFF FM!!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BtFmPowerManager;->disableFm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    const-string v2, "FmRxControls"

    const-string v4, "UNABLE TO TURN OFF FM!!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 179
    goto :goto_0
.end method

.method public fmOn(II)Z
    .locals 6
    .parameter "fd"
    .parameter "device"

    .prologue
    const v5, 0x8000004

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 131
    const-string/jumbo v4, "ro.config.fm_type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, fmType:Ljava/lang/String;
    const-string v4, "libqcomfm_if"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/hardware/fmradio/FmRxControls;->fmOnQcomFm(II)V

    .line 134
    invoke-static {p1, v5, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 151
    :goto_0
    return v2

    .line 139
    :cond_0
    invoke-static {}, Lcom/broadcom/bt/service/framework/BtFmPowerManager;->getProxy()Lcom/broadcom/bt/service/framework/BtFmPowerManager;

    move-result-object v0

    .line 140
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/BtFmPowerManager;
    if-nez v0, :cond_1

    .line 141
    const-string v2, "FmRxControls"

    const-string v4, "UNABLE TO TURN ON FM!!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BtFmPowerManager;->enableFm()Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    const-string v2, "FmRxControls"

    const-string v4, "UNABLE TO TURN ON FM!!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 146
    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p1, v5, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    return v0
.end method

.method public getOffChannelThreshold(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 292
    const v0, 0x800002e

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 284
    const v0, 0x800002d

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getPwrMode(I)I
    .locals 3
    .parameter "fd"

    .prologue
    .line 727
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmRxControls;->getPwrModeQcomFm(I)I

    move-result v1

    .line 736
    :goto_0
    return v1

    .line 732
    :cond_0
    const/4 v1, 0x0

    .line 736
    .local v1, re:I
    goto :goto_0
.end method

.method public getRmssiDelta(I)I
    .locals 2
    .parameter "fd"

    .prologue
    .line 338
    const v1, 0x800001c

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 339
    .local v0, rmssiDel:I
    return v0
.end method

.method public getSINR(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 394
    const v0, 0x800002c

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getSINRThreshold(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 322
    const v0, 0x800002f

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getSINRsamples(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 330
    const v0, 0x8000030

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getTunedFrequency(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 377
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 378
    .local v0, frequency:I
    sget-boolean v1, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTunedFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return v0
.end method

.method public muteControl(IZ)V
    .locals 3
    .parameter "fd"
    .parameter "on"

    .prologue
    const v2, 0x8000012

    .line 195
    const-string/jumbo v1, "ro.config.fm_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, fmType:Ljava/lang/String;
    const-string v1, "libqcomfm_if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/hardware/fmradio/FmRxControls;->muteControlQcomFm(IZ)V

    .line 207
    :goto_0
    return-void

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 202
    const/4 v1, 0x1

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0

    .line 205
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public searchRdsStations(IIIII)V
    .locals 0
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 677
    return-void
.end method

.method public searchStationList(IIIII)I
    .locals 3
    .parameter "fd"
    .parameter "mode"
    .parameter "preset_num"
    .parameter "dir"
    .parameter "pty"

    .prologue
    .line 404
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    invoke-direct/range {p0 .. p5}, Landroid/hardware/fmradio/FmRxControls;->searchStationListQcomFm(IIIII)I

    move-result v1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 412
    :cond_1
    const v2, 0x8000001

    invoke-static {p1, v2, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 413
    .local v1, re:I
    if-nez v1, :cond_0

    .line 418
    const v2, 0x800000b

    invoke-static {p1, v2, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 419
    if-nez v1, :cond_0

    .line 424
    if-lez p5, :cond_2

    .line 425
    const v2, 0x8000009

    invoke-static {p1, v2, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 427
    :cond_2
    if-nez v1, :cond_0

    .line 433
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v1

    .line 434
    if-nez v1, :cond_0

    .line 438
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchStations(IIIIII)V
    .locals 5
    .parameter "fd"
    .parameter "mode"
    .parameter "dwell"
    .parameter "dir"
    .parameter "pty"
    .parameter "pi"

    .prologue
    .line 603
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-direct/range {p0 .. p6}, Landroid/hardware/fmradio/FmRxControls;->searchStationsQcomFm(IIIIII)V

    .line 629
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v1, 0x0

    .line 610
    .local v1, re:I
    sget-boolean v2, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FmRxControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dwell is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    sget-boolean v2, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FmRxControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PTY is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_2
    sget-boolean v2, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "FmRxControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x8000001

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_3
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v1

    .line 629
    goto :goto_0
.end method

.method public setAudioPath(IZ)I
    .locals 3
    .parameter "fd"
    .parameter "value"

    .prologue
    .line 357
    if-eqz p2, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 361
    .local v0, mode:I
    :goto_0
    const v2, 0x8000029

    invoke-static {p1, v2, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 362
    .local v1, re:I
    return v1

    .line 360
    .end local v0           #mode:I
    .end local v1           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #mode:I
    goto :goto_0
.end method

.method public setFreq(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 387
    iput p1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    .line 388
    return-void
.end method

.method public setHiLoInj(II)I
    .locals 2
    .parameter "fd"
    .parameter "inj"

    .prologue
    .line 253
    const v1, 0x800001d

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 254
    .local v0, re:I
    return v0
.end method

.method public setLowPwrMode(IZ)I
    .locals 4
    .parameter "fd"
    .parameter "lpmOn"

    .prologue
    const v3, 0x8000011

    .line 692
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    invoke-direct {p0, p1, p2}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrModeQcomFm(IZ)I

    move-result v1

    .line 706
    :goto_0
    return v1

    .line 697
    :cond_0
    const/4 v1, 0x0

    .line 699
    .local v1, re:I
    if-eqz p2, :cond_1

    .line 700
    const/4 v2, 0x1

    invoke-static {p1, v3, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_0

    .line 703
    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, v3, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_0
.end method

.method public setOffChannelThreshold(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 273
    const v1, 0x800002e

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 274
    .local v0, re:I
    if-gez v0, :cond_0

    .line 275
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set Off channel Threshold data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return v0
.end method

.method public setOnChannelThreshold(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 262
    const v1, 0x800002d

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 263
    .local v0, re:I
    if-gez v0, :cond_0

    .line 264
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set On channel threshold data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return v0
.end method

.method public setRmssiDel(II)I
    .locals 2
    .parameter "fd"
    .parameter "delta"

    .prologue
    .line 347
    const v1, 0x800001c

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 348
    .local v0, re:I
    return v0
.end method

.method public setSINRThreshold(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 300
    const v1, 0x800002f

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 301
    .local v0, re:I
    if-gez v0, :cond_0

    .line 302
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set SINR threshold data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    return v0
.end method

.method public setSINRsamples(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 311
    const v1, 0x8000030

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 312
    .local v0, re:I
    if-gez v0, :cond_0

    .line 313
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set SINR samples "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    return v0
.end method

.method public setStation(I)V
    .locals 4
    .parameter "fd"

    .prologue
    .line 368
    sget-boolean v1, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Tune Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget v1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFreqNative(II)I

    move-result v0

    .line 370
    .local v0, ret:I
    sget-boolean v1, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    return-void
.end method

.method public stationList(I)[I
    .locals 16
    .parameter "fd"

    .prologue
    .line 486
    const-string/jumbo v12, "ro.config.fm_type"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, fmType:Ljava/lang/String;
    const-string v12, "libqcomfm_if"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 488
    invoke-direct/range {p0 .. p1}, Landroid/hardware/fmradio/FmRxControls;->stationListQcomFm(I)[I

    move-result-object v8

    .line 534
    :cond_0
    :goto_0
    return-object v8

    .line 490
    :cond_1
    const/4 v3, 0x0

    .line 491
    .local v3, freq:I
    const/4 v4, 0x0

    .line 493
    .local v4, i:I
    const/4 v6, 0x0

    .line 495
    .local v6, real_freq:F
    const/16 v12, 0x64

    new-array v7, v12, [B

    .line 496
    .local v7, sList:[B
    const/4 v10, 0x0

    .line 497
    .local v10, tmpFreqByte1:I
    const/4 v11, 0x0

    .line 501
    .local v11, tmpFreqByte2:I
    invoke-static/range {p1 .. p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v12

    int-to-double v12, v12

    const-wide v14, 0x408f400000000000L

    div-double/2addr v12, v14

    double-to-float v5, v12

    .line 502
    .local v5, lowBand:F
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lowBand: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v0, v7, v12}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 505
    const/4 v12, 0x0

    aget-byte v9, v7, v12

    .line 506
    .local v9, station_num:I
    add-int/lit8 v12, v9, 0x1

    new-array v8, v12, [I

    .line 507
    .local v8, stationList:[I
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "station_num: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_b

    .line 510
    const/4 v3, 0x0

    .line 511
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Byte1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_4
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Byte2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v14, v14, 0x2

    aget-byte v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_5
    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v7, v12

    and-int/lit16 v10, v12, 0xff

    .line 514
    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x2

    aget-byte v12, v7, v12

    and-int/lit16 v11, v12, 0xff

    .line 515
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " tmpFreqByte1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_6
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " tmpFreqByte2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_7
    and-int/lit8 v12, v10, 0x3

    shl-int/lit8 v3, v12, 0x8

    .line 518
    or-int/2addr v3, v11

    .line 519
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " freq: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_8
    int-to-double v12, v3

    const-wide v14, 0x3fa999999999999aL

    mul-double/2addr v12, v14

    double-to-float v12, v12

    add-float v6, v12, v5

    .line 521
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " real_freq: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_9
    const/high16 v12, 0x447a

    mul-float/2addr v12, v6

    float-to-int v12, v12

    aput v12, v8, v4

    .line 523
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "FmRxControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " stationList: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v8, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 528
    :cond_b
    const/4 v12, 0x0

    :try_start_0
    aput v12, v8, v9
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-boolean v12, Landroid/hardware/fmradio/FmRxControls;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "FmRxControls"

    const-string v13, "ArrayIndexOutOfBoundsException !!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stereoControl(IZ)I
    .locals 1
    .parameter "fd"
    .parameter "stereo"

    .prologue
    .line 664
    if-eqz p2, :cond_0

    .line 665
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    goto :goto_0
.end method

.method public updateSpurTable(IIIZ)I
    .locals 4
    .parameter "fd"
    .parameter "freq"
    .parameter "rmssi"
    .parameter "enable"

    .prologue
    const v3, 0x8000033

    .line 754
    const v2, 0x8000031

    invoke-static {p1, v2, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 755
    .local v0, re:I
    if-gez v0, :cond_0

    .line 756
    const-string v2, "FmRxControls"

    const-string v3, "Failed to program the Spur frequency value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 777
    .end local v0           #re:I
    .local v1, re:I
    :goto_0
    return v1

    .line 760
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_0
    const v2, 0x8000032

    invoke-static {p1, v2, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 761
    if-gez v0, :cond_1

    .line 762
    const-string v2, "FmRxControls"

    const-string v3, "Failed to program the RMSSI level of the Spur frequency"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 763
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 766
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_1
    if-eqz p4, :cond_2

    .line 767
    const/4 v2, 0x1

    invoke-static {p1, v3, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 772
    :goto_1
    if-gez v0, :cond_3

    .line 773
    const-string v2, "FmRxControls"

    const-string v3, "Failed to program Spur selection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 774
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 770
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v3, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v0

    .line 777
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0
.end method
