.class Ltms/ea;
.super Landroid/content/pm/IPackageDataObserver$Stub;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ltms/dz;


# direct methods
.method constructor <init>(Ltms/dz;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ltms/ea;->c:Ltms/dz;

    iput-object p2, p0, Ltms/ea;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Ltms/ea;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/ea;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Ltms/ea;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/ea;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
