.class public Lcom/android/phone/LewaHyphonManager;
.super Ljava/lang/Object;
.source "LewaHyphonManager.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LewaHyphonManager$HyphonReceiver;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "LewaHyphonManager/Phone"

.field private static sMe:Lcom/android/phone/LewaHyphonManager;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentCountryIso:Ljava/lang/String;

.field protected mHyphonMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHyphonReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/LewaHyphonManager;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mHyphonMaps:Ljava/util/HashMap;

    .line 35
    new-instance v2, Lcom/android/phone/LewaHyphonManager$HyphonReceiver;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaHyphonManager$HyphonReceiver;-><init>(Lcom/android/phone/LewaHyphonManager;)V

    iput-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mHyphonReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v2, Lcom/android/phone/LewaHyphonManager$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaHyphonManager$1;-><init>(Lcom/android/phone/LewaHyphonManager;)V

    iput-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 38
    const-string v2, "LewaHyphonManager()"

    invoke-virtual {p0, v2}, Lcom/android/phone/LewaHyphonManager;->log(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/android/phone/LewaHyphonManager;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/LewaHyphonManager;->detectCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 48
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/LewaHyphonManager;->mHyphonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/phone/LewaHyphonManager;->sMe:Lcom/android/phone/LewaHyphonManager;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/android/phone/LewaHyphonManager;->sMe:Lcom/android/phone/LewaHyphonManager;

    invoke-virtual {v0}, Lcom/android/phone/LewaHyphonManager;->onDestroy()V

    .line 67
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/phone/LewaHyphonManager;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/phone/LewaHyphonManager;->sMe:Lcom/android/phone/LewaHyphonManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/phone/LewaHyphonManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/LewaHyphonManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/LewaHyphonManager;->sMe:Lcom/android/phone/LewaHyphonManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/phone/LewaHyphonManager;->sMe:Lcom/android/phone/LewaHyphonManager;

    return-object v0
.end method


# virtual methods
.method detectCountry()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 121
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/LewaHyphonManager;->mContext:Landroid/content/Context;

    const-string v5, "country_detector"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 123
    .local v1, detector:Landroid/location/CountryDetector;
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 124
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 125
    .local v0, country:Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detect country, iso = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Country;->getSource()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/LewaHyphonManager;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 132
    .end local v0           #country:Landroid/location/Country;
    .end local v1           #detector:Landroid/location/CountryDetector;
    :cond_0
    :goto_0
    return-object v3

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 71
    const/4 v0, 0x0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/LewaHyphonManager;->detectCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LewaHyphonManager;->mHyphonMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, match:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    iget-object v1, p0, Lcom/android/phone/LewaHyphonManager;->mHyphonMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/phone/LewaHyphonManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LewaHyphonManager/Phone"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCountryDetected, country = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaHyphonManager;->log(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaHyphonManager;->setCountryIso(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/LewaHyphonManager;->mContext:Landroid/content/Context;

    const-string v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 100
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0, p0}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0           #detector:Landroid/location/CountryDetector;
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCountryIso(Ljava/lang/String;)V
    .locals 2
    .parameter "countryIso"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCountryIso, mCurrentCountryIso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " countryIso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaHyphonManager;->log(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput-object p1, p0, Lcom/android/phone/LewaHyphonManager;->mCurrentCountryIso:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/phone/LewaHyphonManager;->mHyphonMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    :cond_0
    return-void
.end method
