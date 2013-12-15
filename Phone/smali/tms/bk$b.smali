.class final Ltms/bk$b;
.super Lcom/tencent/tmsecure/module/aresengine/DataMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;-><init>()V

    iput-object p1, p0, Ltms/bk$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ltms/bk$b;->a()V

    return-void
.end method

.method static synthetic a(Ltms/bk$b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/bk$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Ltms/bn;

    invoke-direct {v0, p0}, Ltms/bn;-><init>(Ltms/bk$b;)V

    iput-object v0, p0, Ltms/bk$b;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/bk$b;->a:Landroid/content/Context;

    iget-object v2, p0, Ltms/bk$b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Ltms/bk$b;->a:Landroid/content/Context;

    iget-object v1, p0, Ltms/bk$b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Ltms/bk$b;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
