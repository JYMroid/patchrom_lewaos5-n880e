.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x4fc

.field private static final TAG:Ljava/lang/String; = "AudioTrack-Java"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 270
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 11
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 155
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 159
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 169
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 193
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 202
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 206
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 210
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 216
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 220
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 309
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 313
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p6

    .line 316
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 318
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 320
    if-gez p7, :cond_1

    .line 321
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 325
    .local v9, session:[I
    const/4 v1, 0x0

    aput p7, v9, v1

    .line 327
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioTrack;->mChannels:I

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v10

    .line 330
    .local v10, initResult:I
    if-eqz v10, :cond_2

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 335
    :cond_2
    const/4 v1, 0x0

    aget v1, v9, v1

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 337
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_3

    .line 338
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 340
    :cond_3
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5
    .parameter "audioBufferSize"

    .prologue
    const/4 v2, 0x1

    .line 488
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    mul-int v0, v3, v1

    .line 490
    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    if-ge p1, v2, :cond_2

    .line 491
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    .end local v0           #frameSizeInBytes:I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 494
    .restart local v0       #frameSizeInBytes:I
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 495
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 5
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "mode"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 368
    if-eq p1, v4, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 381
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_1

    const v0, 0xbb80

    if-le p2, v0, :cond_2

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 390
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 392
    sparse-switch p3, :sswitch_data_0

    .line 405
    invoke-static {p3}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 408
    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 409
    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :sswitch_0
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 397
    iput v4, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 419
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 433
    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :sswitch_1
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 402
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_0

    .line 412
    :cond_3
    iput p3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 413
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 421
    :sswitch_2
    iput v3, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 440
    :goto_1
    if-eq p5, v2, :cond_4

    if-eqz p5, :cond_4

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :sswitch_3
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_1

    .line 443
    :cond_4
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 445
    return-void

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 419
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 536
    const/high16 v0, 0x3f80

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 678
    and-int/lit16 v3, p1, 0x4fc

    if-eq v3, p1, :cond_1

    .line 680
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    return v1

    .line 671
    :sswitch_0
    const/4 v0, 0x1

    .line 687
    :goto_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/16 v3, 0x64

    if-eq p2, v3, :cond_2

    const/16 v3, 0x65

    if-eq p2, v3, :cond_2

    const/16 v3, 0x66

    if-eq p2, v3, :cond_2

    const/16 v3, 0x67

    if-eq p2, v3, :cond_2

    const/16 v3, 0x68

    if-eq p2, v3, :cond_2

    .line 694
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :sswitch_1
    const/4 v0, 0x2

    .line 676
    goto :goto_1

    .line 683
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    goto :goto_1

    .line 699
    :cond_2
    const/16 v3, 0xfa0

    if-lt p0, v3, :cond_3

    const v3, 0xbb80

    if-le p0, v3, :cond_4

    .line 700
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 705
    .local v1, size:I
    if-eq v1, v2, :cond_5

    if-nez v1, :cond_0

    .line 706
    :cond_5
    const-string v3, "getMinBufferSize(): error querying hardware"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 707
    goto :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 646
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 5
    .parameter "channelConfig"

    .prologue
    const/4 v2, 0x0

    .line 454
    and-int/lit16 v3, p0, 0x4fc

    if-eq v3, p0, :cond_0

    .line 455
    const-string v3, "AudioTrack-Java"

    const-string v4, "Channel configuration features unsupported channels"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return v2

    .line 461
    :cond_0
    const/16 v1, 0xc

    .line 463
    .local v1, frontPair:I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 464
    const-string v3, "AudioTrack-Java"

    const-string v4, "Front channels must be present in multichannel configurations"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_1
    const/16 v0, 0xc0

    .line 469
    .local v0, backPair:I
    and-int/lit16 v3, p0, 0xc0

    if-eqz v3, :cond_2

    .line 470
    and-int/lit16 v3, p0, 0xc0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_2

    .line 471
    const-string v3, "AudioTrack-Java"

    const-string v4, "Rear channels can\'t be used independently"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1273
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1277
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_session_id()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiotrack_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1199
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 1200
    .local v1, track:Landroid/media/AudioTrack;
    if-nez v1, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    if-eqz v2, :cond_0

    .line 1205
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1207
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .locals 2
    .parameter "effectId"

    .prologue
    .line 1070
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1071
    const/4 v0, -0x3

    .line 1073
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 516
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 955
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 957
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 960
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 609
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 639
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 933
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 934
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 941
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 942
    monitor-exit v1

    .line 943
    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 893
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 894
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 899
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 900
    monitor-exit v1

    .line 901
    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 505
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 511
    return-void

    .line 506
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    .line 1042
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1043
    const/4 v0, -0x3

    .line 1045
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 2
    .parameter "level"

    .prologue
    .line 1092
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1093
    const/4 v0, -0x3

    .line 1103
    :goto_0
    return v0

    .line 1096
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1097
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 1099
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1100
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 1102
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    .line 1103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .parameter "startInFrames"
    .parameter "endInFrames"
    .parameter "loopCount"

    .prologue
    .line 867
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 868
    const/4 v0, -0x3

    .line 870
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 2
    .parameter "markerInFrames"

    .prologue
    .line 821
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 822
    const/4 v0, -0x3

    .line 824
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 3
    .parameter "positionInFrames"

    .prologue
    .line 848
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 850
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    monitor-exit v1

    .line 852
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x3

    monitor-exit v1

    goto :goto_0

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 735
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 747
    iget-object v1, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 748
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 749
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    if-eqz p1, :cond_0

    .line 751
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 754
    :cond_0
    return-void

    .line 749
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .parameter "sampleRateInHz"

    .prologue
    .line 804
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 805
    const/4 v0, -0x3

    .line 810
    :goto_0
    return v0

    .line 807
    :cond_0
    if-gtz p1, :cond_1

    .line 808
    const/4 v0, -0x2

    goto :goto_0

    .line 810
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 2
    .parameter "periodInFrames"

    .prologue
    .line 834
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 835
    const/4 v0, -0x3

    .line 837
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 879
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 880
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 768
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 769
    const/4 v0, -0x3

    .line 788
    :goto_0
    return v0

    .line 773
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 774
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 776
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 777
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 779
    :cond_2
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 780
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 782
    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 783
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 786
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 788
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 913
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 920
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 921
    monitor-exit v1

    .line 922
    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([BII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    const/4 v2, 0x1

    .line 979
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-lez p3, :cond_0

    .line 982
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 985
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_1

    .line 986
    const/4 v0, -0x3

    .line 994
    :goto_0
    return v0

    .line 989
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 991
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 994
    :cond_3
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    goto :goto_0
.end method

.method public write([SII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    const/4 v2, 0x1

    .line 1015
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-lez p3, :cond_0

    .line 1018
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 1021
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_1

    .line 1022
    const/4 v0, -0x3

    .line 1030
    :goto_0
    return v0

    .line 1025
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 1027
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1030
    :cond_3
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    goto :goto_0
.end method
