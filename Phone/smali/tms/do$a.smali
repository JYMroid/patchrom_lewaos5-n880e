.class final Ltms/do$a;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/do$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Ltms/do;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Looper;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Ltms/do$b;


# direct methods
.method private constructor <init>(Ltms/do;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Ltms/do$a;->a:Ltms/do;

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Ltms/do$a$a;

    invoke-direct {v0, p0, v2}, Ltms/do$a$a;-><init>(Ltms/do$a;Ltms/dp;)V

    iput-object v0, p0, Ltms/do$a;->e:Ljava/lang/Runnable;

    new-instance v0, Ltms/do$b;

    iget-object v1, p0, Ltms/do$a;->a:Ltms/do;

    invoke-direct {v0, v1, v2}, Ltms/do$b;-><init>(Ltms/do;Ltms/dp;)V

    iput-object v0, p0, Ltms/do$a;->f:Ltms/do$b;

    return-void
.end method

.method synthetic constructor <init>(Ltms/do;Ltms/dp;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/do$a;-><init>(Ltms/do;)V

    return-void
.end method

.method static synthetic a(Ltms/do$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Ltms/do$a;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Ltms/do$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ltms/do$a;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/do$a;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Ltms/do$a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Ltms/do$a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Ltms/do$a;->c:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltms/do$a;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltms/do$a;->d:Landroid/os/Handler;

    iget-object v0, p0, Ltms/do$a;->f:Ltms/do$b;

    iget-object v1, p0, Ltms/do$a;->a:Ltms/do;

    invoke-static {v1}, Ltms/do;->c(Ltms/do;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltms/do$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onDestory()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Ltms/do$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Ltms/do$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ltms/do$a;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Ltms/do$a;->f:Ltms/do$b;

    iget-object v1, p0, Ltms/do$a;->a:Ltms/do;

    invoke-static {v1}, Ltms/do;->c(Ltms/do;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltms/do$b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    iget-object v0, p0, Ltms/do$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Ltms/do$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ltms/do$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Ltms/do$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
