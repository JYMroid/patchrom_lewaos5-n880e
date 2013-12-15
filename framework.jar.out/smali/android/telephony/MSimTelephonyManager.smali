.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# static fields
.field protected static multiSimConfig:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "persist.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 75
    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    .line 80
    :goto_0
    const-string/jumbo v1, "telephony.msim.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v1

    sput-object v1, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 83
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    return-void

    .line 77
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const-string/jumbo v0, "phone_msim"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 648
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 286
    :try_start_0
    const-string/jumbo v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 288
    .local v1, iTelephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 298
    .end local v1           #iTelephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 296
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 312
    invoke-static {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 203
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    .line 207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 189
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 195
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 804
    const/4 v1, 0x0

    .line 805
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 808
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 810
    aget-object v1, v2, p1

    .line 813
    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 771
    const-string v3, ""

    .line 772
    .local v3, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 773
    .local v1, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, prop:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 776
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 779
    :cond_0
    if-gez p1, :cond_1

    .line 796
    :goto_0
    return-void

    .line 781
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 782
    const-string v4, ""

    .line 783
    .local v4, str:Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 784
    aget-object v4, v1, v0

    .line 786
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 789
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 790
    if-eqz v1, :cond_4

    .line 791
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_4

    .line 792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 795
    :cond_4
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 757
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 761
    :goto_0
    return-object v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 760
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 761
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 595
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 601
    :goto_0
    return v1

    .line 596
    :catch_0
    move-exception v0

    .line 598
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 599
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 601
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 701
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 706
    :goto_0
    return v1

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 705
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 706
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 719
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 724
    :goto_0
    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 723
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 724
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 735
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 740
    :goto_0
    return-object v1

    .line 736
    :catch_0
    move-exception v0

    .line 738
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 739
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 740
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 530
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 535
    :goto_0
    return-object v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 533
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 535
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 171
    .local v1, telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    .line 184
    .end local v1           #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 175
    .restart local v1       #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 177
    .end local v1           #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 180
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 181
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 617
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 623
    :goto_0
    return v1

    .line 618
    :catch_0
    move-exception v0

    .line 620
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 621
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 638
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 643
    :goto_0
    return v1

    .line 639
    :catch_0
    move-exception v0

    .line 641
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 642
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 643
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 822
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 826
    :goto_0
    return v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 825
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 826
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 152
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 132
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 346
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 349
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 351
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 491
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 496
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 494
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 496
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 469
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 472
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 474
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 403
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 407
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 584
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 243
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 227
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, phoneCount:I
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x2

    .line 116
    :cond_0
    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 835
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 839
    :goto_0
    return v1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 838
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 839
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 861
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 865
    :goto_0
    return v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 864
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 865
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 427
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 425
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 427
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 371
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 387
    :goto_0
    return v1

    .line 376
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const/4 v1, 0x2

    goto :goto_0

    .line 378
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    const/4 v1, 0x3

    goto :goto_0

    .line 380
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    const/4 v1, 0x4

    goto :goto_0

    .line 382
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    const/4 v1, 0x5

    goto :goto_0

    .line 384
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    const/4 v1, 0x6

    goto :goto_0

    .line 387
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 454
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 452
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 454
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 570
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 575
    :goto_0
    return-object v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 573
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 575
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 510
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 515
    :goto_0
    return-object v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 513
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 515
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 550
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 555
    :goto_0
    return v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 553
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 555
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 329
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 335
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 333
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 256
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 682
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 685
    .local v6, notifyNow:Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v6           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 682
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 684
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 689
    :catch_0
    move-exception v0

    goto :goto_2

    .line 687
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 848
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 852
    :goto_0
    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 851
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 852
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
