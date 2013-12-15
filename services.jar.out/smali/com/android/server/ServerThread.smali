.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$Injector;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 906
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 907
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 909
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 911
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 79
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-void
.end method

.method public run()V
    .locals 119
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    .line 85
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 88
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 90
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 94
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 98
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 100
    .local v98, shutdownAction:Ljava/lang/String;
    if-eqz v98, :cond_0

    invoke-virtual/range {v98 .. v98}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 101
    const/4 v3, 0x0

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_d

    const/16 v92, 0x1

    .line 104
    .local v92, reboot:Z
    :goto_0
    invoke-virtual/range {v98 .. v98}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_e

    .line 105
    const/4 v3, 0x1

    invoke-virtual/range {v98 .. v98}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v98

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v91

    .line 110
    .local v91, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v92

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 114
    .end local v91           #reason:Ljava/lang/String;
    .end local v92           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 115
    .local v68, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v67, 0x0

    .line 117
    .local v67, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 119
    .local v16, headless:Z
    const/16 v73, 0x0

    .line 120
    .local v73, lights:Lcom/android/server/LightsService;
    const/16 v90, 0x0

    .line 121
    .local v90, power:Lcom/android/server/PowerManagerService;
    const/16 v46, 0x0

    .line 122
    .local v46, battery:Lcom/android/server/BatteryService;
    const/16 v109, 0x0

    .line 123
    .local v109, vibrator:Lcom/android/server/VibratorService;
    const/16 v42, 0x0

    .line 124
    .local v42, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 125
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 126
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v82, 0x0

    .line 127
    .local v82, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v55, 0x0

    .line 128
    .local v55, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v116, 0x0

    .line 129
    .local v116, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v114, 0x0

    .line 130
    .local v114, wifi:Lcom/android/server/WifiService;
    const/16 v97, 0x0

    .line 131
    .local v97, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v89, 0x0

    .line 132
    .local v89, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 133
    .local v4, context:Landroid/content/Context;
    const/16 v118, 0x0

    .line 134
    .local v118, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 135
    .local v47, bluetooth:Landroid/server/BluetoothService;
    const/16 v49, 0x0

    .line 136
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v62, 0x0

    .line 137
    .local v62, dock:Lcom/android/server/DockObserver;
    const/16 v107, 0x0

    .line 138
    .local v107, usb:Lcom/android/server/usb/UsbService;
    const/16 v95, 0x0

    .line 139
    .local v95, serial:Lcom/android/server/SerialService;
    const/16 v105, 0x0

    .line 140
    .local v105, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v93, 0x0

    .line 141
    .local v93, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v101, 0x0

    .line 142
    .local v101, throttle:Lcom/android/server/ThrottleService;
    const/16 v84, 0x0

    .line 143
    .local v84, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v52, 0x0

    .line 144
    .local v52, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 148
    .local v72, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 151
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4b

    .line 153
    .end local v90           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 155
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static/range {v67 .. v67}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 158
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 160
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 166
    :cond_1
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 170
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 172
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 175
    .local v59, cryptState:Ljava/lang/String;
    const/16 v88, 0x0

    .line 176
    .local v88, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 177
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v88, 0x1

    .line 184
    :cond_2
    :goto_3
    if-eqz v67, :cond_11

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v88

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v89

    .line 187
    const/16 v69, 0x0

    .line 189
    .local v69, firstBoot:Z
    :try_start_2
    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v69

    .line 193
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 195
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 206
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v3, 0x1

    move/from16 v0, v67

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 210
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 213
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v74, Lcom/android/server/LightsService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 216
    .end local v73           #lights:Lcom/android/server/LightsService;
    .local v74, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v74

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4c

    .line 218
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v110, Lcom/android/server/VibratorService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4d

    .line 222
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .local v110, vibrator:Lcom/android/server/VibratorService;
    :try_start_8
    const-string v3, "vibrator"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 226
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v74

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 228
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4e

    .line 230
    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_9
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 236
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_13

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v69, :cond_14

    const/4 v3, 0x1

    :goto_9
    move/from16 v0, v88

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v118

    .line 240
    const-string v3, "window"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v72

    .line 242
    const-string v3, "input"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 244
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v118

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 249
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 250
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_a
    invoke-static {v4}, Lcom/baidu/service/YiServiceLoader;->main(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    move-object/from16 v109, v110

    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .line 288
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v88           #onlyCore:Z
    .restart local v73       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v60, 0x0

    .line 289
    .local v60, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v99, 0x0

    .line 290
    .local v99, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v70, 0x0

    .line 291
    .local v70, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v43, 0x0

    .line 292
    .local v43, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v86, 0x0

    .line 293
    .local v86, notification:Lcom/android/server/NotificationManagerService;
    const/16 v112, 0x0

    .line 294
    .local v112, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v75, 0x0

    .line 295
    .local v75, location:Lcom/android/server/LocationManagerService;
    const/16 v57, 0x0

    .line 296
    .local v57, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v103, 0x0

    .line 297
    .local v103, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v77, 0x0

    .line 298
    .local v77, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v64, 0x0

    .line 301
    .local v64, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_3

    .line 303
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v71, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v118

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 305
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .local v71, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v3, "input_method"

    move-object/from16 v0, v71

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4a

    move-object/from16 v70, v71

    .line 311
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 320
    :cond_3
    :goto_d
    :try_start_d
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 326
    :goto_e
    :try_start_e
    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 332
    :goto_f
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403fc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_49

    .line 339
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_1a

    .line 340
    const/16 v80, 0x0

    .line 341
    .local v80, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 347
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v81, Lcom/android/server/MountService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 349
    .end local v80           #mountService:Lcom/android/server/MountService;
    .local v81, mountService:Lcom/android/server/MountService;
    :try_start_11
    const-string v3, "mount"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_48

    move-object/from16 v80, v81

    .line 356
    .end local v81           #mountService:Lcom/android/server/MountService;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_11
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v78, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 358
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v78, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_13
    const-string v3, "lock_settings"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_47

    move-object/from16 v77, v78

    .line 364
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v61, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 366
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v61, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_15
    const-string v3, "device_policy"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_46

    move-object/from16 v60, v61

    .line 372
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v100, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v118

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 374
    .end local v99           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v100, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_17
    const-string v3, "statusbar"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_45

    move-object/from16 v99, v100

    .line 380
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v99       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 388
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 390
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 396
    :goto_16
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v104, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 398
    .end local v103           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v104, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v3, "textservices"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_44

    move-object/from16 v103, v104

    .line 404
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v103       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v83, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 406
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v83, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v3, "netstats"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_43

    move-object/from16 v12, v83

    .line 412
    .end local v83           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 416
    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_42

    .line 422
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v117, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 424
    .end local v116           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v117, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_21
    const-string v3, "wifip2p"

    move-object/from16 v0, v117

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_41

    move-object/from16 v116, v117

    .line 430
    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v116       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v115, Lcom/android/server/WifiService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 432
    .end local v114           #wifi:Lcom/android/server/WifiService;
    .local v115, wifi:Lcom/android/server/WifiService;
    :try_start_23
    const-string v3, "wifi"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_40

    move-object/from16 v114, v115

    .line 438
    .end local v115           #wifi:Lcom/android/server/WifiService;
    .restart local v114       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v56, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 441
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .local v56, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v3, "connectivity"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 442
    move-object/from16 v0, v56

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 443
    move-object/from16 v0, v56

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 444
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 445
    invoke-virtual/range {v116 .. v116}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 446
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_3f

    move-object/from16 v55, v56

    .line 452
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v97

    .line 454
    const-string v3, "servicediscovery"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 461
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v102, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    .line 463
    .end local v101           #throttle:Lcom/android/server/ThrottleService;
    .local v102, throttle:Lcom/android/server/ThrottleService;
    :try_start_28
    const-string v3, "throttle"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_3e

    move-object/from16 v101, v102

    .line 470
    .end local v102           #throttle:Lcom/android/server/ThrottleService;
    .restart local v101       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    .line 482
    :goto_1f
    if-eqz v80, :cond_5

    .line 483
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 487
    :cond_5
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v87, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v99

    move-object/from16 v2, v73

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_17

    .line 489
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .local v87, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2b
    const-string v3, "notification"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 490
    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_3d

    move-object/from16 v86, v87

    .line 496
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_18

    .line 504
    :goto_21
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_19

    .line 506
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .local v76, location:Lcom/android/server/LocationManagerService;
    :try_start_2e
    const-string v3, "location"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_3c

    move-object/from16 v75, v76

    .line 512
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    :goto_22
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v58, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1a

    .line 514
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v58, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_30
    const-string v3, "country_detector"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_3b

    move-object/from16 v57, v58

    .line 520
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_23
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .line 528
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1c

    .line 535
    :goto_25
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 538
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-nez v16, :cond_6

    .line 540
    new-instance v113, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    .line 541
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v113, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_34
    const-string v3, "wallpaper"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_3a

    move-object/from16 v112, v113

    .line 548
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_6
    :goto_26
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 550
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1e

    .line 558
    :cond_7
    :goto_27
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v63, Lcom/android/server/DockObserver;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    .end local v62           #dock:Lcom/android/server/DockObserver;
    .local v63, dock:Lcom/android/server/DockObserver;
    move-object/from16 v62, v63

    .line 566
    .end local v63           #dock:Lcom/android/server/DockObserver;
    .restart local v62       #dock:Lcom/android/server/DockObserver;
    :goto_28
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    .line 574
    :goto_29
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v108, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .line 577
    .end local v107           #usb:Lcom/android/server/usb/UsbService;
    .local v108, usb:Lcom/android/server/usb/UsbService;
    :try_start_39
    const-string v3, "usb"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_39

    move-object/from16 v107, v108

    .line 583
    .end local v108           #usb:Lcom/android/server/usb/UsbService;
    .restart local v107       #usb:Lcom/android/server/usb/UsbService;
    :goto_2a
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v96, Lcom/android/server/SerialService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_22

    .line 586
    .end local v95           #serial:Lcom/android/server/SerialService;
    .local v96, serial:Lcom/android/server/SerialService;
    :try_start_3b
    const-string v3, "serial"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_38

    move-object/from16 v95, v96

    .line 592
    .end local v96           #serial:Lcom/android/server/SerialService;
    .restart local v95       #serial:Lcom/android/server/SerialService;
    :goto_2b
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v106, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_23

    .end local v105           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v106, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v105, v106

    .line 600
    .end local v106           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v105       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .line 608
    :goto_2d
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v44, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 610
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .local v44, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3f
    const-string v3, "appwidget"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_37

    move-object/from16 v43, v44

    .line 616
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2e
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v94, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .end local v93           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v94, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v93, v94

    .line 623
    .end local v94           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v93       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2f
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 630
    :goto_30
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v45, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 632
    .local v45, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 642
    .end local v45           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_31
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 650
    :goto_32
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .end local v84           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v85, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v84, v85

    .line 657
    .end local v85           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v84       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_33
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v53, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 659
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v53, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_46
    const-string v3, "commontime_management"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_36

    move-object/from16 v52, v53

    .line 665
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_34
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    .line 671
    :goto_35
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 674
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v65, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    .line 677
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v65, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_49
    const-string v3, "dreams"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_35

    move-object/from16 v64, v65

    .line 686
    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #mountService:Lcom/android/server/MountService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_8
    :goto_36
    invoke-static {v4}, Lcom/android/server/ServerThread$Injector;->registerServices(Landroid/content/Context;)V
##hundan v4????
    :goto_lewa_0
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 687
    .local v28, safeMode:Z
    if-eqz v28, :cond_19

    .line 688
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 690
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 692
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 701
    :goto_37
    :try_start_4a
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 706
    :goto_38
    if-eqz v60, :cond_9

    .line 708
    :try_start_4b
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 714
    :cond_9
    :goto_39
    if-eqz v86, :cond_a

    .line 716
    :try_start_4c
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .line 723
    :cond_a
    :goto_3a
    :try_start_4d
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    .line 728
    :goto_3b
    if-eqz v28, :cond_b

    .line 729
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 735
    :cond_b
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v54

    .line 736
    .local v54, config:Landroid/content/res/Configuration;
    new-instance v79, Landroid/util/DisplayMetrics;

    invoke-direct/range {v79 .. v79}, Landroid/util/DisplayMetrics;-><init>()V

    .line 737
    .local v79, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/view/WindowManager;

    .line 738
    .local v111, w:Landroid/view/WindowManager;
    invoke-interface/range {v111 .. v111}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 739
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v54

    move-object/from16 v1, v79

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 741
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 743
    :try_start_4e
    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .line 748
    :goto_3c
    :try_start_4f
    invoke-virtual/range {v77 .. v77}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_33

    .line 754
    :goto_3d
    invoke-static {v4}, Lcom/android/server/ServerThread$Injector;->registerReceivers(Landroid/content/Context;)V
##hundan
    move-object/from16 v17, v4

    .line 755
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 756
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 757
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 758
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 759
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v55

    .line 760
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v62

    .line 761
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v107

    .line 762
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v101

    .line 763
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v105

    .line 764
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v43

    .line 765
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v112

    .line 766
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v70

    .line 767
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v93

    .line 768
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v75

    .line 769
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v57

    .line 770
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v84

    .line 771
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v52

    .line 772
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v103

    .line 773
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v99

    .line 774
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v64

    .line 775
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v72

    .line 776
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v47

    .line 783
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 897
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 898
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_c
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 902
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 101
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v54           #config:Landroid/content/res/Configuration;
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #dock:Lcom/android/server/DockObserver;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v67           #factoryTest:I
    .end local v68           #factoryTestStr:Ljava/lang/String;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v72           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v84           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v89           #pm:Landroid/content/pm/IPackageManager;
    .end local v93           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v95           #serial:Lcom/android/server/SerialService;
    .end local v97           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v99           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v101           #throttle:Lcom/android/server/ThrottleService;
    .end local v103           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v105           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v107           #usb:Lcom/android/server/usb/UsbService;
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .end local v111           #w:Landroid/view/WindowManager;
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v114           #wifi:Lcom/android/server/WifiService;
    .end local v116           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v118           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_d
    const/16 v92, 0x0

    goto/16 :goto_0

    .line 107
    .restart local v92       #reboot:Z
    :cond_e
    const/16 v91, 0x0

    .restart local v91       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 115
    .end local v91           #reason:Ljava/lang/String;
    .end local v92           #reboot:Z
    .restart local v68       #factoryTestStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    goto/16 :goto_2

    .line 179
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v62       #dock:Lcom/android/server/DockObserver;
    .restart local v67       #factoryTest:I
    .restart local v72       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88       #onlyCore:Z
    .restart local v89       #pm:Landroid/content/pm/IPackageManager;
    .restart local v93       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v95       #serial:Lcom/android/server/SerialService;
    .restart local v97       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v101       #throttle:Lcom/android/server/ThrottleService;
    .restart local v105       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v107       #usb:Lcom/android/server/usb/UsbService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #wifi:Lcom/android/server/WifiService;
    .restart local v116       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v118       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_10
    :try_start_50
    const-string v3, "1"

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v88, 0x1

    goto/16 :goto_3

    .line 184
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 202
    .restart local v69       #firstBoot:Z
    :catch_0
    move-exception v66

    .line 203
    .local v66, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_1

    goto/16 :goto_6

    .line 283
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v69           #firstBoot:Z
    .end local v88           #onlyCore:Z
    :catch_1
    move-exception v66

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .line 284
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v66, e:Ljava/lang/RuntimeException;
    :goto_3e
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 207
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #e:Ljava/lang/RuntimeException;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v88       #onlyCore:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 237
    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    :cond_13
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 251
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, v67

    if-ne v0, v3, :cond_16

    .line 252
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_2

    goto/16 :goto_a

    .line 283
    :catch_2
    move-exception v66

    move-object/from16 v109, v110

    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto :goto_3e

    .line 255
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    :cond_16
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v3, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/BtFmPowerManagementService;

    invoke-direct {v9, v4}, Lcom/broadcom/bt/service/framework/BtFmPowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_2

    .line 260
    :goto_3f
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v48, Landroid/server/BluetoothService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_2

    .line 262
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .local v48, bluetooth:Landroid/server/BluetoothService;
    :try_start_54
    const-string v3, "bluetooth"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 263
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 265
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 266
    new-instance v50, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_4f

    .line 267
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_55
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 269
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_50

    move-object/from16 v49, v50

    .line 271
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_17
    :try_start_56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    .line 273
    .local v41, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v51

    .line 275
    .local v51, bluetoothOn:I
    if-nez v41, :cond_18

    if-eqz v51, :cond_18

    .line 276
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->enable()Z
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_4f

    :cond_18
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 257
    .end local v41           #airplaneModeOn:I
    .end local v51           #bluetoothOn:I
    :catch_3
    move-exception v66

    .line 258
    .local v66, e:Ljava/lang/Throwable;
    :try_start_57
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_2

    goto :goto_3f

    .line 306
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v69           #firstBoot:Z
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v88           #onlyCore:Z
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v99       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v66

    .line 307
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 314
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v66

    .line 315
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 321
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v66

    .line 322
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 327
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v66

    .line 328
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 350
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    :catch_8
    move-exception v66

    .line 351
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 359
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v66

    .line 360
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 367
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v66

    .line 368
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 375
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v66

    .line 376
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 383
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v66

    .line 384
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 391
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v66

    .line 392
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 399
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v66

    .line 400
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 407
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v66

    .line 408
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 417
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v66

    move-object/from16 v8, v82

    .line 418
    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 425
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v66

    .line 426
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 433
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v66

    .line 434
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 447
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v66

    .line 448
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 456
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v66

    .line 457
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 465
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v66

    .line 466
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 473
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v66

    .line 474
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 491
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v66

    .line 492
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 499
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v66

    .line 500
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 507
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v66

    .line 508
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 515
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v66

    .line 516
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 523
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v66

    .line 524
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 531
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v66

    .line 532
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 543
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v66

    .line 544
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 552
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v66

    .line 553
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 561
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v66

    .line 562
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 569
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v66

    .line 570
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 578
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v66

    .line 579
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 587
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v66

    .line 588
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 595
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v66

    .line 596
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 603
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v66

    .line 604
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 611
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v66

    .line 612
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 618
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v66

    .line 619
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 625
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v66

    .line 626
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 633
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v66

    .line 634
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 645
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v66

    .line 646
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 652
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v66

    .line 653
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 660
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v66

    .line 661
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 667
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v66

    .line 668
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 678
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v66

    .line 679
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 695
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v80           #mountService:Lcom/android/server/MountService;
    .restart local v28       #safeMode:Z
    :cond_19
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_37

    .line 702
    :catch_2e
    move-exception v66

    .line 703
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 709
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v66

    .line 710
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 717
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v66

    .line 718
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 724
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v66

    .line 725
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 744
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v54       #config:Landroid/content/res/Configuration;
    .restart local v79       #metrics:Landroid/util/DisplayMetrics;
    .restart local v111       #w:Landroid/view/WindowManager;
    :catch_32
    move-exception v66

    .line 745
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 749
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v66

    .line 750
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 190
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v54           #config:Landroid/content/res/Configuration;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v99           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v103           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v111           #w:Landroid/view/WindowManager;
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #onlyCore:Z
    :catch_34
    move-exception v3

    goto/16 :goto_5

    .line 678
    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v88           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v99       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_35
    move-exception v66

    move-object/from16 v64, v65

    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_54

    .line 660
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_36
    move-exception v66

    move-object/from16 v52, v53

    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto :goto_53

    .line 611
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_37
    move-exception v66

    move-object/from16 v43, v44

    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_52

    .line 587
    .end local v95           #serial:Lcom/android/server/SerialService;
    .restart local v96       #serial:Lcom/android/server/SerialService;
    :catch_38
    move-exception v66

    move-object/from16 v95, v96

    .end local v96           #serial:Lcom/android/server/SerialService;
    .restart local v95       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_51

    .line 578
    .end local v107           #usb:Lcom/android/server/usb/UsbService;
    .restart local v108       #usb:Lcom/android/server/usb/UsbService;
    :catch_39
    move-exception v66

    move-object/from16 v107, v108

    .end local v108           #usb:Lcom/android/server/usb/UsbService;
    .restart local v107       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_50

    .line 543
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3a
    move-exception v66

    move-object/from16 v112, v113

    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_4f

    .line 515
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_3b
    move-exception v66

    move-object/from16 v57, v58

    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4e

    .line 507
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    :catch_3c
    move-exception v66

    move-object/from16 v75, v76

    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_4d

    .line 491
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    :catch_3d
    move-exception v66

    move-object/from16 v86, v87

    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4c

    .line 465
    .end local v101           #throttle:Lcom/android/server/ThrottleService;
    .restart local v102       #throttle:Lcom/android/server/ThrottleService;
    :catch_3e
    move-exception v66

    move-object/from16 v101, v102

    .end local v102           #throttle:Lcom/android/server/ThrottleService;
    .restart local v101       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_4b

    .line 447
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_3f
    move-exception v66

    move-object/from16 v55, v56

    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4a

    .line 433
    .end local v114           #wifi:Lcom/android/server/WifiService;
    .restart local v115       #wifi:Lcom/android/server/WifiService;
    :catch_40
    move-exception v66

    move-object/from16 v114, v115

    .end local v115           #wifi:Lcom/android/server/WifiService;
    .restart local v114       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_49

    .line 425
    .end local v116           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v117       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_41
    move-exception v66

    move-object/from16 v116, v117

    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v116       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_48

    .line 417
    :catch_42
    move-exception v66

    goto/16 :goto_47

    .line 407
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_43
    move-exception v66

    move-object/from16 v12, v83

    .end local v83           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_46

    .line 399
    .end local v103           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v104       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_44
    move-exception v66

    move-object/from16 v103, v104

    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v103       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_45

    .line 375
    .end local v99           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_45
    move-exception v66

    move-object/from16 v99, v100

    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v99       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_44

    .line 367
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_46
    move-exception v66

    move-object/from16 v60, v61

    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_43

    .line 359
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_47
    move-exception v66

    move-object/from16 v77, v78

    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_42

    .line 350
    .end local v80           #mountService:Lcom/android/server/MountService;
    .restart local v81       #mountService:Lcom/android/server/MountService;
    :catch_48
    move-exception v66

    move-object/from16 v80, v81

    .end local v81           #mountService:Lcom/android/server/MountService;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_41

    .line 336
    .end local v80           #mountService:Lcom/android/server/MountService;
    :catch_49
    move-exception v3

    goto/16 :goto_10

    .line 306
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4a
    move-exception v66

    move-object/from16 v70, v71

    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_40

    .line 283
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v99           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v103           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v112           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #power:Lcom/android/server/PowerManagerService;
    :catch_4b
    move-exception v66

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v90

    .end local v90           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v88       #onlyCore:Z
    :catch_4c
    move-exception v66

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_4d
    move-exception v66

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    :catch_4e
    move-exception v66

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v109, v110

    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    :catch_4f
    move-exception v66

    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v109, v110

    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v109           #vibrator:Lcom/android/server/VibratorService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    :catch_50
    move-exception v66

    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v109, v110

    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v109       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v88           #onlyCore:Z
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v99       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v112       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1a
    move-object/from16 v8, v82

    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_lewa_0
.end method
