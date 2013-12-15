.class final Ltms/bf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/bf$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:[I

.field private c:[Ltms/bf$a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltms/bf;->a:Ljava/lang/Object;

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ltms/bf;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ltms/bf;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private varargs a(IILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/bf;->c:[Ltms/bf$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v2, p0, Ltms/bf;->c:[Ltms/bf$a;

    monitor-enter v2

    :try_start_0
    invoke-static {v1, p3}, Ltms/bf$a;->a(Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-static {v1, p2}, Ltms/bf$a;->a(Ltms/bf$a;I)I

    invoke-static {v1, p5}, Ltms/bf$a;->a(Ltms/bf$a;[Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Ltms/bf;->b:[I

    aget v0, v0, p1

    invoke-static {v1, v0}, Ltms/bf$a;->b(Ltms/bf$a;I)I

    invoke-virtual {v1}, Ltms/bf$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ltms/bf$a;->g()V

    :cond_0
    invoke-static {v1}, Ltms/bf$a;->a(Ltms/bf$a;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ltms/bf$a;->a(Ltms/bf$a;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ltms/bf$a;->a(Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ltms/bf$a;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ltms/bf$a;->a(Ltms/bf$a;[Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v2

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/bf;->b:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltms/bf;->c:[Ltms/bf$a;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v6, p0, Ltms/bf;->a:Ljava/lang/Object;

    monitor-enter v6

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Ltms/bf;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ltms/bf;->b:[I

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ltms/bf;->a(IILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    monitor-exit v6

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILtms/bf$a;)V
    .locals 3

    invoke-direct {p0, p1}, Ltms/bf;->a(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ltms/bf;->c:[Ltms/bf$a;

    aput-object p2, v1, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the filed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not define from setOrderedFileds method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs a([I)V
    .locals 1

    iput-object p1, p0, Ltms/bf;->b:[I

    iget-object v0, p0, Ltms/bf;->b:[I

    array-length v0, v0

    new-array v0, v0, [Ltms/bf$a;

    iput-object v0, p0, Ltms/bf;->c:[Ltms/bf$a;

    return-void
.end method
