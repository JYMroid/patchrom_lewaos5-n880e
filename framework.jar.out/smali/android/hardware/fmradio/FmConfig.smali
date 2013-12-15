.class public Landroid/hardware/fmradio/FmConfig;
.super Ljava/lang/Object;
.source "FmConfig.java"


# static fields
.field private static final CTRL_BASE:I = 0x8000000

.field private static final FM_CTRL_EMPHASIS:I = 0x800000c

.field private static final FM_CTRL_RDS_STD:I = 0x800000d

.field private static final FM_CTRL_REGION:I = 0x8000007

.field private static final FM_CTRL_SPACING:I = 0x800000e

.field private static final FM_EU_BAND:I = 0x1

.field private static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field private static final FM_JAPAN_WIDE_BAND:I = 0x2

.field private static final FM_USER_DEFINED_BAND:I = 0x4

.field private static final FM_US_BAND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmConfig"

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_ALGORITHM:I = 0x800002b


# instance fields
.field private mBandLowerLimit:I

.field private mBandUpperLimit:I

.field private mChSpacing:I

.field private mEmphasis:I

.field private mRadioBand:I

.field private mRdsStd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z
    .locals 4
    .parameter "fd"
    .parameter "configSettings"

    .prologue
    .line 217
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-static {p0, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigureQcom(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v2

    .line 235
    :goto_0
    return v2

    .line 225
    :cond_0
    const v2, 0x800000e

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 226
    .local v1, re:I
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setBandNative(III)I

    move-result v1

    .line 232
    if-gez v1, :cond_1

    .line 233
    const/4 v2, 0x0

    goto :goto_0

    .line 235
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static fmConfigureQcom(ILandroid/hardware/fmradio/FmConfig;)Z
    .locals 7
    .parameter "fd"
    .parameter "configSettings"

    .prologue
    const v6, 0x800002b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    const-string v4, "FmConfig"

    const-string v5, "In fmConfigure"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v4, 0x800000c

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getEmphasis()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 182
    .local v1, re:I
    const v4, 0x800000d

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 183
    const v4, 0x800000e

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 185
    const-string/jumbo v4, "persist.fm.new.srch.algorithm"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, fmSrchAlg:Z
    if-eqz v0, :cond_1

    .line 187
    const-string v4, "FmConfig"

    const-string v5, "fmConfigure() : FM Srch Alg : NEW "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p0, v6, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 194
    :goto_0
    if-gez v1, :cond_2

    .line 206
    :cond_0
    :goto_1
    return v2

    .line 191
    :cond_1
    const-string v4, "FmConfig"

    const-string v5, "fmConfigure() : FM Srch Alg : OLD "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0, v6, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setBandNative(III)I

    move-result v1

    .line 198
    if-ltz v1, :cond_0

    .line 201
    const v4, 0x8000007

    iget v5, p1, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 203
    if-ltz v1, :cond_0

    move v2, v3

    .line 206
    goto :goto_1
.end method


# virtual methods
.method public getChSpacing()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    return v0
.end method

.method public getEmphasis()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    return v0
.end method

.method public getRadioBand()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    return v0
.end method

.method public getRdsStd()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    return v0
.end method

.method public setChSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 143
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    .line 144
    return-void
.end method

.method public setEmphasis(I)V
    .locals 0
    .parameter "emp"

    .prologue
    .line 135
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    .line 136
    return-void
.end method

.method public setLowerLimit(I)V
    .locals 0
    .parameter "lowLimit"

    .prologue
    .line 159
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    .line 160
    return-void
.end method

.method public setRadioBand(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 127
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    .line 128
    return-void
.end method

.method public setRdsStd(I)V
    .locals 0
    .parameter "rdsStandard"

    .prologue
    .line 151
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    .line 152
    return-void
.end method

.method public setUpperLimit(I)V
    .locals 0
    .parameter "upLimit"

    .prologue
    .line 167
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    .line 168
    return-void
.end method
