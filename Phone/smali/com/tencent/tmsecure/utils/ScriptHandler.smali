.class public final Lcom/tencent/tmsecure/utils/ScriptHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;,
        Lcom/tencent/tmsecure/utils/ScriptHandler$Result;,
        Lcom/tencent/tmsecure/utils/ScriptHandler$Task;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Looper;

.field private static volatile c:Lcom/tencent/tmsecure/utils/ScriptHandler;


# instance fields
.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "script"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->a:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "script"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->a:Landroid/os/HandlerThread;

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->b:Landroid/os/Looper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->b:Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHandler;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public addTask(Lcom/tencent/tmsecure/utils/ScriptHandler$Task;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tmsecure/utils/ScriptHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized getDefault()Lcom/tencent/tmsecure/utils/ScriptHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->c:Lcom/tencent/tmsecure/utils/ScriptHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/utils/ScriptHandler;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/ScriptHandler;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->c:Lcom/tencent/tmsecure/utils/ScriptHandler;

    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHandler;->c:Lcom/tencent/tmsecure/utils/ScriptHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/utils/ScriptHandler$Task;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/utils/ScriptHandler;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;->isMatch(Lcom/tencent/tmsecure/utils/ScriptHandler$Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;->onCallback(Lcom/tencent/tmsecure/utils/ScriptHandler$Result;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public register(Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHandler;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHandler;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
