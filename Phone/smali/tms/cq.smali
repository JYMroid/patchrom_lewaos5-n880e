.class Ltms/cq;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Ltms/co$a;


# direct methods
.method constructor <init>(Ltms/co$a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ltms/cq;->a:Ltms/co$a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Ltms/cq;->a:Ltms/co$a;

    invoke-static {v0}, Ltms/co$a;->a(Ltms/co$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->getDefault(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->getLastCallLog()Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ltms/cq;->a:Ltms/co$a;

    iget-object v2, p0, Ltms/cq;->a:Ltms/co$a;

    invoke-static {v2}, Ltms/co$a;->b(Ltms/co$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Ltms/co$a;->a(Ltms/co$a;Landroid/database/ContentObserver;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Ltms/cq;->a:Ltms/co$a;

    iget-object v2, p0, Ltms/cq;->a:Ltms/co$a;

    invoke-static {v2}, Ltms/co$a;->c(Ltms/co$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Ltms/co$a;->a(Ltms/co$a;Landroid/database/ContentObserver;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
