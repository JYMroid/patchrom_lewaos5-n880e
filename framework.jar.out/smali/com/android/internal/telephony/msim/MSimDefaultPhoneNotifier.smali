.class public Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;
.super Lcom/android/internal/telephony/DefaultPhoneNotifier;
.source "MSimDefaultPhoneNotifier.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    .line 48
    const-string/jumbo v0, "telephony.msim.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 50
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 52
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 238
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimDefaultPhoneNotifier] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method


# virtual methods
.method protected doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 16
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 144
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v14

    .line 145
    .local v14, subscription:I
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v12

    .line 146
    .local v12, dds:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DDS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 147
    if-eq v14, v12, :cond_0

    .line 191
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v15

    .line 156
    .local v15, telephony:Landroid/telephony/MSimTelephonyManager;
    const/4 v8, 0x0

    .line 157
    .local v8, linkProperties:Landroid/net/LinkProperties;
    const/4 v9, 0x0

    .line 158
    .local v9, linkCapabilities:Landroid/net/LinkCapabilities;
    const/4 v11, 0x0

    .line 160
    .local v11, roaming:Z
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 161
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v9

    .line 164
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    .line 165
    .local v13, ss:Landroid/telephony/ServiceState;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    .line 168
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v15, :cond_3

    invoke-static {v14}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v10

    :goto_1
    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v15, :cond_4

    invoke-static {v14}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v10

    :goto_2
    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v2

    goto :goto_0

    .line 168
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 178
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 113
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    .line 115
    .local v0, subscription:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyCallForwardingChanged(ZI)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCellInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellInfo;)V
    .locals 2
    .parameter "sender"
    .parameter "cellInfo"

    .prologue
    .line 218
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    .line 220
    .local v0, subscription:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {v1, p2, v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyCellInfo(Landroid/telephony/CellInfo;I)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfo(Landroid/telephony/CellInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 205
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 206
    .local v1, subscription:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, data:Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyCellLocation(Landroid/os/Bundle;I)V

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyDataActivity(I)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 0
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 140
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 100
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    .line 102
    .local v0, subscription:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyMessageWaitingChanged(ZI)V

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .parameter "sender"
    .parameter "otaspMode"

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyOtaspChanged(I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "sender"

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 57
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 58
    .local v2, subscription:I
    const-string v0, ""

    .line 59
    .local v0, incomingNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v4

    invoke-interface {v3, v4, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyCallState(ILjava/lang/String;I)V

    .line 65
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 73
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 74
    .local v0, ss:Landroid/telephony/ServiceState;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 75
    .local v1, subscription:I
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/telephony/ServiceState;

    .end local v0           #ss:Landroid/telephony/ServiceState;
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 77
    .restart local v0       #ss:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 80
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifyServiceState(Landroid/telephony/ServiceState;I)V

    .line 81
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 89
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    .line 91
    .local v0, subscription:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;->mMSimRegistry:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->notifySignalStrength(Landroid/telephony/SignalStrength;I)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method
