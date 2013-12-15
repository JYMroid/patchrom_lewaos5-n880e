.class final Ltms/da;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/bj;


# static fields
.field private static d:Ltms/da;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltms/bj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ltms/be;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltms/da;->d:Ltms/da;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xt800"

    iput-object v0, p0, Ltms/da;->a:Ljava/lang/String;

    const-string v0, "i909"

    iput-object v0, p0, Ltms/da;->b:Ljava/lang/String;

    const-string v0, "xt882"

    iput-object v0, p0, Ltms/da;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/da;->e:Ljava/util/List;

    iput-object p1, p0, Ltms/da;->g:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltms/ag;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    invoke-direct {p0}, Ltms/da;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ltms/cg;

    iget-object v2, p0, Ltms/da;->g:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltms/cg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/da;->f:Ltms/be;

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ltms/da;->f:Ltms/be;

    invoke-virtual {v2, v0}, Ltms/be;->a(Ljava/lang/String;)Ltms/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ltms/da;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "i909"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ltms/bh;

    iget-object v2, p0, Ltms/da;->g:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltms/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/da;->f:Ltms/be;

    goto :goto_0

    :cond_2
    new-instance v0, Ltms/be;

    iget-object v2, p0, Ltms/da;->g:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltms/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/da;->f:Ltms/be;

    goto :goto_0

    :cond_3
    new-instance v0, Ltms/be;

    iget-object v2, p0, Ltms/da;->g:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltms/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/da;->f:Ltms/be;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ltms/da;
    .locals 2

    const-class v1, Ltms/da;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltms/da;->d:Ltms/da;

    if-nez v0, :cond_0

    new-instance v0, Ltms/da;

    invoke-direct {v0, p0}, Ltms/da;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltms/da;->d:Ltms/da;

    :cond_0
    sget-object v0, Ltms/da;->d:Ltms/da;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xt800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "xt882"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/telephony/PhoneStateListener;I)V
    .locals 2

    iget-object v0, p0, Ltms/da;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltms/bj;

    invoke-interface {v0, p1, p2}, Ltms/bj;->a(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
