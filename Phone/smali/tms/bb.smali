.class Ltms/bb;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ltms/ay$c;


# direct methods
.method constructor <init>(Ltms/ay$c;)V
    .locals 0

    iput-object p1, p0, Ltms/bb;->a:Ltms/ay$c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Ltms/bb;->a:Ltms/ay$c;

    iget-object v0, v0, Ltms/ay$c;->a:Ltms/ay;

    invoke-virtual {v0}, Ltms/ay;->getAllContact()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-static {v4}, Ltms/ad;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltms/bb;->a:Ltms/ay$c;

    invoke-static {v0}, Ltms/ay$c;->a(Ltms/ay$c;)[B

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ltms/bb;->a:Ltms/ay$c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ltms/ay$d;

    invoke-static {v0, v3}, Ltms/ay$c;->a(Ltms/ay$c;[Ltms/ay$d;)[Ltms/ay$d;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Ltms/ad;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ltms/ay$d;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ltms/ay$d;-><init>(Ltms/ay$1;)V

    iput v0, v4, Ltms/ay$d;->a:I

    iget-object v0, p0, Ltms/bb;->a:Ltms/ay$c;

    invoke-static {v0}, Ltms/ay$c;->d(Ltms/ay$c;)[Ltms/ay$d;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltms/bb;->a:Ltms/ay$c;

    iget-object v1, p0, Ltms/bb;->a:Ltms/ay$c;

    iget-object v3, p0, Ltms/bb;->a:Ltms/ay$c;

    invoke-static {v3}, Ltms/ay$c;->d(Ltms/ay$c;)[Ltms/ay$d;

    move-result-object v3

    invoke-static {v1, v3}, Ltms/ay$c;->b(Ltms/ay$c;[Ltms/ay$d;)[Ltms/ay$d;

    move-result-object v1

    invoke-static {v0, v1}, Ltms/ay$c;->a(Ltms/ay$c;[Ltms/ay$d;)[Ltms/ay$d;

    iget-object v0, p0, Ltms/bb;->a:Ltms/ay$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltms/ay$c;->a(Ltms/ay$c;Z)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
