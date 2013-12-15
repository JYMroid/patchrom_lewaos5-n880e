.class public Lcom/android/phone/LewaTelephonyCapabilities;
.super Lcom/android/internal/telephony/TelephonyCapabilities;
.source "LewaTelephonyCapabilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;-><init>()V

    return-void
.end method

.method public static isWorldPhone(Landroid/content/Context;)Z
    .locals 2
    .parameter "content"

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Llewa/os/Build;->IS_MIONE_CDMA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Llewa/os/Build;->IS_MITWO_CDMA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
