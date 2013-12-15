.class public Lcom/android/internal/telephony/DeviceSpecPropertyParser;
.super Ljava/lang/Object;
.source "DeviceSpecPropertyParser.java"


# static fields
.field protected static final DEBUG:Z = true

.field protected static final LOG_TAG:Ljava/lang/String; = "DeviceSpecPropertyParser"

.field protected static final MASK_AUTO_SELECT_NETWORK:I = 0x20000

.field protected static final MASK_NEED_POLL_DATA_REGISTRATION:I = 0x80000

.field protected static final MASK_PLAYTONE_AFTER_BLUETOOTH_TALKING:I = 0x10000

.field protected static final MASK_RIL7_CARDAPP:I = 0x40000

.field protected static device_spec_property:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSpecProp()V
    .locals 3

    .prologue
    .line 62
    const-string/jumbo v0, "ro.baidu.telephony.dev_spec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    .line 63
    const-string v0, "DeviceSpecPropertyParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_spec_property : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static isAutoSelectNetwork()Z
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    const-string v1, "DeviceSpecPropertyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedPlayToneAfterBtTalking result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPlayToneAfterBtTalking()Z
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    const-string v1, "DeviceSpecPropertyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedPlayToneAfterBtTalking result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPollDataReg()Z
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    const-string v1, "DeviceSpecPropertyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedPollDataReg result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRil7CardApp()Z
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    const-string v1, "DeviceSpecPropertyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRil7CardApp result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
