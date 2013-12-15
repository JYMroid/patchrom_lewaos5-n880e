.class public Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HybridLocationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG1:Ljava/lang/String; = "HybridProvider"


# instance fields
.field private final mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSettings:Landroid/content/ContentQueryMap;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 13
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 2453
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2724
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2457
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 2458
    .local v6, batteryFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2459
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2460
    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2463
    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2464
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v10

    const-string v3, "value"

    aput-object v3, v2, v11

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v9, "location_providers_allowed"

    aput-object v9, v4, v10

    const-string v9, "wifi_on"

    aput-object v9, v4, v11

    const-string v9, "assisted_gps_enabled"

    aput-object v9, v4, v12

    const/4 v9, 0x3

    const-string v10, "enhLocationServices_on"

    aput-object v10, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2474
    .local v7, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v7, v2, v11, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->mSettings:Landroid/content/ContentQueryMap;

    .line 2475
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;

    invoke-direct {v8, p0, v5}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;-><init>(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    .line 2476
    .local v8, settingsObserver:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v8}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 2478
    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {p1, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4202(Lcom/android/server/location/GpsLocationProvider;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 2479
    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2448
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->updateBatteryStatus(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;ZZZZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 2448
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->updateSettings(ZZZZZ)Z

    move-result v0

    return v0
.end method

.method private updateBatteryStatus(Z)Z
    .locals 5
    .parameter "isBatteryCharging"

    .prologue
    .line 2705
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBatteryStatus invoked and setting values. isBatteryCharging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    monitor-enter v3

    .line 2708
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2709
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2710
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2711
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2712
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "batteryCharging"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2713
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2714
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2715
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2716
    monitor-exit v3

    .line 2717
    const/4 v2, 0x1

    return v2

    .line 2716
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateSettings(ZZZZZ)Z
    .locals 5
    .parameter "gpsSetting"
    .parameter "networkProvSetting"
    .parameter "wifiSetting"
    .parameter "agpsSetting"
    .parameter "enhLocationServicesSetting"

    .prologue
    .line 2684
    const-string v2, "HybridProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSettings invoked from LMS and setting values. Gps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GNP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WiFi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Agps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "enhLocationServicesSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    monitor-enter v3

    .line 2689
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2690
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2691
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2692
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2693
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "gpsSetting"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2694
    const-string v2, "networkProvSetting"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2695
    const-string v2, "wifiSetting"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2696
    const-string v2, "agpsSetting"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2697
    const-string v2, "enhLocationServicesSetting"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2698
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2699
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2700
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2701
    monitor-exit v3

    .line 2702
    const/4 v2, 0x1

    return v2

    .line 2701
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 2641
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3508(Lcom/android/server/location/GpsLocationProvider;)I

    .line 2642
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2643
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2644
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2645
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2646
    monitor-exit v2

    .line 2647
    return-void

    .line 2646
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 2568
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 2569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2570
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2571
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2572
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2573
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2574
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2575
    monitor-exit v2

    .line 2576
    return-void

    .line 2575
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 2556
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 2557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2558
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2559
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2560
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2561
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2562
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2563
    monitor-exit v2

    .line 2565
    return-void

    .line 2563
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2596
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 2597
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2598
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2599
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2600
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2601
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2602
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2603
    monitor-exit v2

    .line 2604
    return-void

    .line 2600
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2603
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 2546
    const/4 v0, 0x1

    return v0
.end method

.method public getCapability()I
    .locals 1

    .prologue
    .line 2721
    const/4 v0, 0x0

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2591
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2483
    const-string v0, "hybrid"

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 2530
    const/4 v0, 0x1

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .parameter "extras"

    .prologue
    .line 2580
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 2586
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 2506
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 1
    .parameter "criteria"

    .prologue
    .line 2537
    if-eqz p1, :cond_0

    .line 2538
    const/4 v0, 0x1

    .line 2540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 2651
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 2652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3508(Lcom/android/server/location/GpsLocationProvider;)I

    .line 2653
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2654
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2655
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2656
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2657
    monitor-exit v2

    .line 2658
    return-void

    .line 2657
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestSingleShotFix()Z
    .locals 4

    .prologue
    .line 2608
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2610
    const/4 v1, 0x0

    .line 2618
    :goto_0
    return v1

    .line 2612
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    monitor-enter v2

    .line 2613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2614
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2615
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2616
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2617
    monitor-exit v2

    .line 2618
    const/4 v1, 0x1

    goto :goto_0

    .line 2617
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 2501
    const/4 v0, 0x1

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 2489
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 2495
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 2635
    const/4 v0, 0x1

    return v0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 0
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 2623
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 2512
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 2524
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 2518
    const/4 v0, 0x1

    return v0
.end method

.method public updateCriteria(IJFZLandroid/location/Criteria;)Z
    .locals 11
    .parameter "action"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "criteria"

    .prologue
    .line 2662
    const/4 v10, 0x0

    .line 2666
    .local v10, return_value:Z
    if-nez p6, :cond_0

    .line 2668
    new-instance p6, Landroid/location/Criteria;

    .end local p6
    invoke-direct/range {p6 .. p6}, Landroid/location/Criteria;-><init>()V

    .line 2669
    .restart local p6
    const/4 v1, 0x3

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 2670
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 2673
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v2, 0x2

    invoke-virtual/range {p6 .. p6}, Landroid/location/Criteria;->getHorizontalAccuracy()I

    move-result v8

    invoke-virtual/range {p6 .. p6}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v9

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move/from16 v7, p5

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IIJFZII)Z
    invoke-static/range {v1 .. v9}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;IIJFZII)Z

    move-result v10

    .line 2678
    return v10
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 2631
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "state"
    .parameter "info"

    .prologue
    .line 2627
    return-void
.end method
