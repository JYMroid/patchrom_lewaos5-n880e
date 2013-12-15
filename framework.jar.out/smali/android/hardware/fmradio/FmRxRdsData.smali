.class public Landroid/hardware/fmradio/FmRxRdsData;
.super Ljava/lang/Object;
.source "FmRxRdsData.java"


# static fields
.field private static final CTRL_BASE:I = 0x8000000

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FM_CTRL_PSALL:I = 0x8000014

.field private static final FM_CTRL_RDSD_BUF:I = 0x8000013

.field private static final FM_CTRL_RDSGROUP_MASK:I = 0x8000006

.field private static final FM_CTRL_RDSGROUP_PROC:I = 0x8000010

.field private static final FM_CTRL_RDSON:I = 0x800000f

.field private static final LOGTAG:Ljava/lang/String; = "FmRxRdsData"

.field private static final RDS_AF_AUTO:I = 0x8

.field private static final RDS_AF_JUMP:I = 0x1

.field private static final RDS_GROUP_AF:I = 0x4

.field private static final RDS_GROUP_PS:I = 0x2

.field private static final RDS_GROUP_RT:I = 0x1

.field private static final RDS_PS_ALL:I = 0x10

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_AF_JUMP:I = 0x800001b

.field private static final V4L2_CID_PRIVATE_TAVARUA_PSALL:I = 0x8000014

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSD_BUF:I = 0x8000013

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f


# instance fields
.field private mFd:I

.field private mPrgmId:I

.field private mPrgmServices:Ljava/lang/String;

.field private mPrgmType:I

.field private mRadioText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "FmRxRdsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/fmradio/FmRxRdsData;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    .line 80
    return-void
.end method

.method private rdsOnQcomFm(Z)I
    .locals 5
    .parameter "on"

    .prologue
    const v4, 0x800000f

    .line 110
    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In rdsOnQcomFm: RDS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 120
    .local v0, ret:I
    :goto_0
    return v0

    .line 116
    .end local v0           #ret:I
    :cond_0
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method


# virtual methods
.method public enableAFjump(Z)I
    .locals 7
    .parameter "AFenable"

    .prologue
    const v6, 0x800001b

    const v5, 0x8000010

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, rds_group_mask:I
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In enableAFjump: AFenable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v2, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 197
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currently set rds_group_mask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v3, 0x1

    invoke-static {v2, v6, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 204
    .local v1, re:I
    :goto_0
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v2, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 206
    if-eqz p1, :cond_1

    .line 207
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After enabling the rds_group_mask is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_1
    return v1

    .line 202
    .end local v1           #re:I
    :cond_0
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v3, 0x0

    invoke-static {v2, v6, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .restart local v1       #re:I
    goto :goto_0

    .line 209
    :cond_1
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After disabling the rds_group_mask is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPrgmId()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    return v0
.end method

.method public getPrgmServices()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-object v0
.end method

.method public getPrgmType()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public rdsGrpOptions(IIZ)I
    .locals 6
    .parameter "grpMask"
    .parameter "buffSize"
    .parameter "rdsFilter"

    .prologue
    const v5, 0x8000010

    .line 131
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v1, v4

    .line 133
    .local v1, rds_group_mask:B
    and-int/lit16 v4, v1, 0xfe

    int-to-byte v1, v4

    .line 136
    if-eqz p3, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 141
    .local v0, rdsFilt:I
    :goto_0
    or-int v4, v1, v0

    int-to-byte v1, v4

    .line 143
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 145
    .local v2, re:I
    if-eqz v2, :cond_1

    move v3, v2

    .line 156
    .end local v2           #re:I
    .local v3, re:I
    :goto_1
    return v3

    .line 139
    .end local v0           #rdsFilt:I
    .end local v3           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #rdsFilt:I
    goto :goto_0

    .line 148
    .restart local v2       #re:I
    :cond_1
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000013

    invoke-static {v4, v5, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 150
    if-eqz v2, :cond_2

    move v3, v2

    .line 151
    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1

    .line 154
    .end local v3           #re:I
    .restart local v2       #re:I
    :cond_2
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000006

    invoke-static {v4, v5, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    move v3, v2

    .line 156
    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1
.end method

.method public rdsOn(Z)I
    .locals 6
    .parameter "on"

    .prologue
    const v5, 0x800000f

    .line 85
    const-string/jumbo v2, "ro.config.fm_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, fmType:Ljava/lang/String;
    const-string v2, "libqcomfm_if"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-direct {p0, p1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOnQcomFm(Z)I

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 91
    :cond_0
    sget-boolean v2, Landroid/hardware/fmradio/FmRxRdsData;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In rdsOn: RDS is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    .line 94
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v3, 0x1

    invoke-static {v2, v5, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .local v1, ret:I
    goto :goto_0

    .line 97
    .end local v1           #ret:I
    :cond_2
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public rdsOptions(I)I
    .locals 8
    .parameter "rdsMask"

    .prologue
    const v7, 0x8000010

    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, re:I
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v2, v4

    .line 168
    .local v2, rds_group_mask:B
    const/4 v1, 0x0

    .line 169
    .local v1, rdsFilt:B
    and-int/lit8 v0, p1, 0x10

    .line 171
    .local v0, psAllVal:I
    const-string v4, "FmRxRdsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In rdsOptions: rdsMask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    and-int/lit16 v4, v2, 0xc7

    int-to-byte v2, v4

    .line 177
    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v4, v2

    int-to-byte v2, v4

    .line 180
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    .line 182
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000014

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v4, v5, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    .line 184
    return v3
.end method

.method public setPrgmId(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 237
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    .line 238
    return-void
.end method

.method public setPrgmServices(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 229
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setPrgmType(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 244
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    .line 245
    return-void
.end method

.method public setRadioText(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 221
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 222
    return-void
.end method
