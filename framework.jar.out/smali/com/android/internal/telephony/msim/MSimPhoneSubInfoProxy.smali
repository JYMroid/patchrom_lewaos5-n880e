.class public Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;
.super Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;
.source "MSimPhoneSubInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimPhoneSubInfoProxy"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 37
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 40
    :cond_0
    return-void
.end method

.method private getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    check-cast v1, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " For subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v2

    .line 153
    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " For subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v2

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 124
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 127
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompleteVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 44
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 47
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceSvn(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 55
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn()Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 58
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 166
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 169
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccCardType phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 80
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 83
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccSerialNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 102
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    .line 105
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1AlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 91
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 94
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1Number phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 66
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 69
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscriberId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 135
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 138
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailAlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 113
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 116
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method
