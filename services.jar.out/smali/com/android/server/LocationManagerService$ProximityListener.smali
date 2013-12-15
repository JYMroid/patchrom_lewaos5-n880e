.class Lcom/android/server/LocationManagerService$ProximityListener;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityListener"
.end annotation


# instance fields
.field isGpsAvailable:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 29
    .parameter "loc"

    .prologue
    .line 1652
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1653
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1655
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    const-string v9, "network"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1746
    :cond_1
    return-void

    .line 1660
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 1661
    .local v27, now:J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1662
    .local v2, latitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1663
    .local v4, longitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 1664
    .local v6, accuracy:F
    const/16 v26, 0x0

    .line 1666
    .local v26, intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeoFencerBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/location/GeoFencerBase;->getAllGeoFences()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/location/GeoFenceParams;

    .local v22, fence:Landroid/location/GeoFenceParams;
    move-object/from16 v1, v22

    .line 1667
    check-cast v1, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1668
    .local v1, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    .line 1669
    .local v7, intent:Landroid/app/PendingIntent;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$ProximityAlert;->getExpiration()J

    move-result-wide v20

    .line 1671
    .local v20, expiration:J
    const-wide/16 v8, -0x1

    cmp-long v8, v20, v8

    if-eqz v8, :cond_4

    cmp-long v8, v27, v20

    if-gtz v8, :cond_8

    .line 1672
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 1673
    .local v19, entered:Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/LocationManagerService$ProximityAlert;->isInProximity(DDF)Z

    move-result v25

    .line 1675
    .local v25, inProximity:Z
    if-nez v19, :cond_6

    if-eqz v25, :cond_6

    .line 1679
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1680
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1681
    .local v10, enteredIntent:Landroid/content/Intent;
    const-string v8, "entering"

    const/4 v9, 0x1

    invoke-virtual {v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v12

    const-string v13, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v11, p0

    invoke-virtual/range {v7 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 1691
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1692
    :catch_0
    move-exception v18

    .line 1696
    .local v18, e:Landroid/app/PendingIntent$CanceledException;
    if-nez v26, :cond_5

    .line 1697
    new-instance v26, Ljava/util/ArrayList;

    .end local v26           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    .restart local v26       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_5
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1701
    .end local v10           #enteredIntent:Landroid/content/Intent;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_6
    if-eqz v19, :cond_3

    if-nez v25, :cond_3

    .line 1705
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1706
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1707
    .local v14, exitedIntent:Landroid/content/Intent;
    const-string v8, "entering"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1709
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1712
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v16

    const-string v17, "android.permission.ACCESS_FINE_LOCATION"

    move-object v11, v7

    move-object/from16 v15, p0

    invoke-virtual/range {v11 .. v17}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 1717
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v8
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1718
    :catch_1
    move-exception v18

    .line 1722
    .restart local v18       #e:Landroid/app/PendingIntent$CanceledException;
    if-nez v26, :cond_7

    .line 1723
    new-instance v26, Ljava/util/ArrayList;

    .end local v26           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .restart local v26       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_7
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1733
    .end local v14           #exitedIntent:Landroid/content/Intent;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v19           #entered:Z
    .end local v25           #inProximity:Z
    :cond_8
    if-nez v26, :cond_9

    .line 1734
    new-instance v26, Ljava/util/ArrayList;

    .end local v26           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    .restart local v26       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1741
    .end local v1           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    .end local v7           #intent:Landroid/app/PendingIntent;
    .end local v20           #expiration:J
    .end local v22           #fence:Landroid/location/GeoFenceParams;
    :cond_a
    if-eqz v26, :cond_1

    .line 1742
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    .line 1743
    .local v23, i:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeoFencerBase;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/server/location/GeoFencerBase;->remove(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1750
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1753
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1758
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 1774
    monitor-exit p0

    .line 1775
    return-void

    .line 1774
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1762
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1766
    :cond_0
    return-void
.end method
