.class abstract Ltms/fn;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static a:I

.field static b:Z

.field static c:Z

.field static d:Z

.field private static m:Z

.field private static q:Z

.field private static r:Z


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Z

.field private l:Z

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/os/Handler;

.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Ltms/fn;->q:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "AbsPowerSavingBroadcastReceiver"

    iput-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    iput-object v1, p0, Ltms/fn;->f:Ljava/lang/Runnable;

    iput-object v1, p0, Ltms/fn;->g:Ljava/lang/Runnable;

    iput-object v1, p0, Ltms/fn;->h:Landroid/os/Handler;

    iput-object v1, p0, Ltms/fn;->i:Landroid/os/Handler;

    iput-boolean v2, p0, Ltms/fn;->j:Z

    iput-boolean v2, p0, Ltms/fn;->k:Z

    const v0, 0x493e0

    iput v0, p0, Ltms/fn;->p:I

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    sput-boolean v1, Ltms/fn;->m:Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    sput-boolean v1, Ltms/fn;->c:Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v0

    sput-boolean v0, Ltms/fn;->r:Z

    return-void
.end method

.method static synthetic a(Ltms/fn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Ltms/fn;->b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v2, "Screen off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(I)V

    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    sget-boolean v0, Ltms/fn;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v2, "start disable wifi"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltms/fn;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltms/fn;->h:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Ltms/fn;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Ltms/fo;

    invoke-direct {v0, p0}, Ltms/fo;-><init>(Ltms/fn;)V

    iput-object v0, p0, Ltms/fn;->f:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Ltms/fn;->h:Landroid/os/Handler;

    iget-object v2, p0, Ltms/fn;->f:Ljava/lang/Runnable;

    iget v3, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseScreenTime:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Ltms/fn;->j:Z

    :cond_2
    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    sget-boolean v0, Ltms/fn;->q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltms/fn;->i:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltms/fn;->i:Landroid/os/Handler;

    :cond_3
    iget-object v0, p0, Ltms/fn;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    new-instance v0, Ltms/fp;

    invoke-direct {v0, p0}, Ltms/fp;-><init>(Ltms/fn;)V

    iput-object v0, p0, Ltms/fn;->g:Ljava/lang/Runnable;

    :cond_4
    iget-object v0, p0, Ltms/fn;->i:Landroid/os/Handler;

    iget-object v2, p0, Ltms/fn;->g:Ljava/lang/Runnable;

    iget v1, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseScreenTime:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Ltms/fn;->k:Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v2, "Screen on"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Ltms/fn;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltms/fn;->h:Landroid/os/Handler;

    iget-object v2, p0, Ltms/fn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Ltms/fn;->j:Z

    :cond_7
    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoOpenCondition:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_8

    sget-boolean v0, Ltms/fn;->m:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v2, "start enable wifi"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v5, Ltms/fn;->b:Z

    :cond_8
    iget-boolean v0, p0, Ltms/fn;->k:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltms/fn;->i:Landroid/os/Handler;

    iget-object v2, p0, Ltms/fn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Ltms/fn;->k:Z

    :cond_9
    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoOpenCondition:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_a

    sget-boolean v0, Ltms/fn;->q:Z

    if-eqz v0, :cond_a

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v5, Ltms/fn;->c:Z

    :cond_a
    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoOpenCondition:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_5

    sget-boolean v0, Ltms/fn;->r:Z

    if-eqz v0, :cond_5

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->enableBluetooth()Z

    sput-boolean v5, Ltms/fn;->d:Z

    goto/16 :goto_0
.end method

.method static synthetic a(Ltms/fn;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltms/fn;->j:Z

    return p1
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v0, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "level"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    if-le v1, v0, :cond_8

    :goto_0
    sget v1, Ltms/fn;->a:I

    if-eq v1, v0, :cond_0

    sput v0, Ltms/fn;->a:I

    invoke-virtual {p0, p2}, Ltms/fn;->a(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Ltms/fn;->b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    move-result-object v1

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v2, "start charge"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Ltms/fn;->l:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v3, p0, Ltms/fn;->l:Z

    invoke-virtual {p0, p2}, Ltms/fn;->b(Landroid/content/Intent;)V

    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoOpenCondition:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_3

    sget-boolean v0, Ltms/fn;->m:Z

    if-eqz v0, :cond_3

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v3, Ltms/fn;->b:Z

    :cond_3
    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoOpenCondition:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_4

    sget-boolean v0, Ltms/fn;->q:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v3, Ltms/fn;->c:Z

    :cond_4
    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoOpenCondition:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_1

    sget-boolean v0, Ltms/fn;->r:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->enableBluetooth()Z

    sput-boolean v3, Ltms/fn;->d:Z

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "receive full msg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Ltms/fn;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "full!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Ltms/fn;->l:Z

    invoke-virtual {p0, p2}, Ltms/fn;->d(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_7
    iget-object v1, p0, Ltms/fn;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive stop msg::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Ltms/fn;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Ltms/fn;->l:Z

    invoke-virtual {p0, p2}, Ltms/fn;->c(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic b(Ltms/fn;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltms/fn;->k:Z

    return p1
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ltms/fn;->b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v2, "open wifi"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ltms/fn;->b:Z

    if-nez v0, :cond_0

    sput-boolean v4, Ltms/fn;->m:Z

    :cond_0
    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ltms/fq;

    invoke-direct {v2, p0, p1}, Ltms/fq;-><init>(Ltms/fn;Landroid/content/Context;)V

    iget v1, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiOverTimeDuration:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "open wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ltms/fn;->b:Z

    invoke-virtual {p0, v0}, Ltms/fn;->b(Z)V

    sget-boolean v0, Ltms/fn;->b:Z

    if-eqz v0, :cond_3

    sput-boolean v3, Ltms/fn;->b:Z

    goto :goto_0

    :cond_3
    sput-boolean v4, Ltms/fn;->m:Z

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_1

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "close wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ltms/fn;->b:Z

    invoke-virtual {p0, v0}, Ltms/fn;->a(Z)V

    sget-boolean v0, Ltms/fn;->b:Z

    if-eqz v0, :cond_5

    sput-boolean v3, Ltms/fn;->b:Z

    goto :goto_0

    :cond_5
    sput-boolean v3, Ltms/fn;->m:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ltms/fn;->o:Landroid/os/Handler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltms/fn;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltms/fn;->o:Landroid/os/Handler;

    iget-object v2, p0, Ltms/fn;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v6, p0, Ltms/fn;->o:Landroid/os/Handler;

    iput-object v6, p0, Ltms/fn;->n:Ljava/lang/Runnable;

    :cond_7
    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget v1, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiLowSignalThreshold:I

    const/16 v2, 0x64

    div-int v1, v2, v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getWifiRssi()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getWifiState()I

    move-result v3

    if-eq v3, v5, :cond_8

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getWifiState()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ltms/fn;->o:Landroid/os/Handler;

    new-instance v1, Ltms/fr;

    invoke-direct {v1, p0, v0}, Ltms/fr;-><init>(Ltms/fn;Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;)V

    iput-object v1, p0, Ltms/fn;->n:Ljava/lang/Runnable;

    iget-object v0, p0, Ltms/fn;->o:Landroid/os/Handler;

    iget-object v1, p0, Ltms/fn;->n:Ljava/lang/Runnable;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi rssi::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "open gprs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ltms/fn;->c:Z

    invoke-virtual {p0, v0}, Ltms/fn;->d(Z)V

    sget-boolean v0, Ltms/fn;->c:Z

    if-eqz v0, :cond_1

    sput-boolean v2, Ltms/fn;->c:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Ltms/fn;->q:Z

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "close gprs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ltms/fn;->c:Z

    invoke-virtual {p0, v0}, Ltms/fn;->c(Z)V

    sget-boolean v0, Ltms/fn;->c:Z

    if-eqz v0, :cond_3

    sput-boolean v2, Ltms/fn;->c:Z

    goto :goto_0

    :cond_3
    sput-boolean v2, Ltms/fn;->q:Z

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ltms/fn;->b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    move-result-object v1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ltms/fn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v4, :cond_0

    invoke-static {p1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a()V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    sget-boolean v0, Ltms/fn;->d:Z

    invoke-virtual {p0, v0}, Ltms/fn;->f(Z)V

    sget-boolean v0, Ltms/fn;->d:Z

    if-eqz v0, :cond_3

    sput-boolean v3, Ltms/fn;->d:Z

    goto :goto_0

    :cond_3
    sput-boolean v4, Ltms/fn;->r:Z

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-boolean v0, Ltms/fn;->d:Z

    invoke-virtual {p0, v0}, Ltms/fn;->e(Z)V

    sget-boolean v0, Ltms/fn;->d:Z

    if-eqz v0, :cond_5

    sput-boolean v3, Ltms/fn;->d:Z

    goto :goto_0

    :cond_5
    sput-boolean v3, Ltms/fn;->r:Z

    goto :goto_0

    :cond_6
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "ACTION_ACL_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v0

    iput-boolean v4, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a:Z

    goto :goto_0

    :cond_7
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/fn;->e:Ljava/lang/String;

    const-string v1, "ACTION_ACL_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    move-result-object v0

    iput-boolean v3, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;
.end method

.method public abstract b(Landroid/content/Intent;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(Landroid/content/Intent;)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract d(Landroid/content/Intent;)V
.end method

.method public abstract d(Z)V
.end method

.method public abstract e(Z)V
.end method

.method public abstract f(Z)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2}, Ltms/fn;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Ltms/fn;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0, p1, p2}, Ltms/fn;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2}, Ltms/fn;->d(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    invoke-direct {p0, p1, p2}, Ltms/fn;->e(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
