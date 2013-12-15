.class public final Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/fx;

.field private b:Ltms/fw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getBatteryInfoHelper()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Ltms/fw;

    if-nez v0, :cond_0

    new-instance v0, Ltms/fw;

    invoke-direct {v0}, Ltms/fw;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Ltms/fw;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Ltms/fw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {v0}, Ltms/fx;->b()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBatteryLevel()I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {v0}, Ltms/fx;->a()I

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/fx;

    invoke-direct {v0}, Ltms/fx;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {v0, p1}, Ltms/fx;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public registerPowerSavingEventListener(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {v0, p1}, Ltms/fx;->a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V

    goto :goto_0
.end method

.method public setPowerSavingConfig(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {v0, p1, p2}, Ltms/fx;->a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V

    goto :goto_0
.end method

.method public unRegisterPowerSavingEventListener(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/fx;

    invoke-virtual {v0, p1}, Ltms/fx;->b(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V

    goto :goto_0
.end method
