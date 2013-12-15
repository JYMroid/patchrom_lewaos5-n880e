.class public final Lcom/tencent/tmsecure/module/optimize/OptimizeManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ef;

.field private b:Ltms/ec;

.field private c:Ltms/ee;

.field private d:Ltms/ed;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public closeProcess(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0, p1}, Ltms/ef;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public closeProcess(Ljava/lang/String;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0, p1, p2, p3}, Ltms/ef;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public closeProcess(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0, p1}, Ltms/ef;->a(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public closeProcess(Ljava/util/List;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/util/List;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public getAllRunningProcess(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/optimize/ProcessEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0, p1}, Ltms/ef;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Ltms/ec;

    if-nez v0, :cond_0

    new-instance v0, Ltms/ec;

    invoke-direct {v0}, Ltms/ec;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Ltms/ec;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Ltms/ec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0}, Ltms/ef;->a()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCpuHelper()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0}, Ltms/ef;->c()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Ltms/ed;

    if-nez v1, :cond_0

    new-instance v1, Ltms/ed;

    invoke-direct {v1, v0}, Ltms/ed;-><init>(Lcom/tencent/tmsecure/module/optimize/ICpuHelper;)V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Ltms/ed;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Ltms/ed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0}, Ltms/ef;->c()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0}, Ltms/ef;->b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Ltms/ee;

    if-nez v1, :cond_0

    new-instance v1, Ltms/ee;

    invoke-direct {v1, v0}, Ltms/ee;-><init>(Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;)V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Ltms/ee;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Ltms/ee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0}, Ltms/ef;->b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ef;

    invoke-direct {v0}, Ltms/ef;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {v0, p1}, Ltms/ef;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ef;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
