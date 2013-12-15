.class final Ltms/do$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/do$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/do$a;


# direct methods
.method private constructor <init>(Ltms/do$a;)V
    .locals 0

    iput-object p1, p0, Ltms/do$a$a;->a:Ltms/do$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/do$a;Ltms/dp;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/do$a$a;-><init>(Ltms/do$a;)V

    return-void
.end method

.method private a(J)J
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ltms/do$a$a;->a:Ltms/do$a;

    iget-object v0, v0, Ltms/do$a;->a:Ltms/do;

    invoke-static {v0}, Ltms/do;->b(Ltms/do;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltms/do$a$a;->a:Ltms/do$a;

    iget-object v0, v0, Ltms/do$a;->a:Ltms/do;

    invoke-static {v0}, Ltms/do;->d(Ltms/do;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/do$a$a;->a:Ltms/do$a;

    invoke-static {v0}, Ltms/do$a;->b(Ltms/do$a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltms/do$a$a;->a:Ltms/do$a;

    invoke-static {v1}, Ltms/do$a;->a(Ltms/do$a;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Ltms/do$a$a;->a:Ltms/do$a;

    iget-object v2, v2, Ltms/do$a;->a:Ltms/do;

    invoke-static {v2}, Ltms/do;->e(Ltms/do;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ltms/do$a$a;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
