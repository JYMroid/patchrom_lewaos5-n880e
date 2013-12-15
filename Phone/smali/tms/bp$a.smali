.class final Ltms/bp$a;
.super Lcom/tencent/tmsecure/module/aresengine/DataMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ltms/cd;

.field private c:Ltms/bp$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltms/bp$a;->a:Landroid/content/Context;

    new-instance v0, Ltms/bp$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltms/bp$c;-><init>(Ltms/bp$1;)V

    iput-object v0, p0, Ltms/bp$a;->c:Ltms/bp$c;

    invoke-direct {p0}, Ltms/bp$a;->a()V

    return-void
.end method

.method static synthetic a(Ltms/bp$a;)Ltms/bp$c;
    .locals 1

    iget-object v0, p0, Ltms/bp$a;->c:Ltms/bp$c;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Ltms/bq;

    invoke-direct {v0, p0}, Ltms/bq;-><init>(Ltms/bp$a;)V

    iput-object v0, p0, Ltms/bp$a;->b:Ltms/cd;

    iget-object v0, p0, Ltms/bp$a;->b:Ltms/cd;

    iget-object v1, p0, Ltms/bp$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltms/cd;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Ltms/bp$a;->b:Ltms/cd;

    iget-object v1, p0, Ltms/bp$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltms/cd;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method varargs a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Ltms/bp$a;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected varargs a(ZLcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->onPostDataToFilter(ZLcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget-object v0, p3, v2

    instance-of v0, v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Ltms/bp$a;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected synthetic onPostDataToFilter(ZLcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p0, p1, p2, p3}, Ltms/bp$a;->a(ZLcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    return-void
.end method

.method public setRegisterState(Z)V
    .locals 1

    iget-object v0, p0, Ltms/bp$a;->b:Ltms/cd;

    invoke-virtual {v0}, Ltms/cd;->a()Z

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ltms/bp$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ltms/bp$a;->b()V

    goto :goto_0
.end method
