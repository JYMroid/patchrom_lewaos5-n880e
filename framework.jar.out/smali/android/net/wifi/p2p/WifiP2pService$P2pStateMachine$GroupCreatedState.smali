.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatedState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1291
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1296
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "192.168.49.1"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1300
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1485
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1486
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x3

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1487
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupTermination()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1488
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1490
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    .line 1305
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1479
    const/4 v10, 0x0

    .line 1481
    :goto_0
    return v10

    .line 1307
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1308
    .local v3, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1309
    .local v4, deviceAddress:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1310
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1312
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v11, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1314
    :cond_0
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Ljava/lang/String;)V

    .line 1315
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1317
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1481
    .end local v3           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #deviceAddress:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1319
    .restart local v3       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v4       #deviceAddress:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v11, "Connect on null device address, ignore"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 1323
    .end local v3           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #deviceAddress:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1324
    .restart local v3       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1325
    .restart local v4       #deviceAddress:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1326
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v4, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1327
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1329
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$800(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1330
    const-string v10, "WifiP2pService"

    const-string v11, "Client list empty, remove non-persistent p2p group"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 1339
    :cond_3
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto :goto_1

    .line 1335
    :cond_4
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2

    .line 1342
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disconnect on unknown device: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1346
    .end local v3           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #deviceAddress:Ljava/lang/String;
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/DhcpInfoInternal;

    .line 1347
    .local v6, dhcpInfo:Landroid/net/DhcpInfoInternal;
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    if-eqz v6, :cond_6

    .line 1350
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, v6, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1351
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1353
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1355
    :cond_6
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v11, "DHCP failed"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1356
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1361
    .end local v6           #dhcpInfo:Landroid/net/DhcpInfoInternal;
    :sswitch_3
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1362
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x22012

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v10, p1, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1364
    :cond_7
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x22011

    const/4 v12, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v10, p1, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1370
    :sswitch_4
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v5

    .line 1371
    .local v5, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v0, 0x0

    .line 1372
    .local v0, changed:Z
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1373
    .local v2, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v5, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1374
    :cond_9
    const/4 v10, 0x3

    iput v10, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1375
    const/4 v0, 0x1

    goto :goto_3

    .line 1378
    .end local v2           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_a
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 1379
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1380
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1388
    :goto_4
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearInterfaceAddress(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1389
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v11, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1390
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 1391
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v11, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService;->access$6402(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1392
    if-eqz v0, :cond_b

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1393
    :cond_b
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1383
    :cond_c
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$8300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v10

    const v11, 0x30002

    invoke-virtual {v10, v11}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1384
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$8300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/DhcpStateMachine;->quit()V

    .line 1385
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v11, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService;->access$8302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto :goto_4

    .line 1396
    .end local v0           #changed:Z
    .end local v5           #devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1398
    .restart local v3       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1400
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1403
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1405
    .end local v3           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_6
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x22010

    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1406
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v10, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1409
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1410
    .local v1, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1414
    :cond_e
    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v10, v10, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v10, :cond_11

    .line 1415
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1434
    :cond_f
    :goto_5
    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-eqz v10, :cond_10

    .line 1435
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1436
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1438
    :cond_10
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x22009

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v10, p1, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1417
    :cond_11
    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v10, v10, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    if-nez v10, :cond_13

    .line 1418
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1420
    .local v8, pin:Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1421
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendShowPinReqToFrontApp(Ljava/lang/String;)Z
    invoke-static {v10, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1422
    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-eqz v10, :cond_12

    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    :goto_6
    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v8, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1426
    :catch_0
    move-exception v10

    goto :goto_5

    .line 1422
    :cond_12
    const-string v10, "any"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 1430
    .end local v8           #pin:Ljava/lang/String;
    :cond_13
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v12, v12, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 1440
    :cond_14
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inviting device : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1441
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1442
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1443
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1444
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x22009

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v10, p1, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1446
    :cond_15
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x22008

    const/4 v12, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v10, p1, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1455
    .end local v1           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_8
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1456
    .local v9, provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1457
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v11, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v11}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1458
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v11, v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v11, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1459
    iget v10, p1, Landroid/os/Message;->what:I

    const v11, 0x24023

    if-ne v10, v11, :cond_16

    .line 1460
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v11, 0x2

    iput v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1467
    :goto_7
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v12

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendConnectNoticeToApp(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1468
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1461
    :cond_16
    iget v10, p1, Landroid/os/Message;->what:I

    const v11, 0x24024

    if-ne v10, v11, :cond_17

    .line 1462
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v11, 0x1

    iput v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1463
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v11, v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iput-object v11, v10, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_7

    .line 1465
    :cond_17
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_7

    .line 1472
    .end local v9           #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_9
    const-string v10, "WifiP2pService"

    const-string v11, "Duplicate group creation event notice, ignore"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1475
    :sswitch_a
    const-string v10, "WifiP2pService"

    const-string v11, "Received Driver HUNG event"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    const v11, 0x23004

    invoke-virtual {v10, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_1

    .line 1305
    :sswitch_data_0
    .sparse-switch
        0x20084 -> :sswitch_6
        0x22007 -> :sswitch_7
        0x22010 -> :sswitch_3
        0x2400c -> :sswitch_a
        0x24016 -> :sswitch_5
        0x2401d -> :sswitch_9
        0x2401e -> :sswitch_4
        0x24021 -> :sswitch_8
        0x24023 -> :sswitch_8
        0x24024 -> :sswitch_8
        0x24029 -> :sswitch_1
        0x2402a -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method
