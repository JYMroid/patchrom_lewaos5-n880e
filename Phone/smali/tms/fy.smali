.class Ltms/fy;
.super Ltms/fn;


# instance fields
.field final synthetic e:Ltms/fx;


# direct methods
.method constructor <init>(Ltms/fx;)V
    .locals 0

    iput-object p1, p0, Ltms/fy;->e:Ltms/fx;

    invoke-direct {p0}, Ltms/fn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onBatteryLevelChanged(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onCloseWifi(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->a(Ltms/fx;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;
    .locals 1

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->b(Ltms/fx;)Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onStartBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onOpenWifi(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onStopBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onCloseMobileNetwork(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onFinishBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onOpenMobileNetwork(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onCloseBlueTooth(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Ltms/fy;->e:Ltms/fx;

    invoke-static {v0}, Ltms/fx;->c(Ltms/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onOpenBlueTooth(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
