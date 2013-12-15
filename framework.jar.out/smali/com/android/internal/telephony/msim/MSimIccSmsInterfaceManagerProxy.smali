.class public Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;
.super Lcom/android/internal/telephony/msim/ISmsMSim$Stub;
.source "MSimIccSmsInterfaceManagerProxy.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_MSimIccSms"


# instance fields
.field protected mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 44
    const-string v0, "isms_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "isms_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 47
    :cond_0
    return-void
.end method

.method private getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    check-cast v1, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "RIL_MSimIccSms"

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

    .line 188
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v2

    .line 189
    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RIL_MSimIccSms"

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

    .line 192
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v2

    .line 193
    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[BI)Z
    .locals 4
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 65
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->copyMessageToIccEf(I[B[B)Z

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 68
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->disableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 170
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 173
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->enableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 153
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 156
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf(I)Ljava/util/List;
    .locals 4
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 77
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 80
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllMessagesFromIccEf iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()I
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getSMSSubscription()I

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 113
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 114
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendText iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 137
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMultipartText iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 124
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 125
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendText iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIccEf(II[BI)Z
    .locals 4
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManagerProxy;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    move-result-object v0

    .line 53
    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;->updateMessageOnIccEf(II[B)Z

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 56
    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMessageOnIccEf iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method
