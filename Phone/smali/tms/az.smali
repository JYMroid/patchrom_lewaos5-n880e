.class Ltms/az;
.super Landroid/database/ContentObserver;


# static fields
.field private static final d:J = 0x4e20L


# instance fields
.field final synthetic a:Ltms/ay;

.field final synthetic b:Ltms/ay$c;

.field private c:J

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ltms/ay$c;Landroid/os/Handler;Ltms/ay;)V
    .locals 2

    iput-object p1, p0, Ltms/az;->b:Ltms/ay$c;

    iput-object p3, p0, Ltms/az;->a:Ltms/ay;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltms/az;->c:J

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltms/az;->b:Ltms/ay$c;

    iget-object v1, v1, Ltms/ay$c;->a:Ltms/ay;

    invoke-static {v1}, Ltms/ay;->b(Ltms/ay;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltms/az;->e:Landroid/os/Handler;

    new-instance v0, Ltms/ba;

    invoke-direct {v0, p0}, Ltms/ba;-><init>(Ltms/az;)V

    iput-object v0, p0, Ltms/az;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const-wide/16 v4, 0x4e20

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltms/az;->c:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Ltms/az;->b:Ltms/ay$c;

    invoke-static {v2}, Ltms/ay$c;->c(Ltms/ay$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Ltms/az;->c:J

    iget-object v0, p0, Ltms/az;->e:Landroid/os/Handler;

    iget-object v1, p0, Ltms/az;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ltms/az;->e:Landroid/os/Handler;

    iget-object v1, p0, Ltms/az;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
