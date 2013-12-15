.class Ltms/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/az;


# direct methods
.method constructor <init>(Ltms/az;)V
    .locals 0

    iput-object p1, p0, Ltms/ba;->a:Ltms/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ltms/ba;->a:Ltms/az;

    iget-object v0, v0, Ltms/az;->b:Ltms/ay$c;

    invoke-static {v0}, Ltms/ay$c;->a(Ltms/ay$c;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/ba;->a:Ltms/az;

    iget-object v0, v0, Ltms/az;->b:Ltms/ay$c;

    invoke-static {v0}, Ltms/ay$c;->b(Ltms/ay$c;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
