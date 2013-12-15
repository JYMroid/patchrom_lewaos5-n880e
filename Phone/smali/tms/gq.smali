.class Ltms/gq;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ltms/gj$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ltms/gj$d;


# direct methods
.method constructor <init>(Ltms/gj$d;Ltms/gj$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/gq;->c:Ltms/gj$d;

    iput-object p2, p0, Ltms/gq;->a:Ltms/gj$a;

    iput-object p3, p0, Ltms/gq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Ltms/gq;->c:Ltms/gj$d;

    iget-object v0, v0, Ltms/gj$d;->a:Ltms/gj;

    invoke-static {v0}, Ltms/gj;->a(Ltms/gj;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/gq;->a:Ltms/gj$a;

    iget-object v2, p0, Ltms/gq;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ltms/gj$a;->a(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
