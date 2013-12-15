.class final Ltms/ay$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ltms/ay;

.field private b:[B

.field private c:[Ltms/ay$d;

.field private d:Landroid/database/ContentObserver;

.field private e:Z


# direct methods
.method public constructor <init>(Ltms/ay;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Ltms/ay$c;->a:Ltms/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Ltms/ay$c;->b:[B

    new-array v0, v1, [Ltms/ay$d;

    iput-object v0, p0, Ltms/ay$c;->c:[Ltms/ay$d;

    invoke-direct {p0}, Ltms/ay$c;->a()V

    new-instance v0, Ltms/az;

    new-instance v1, Landroid/os/Handler;

    invoke-static {p1}, Ltms/ay;->b(Ltms/ay;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1}, Ltms/az;-><init>(Ltms/ay$c;Landroid/os/Handler;Ltms/ay;)V

    iput-object v0, p0, Ltms/ay$c;->d:Landroid/database/ContentObserver;

    invoke-static {p1}, Ltms/ay;->a(Ltms/ay;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Ltms/ay;->c(Ltms/ay;)Ltms/ay$e;

    move-result-object v1

    invoke-interface {v1}, Ltms/ay$e;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Ltms/ay$c;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private a(I)I
    .locals 6

    iget-object v4, p0, Ltms/ay$c;->b:[B

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Ltms/ay$c;->c:[Ltms/ay$d;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    :goto_0
    if-lt v1, v0, :cond_2

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Ltms/ay$c;->c:[Ltms/ay$d;

    aget-object v5, v5, v2

    iget v5, v5, Ltms/ay$d;->a:I

    if-ne p1, v5, :cond_0

    move v0, v2

    :goto_1
    monitor-exit v4

    return v0

    :cond_0
    if-le p1, v5, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private a()V
    .locals 1

    new-instance v0, Ltms/bb;

    invoke-direct {v0, p0}, Ltms/bb;-><init>(Ltms/ay$c;)V

    invoke-virtual {v0}, Ltms/bb;->start()V

    return-void
.end method

.method static synthetic a(Ltms/ay$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltms/ay$c;->e:Z

    return p1
.end method

.method static synthetic a(Ltms/ay$c;)[B
    .locals 1

    iget-object v0, p0, Ltms/ay$c;->b:[B

    return-object v0
.end method

.method static synthetic a(Ltms/ay$c;[Ltms/ay$d;)[Ltms/ay$d;
    .locals 0

    iput-object p1, p0, Ltms/ay$c;->c:[Ltms/ay$d;

    return-object p1
.end method

.method private a([Ltms/ay$d;)[Ltms/ay$d;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ltms/bc;

    invoke-direct {v0, p0}, Ltms/bc;-><init>(Ltms/ay$c;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-object p1
.end method

.method static synthetic b(Ltms/ay$c;)V
    .locals 0

    invoke-direct {p0}, Ltms/ay$c;->a()V

    return-void
.end method

.method static synthetic b(Ltms/ay$c;[Ltms/ay$d;)[Ltms/ay$d;
    .locals 1

    invoke-direct {p0, p1}, Ltms/ay$c;->a([Ltms/ay$d;)[Ltms/ay$d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ltms/ay$c;)Z
    .locals 1

    iget-boolean v0, p0, Ltms/ay$c;->e:Z

    return v0
.end method

.method static synthetic d(Ltms/ay$c;)[Ltms/ay$d;
    .locals 1

    iget-object v0, p0, Ltms/ay$c;->c:[Ltms/ay$d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ltms/ay$d;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Ltms/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ltms/ad;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Ltms/ay$c;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Ltms/ay$c;->d:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/ay$c;->a:Ltms/ay;

    invoke-static {v0}, Ltms/ay;->a(Ltms/ay;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltms/ay$c;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
