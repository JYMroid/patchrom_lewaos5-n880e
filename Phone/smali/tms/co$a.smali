.class final Ltms/co$a;
.super Lcom/tencent/tmsecure/module/aresengine/DataMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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

.field private b:Landroid/database/ContentObserver;

.field private c:Landroid/content/BroadcastReceiver;

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltms/co$a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltms/co$a;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Ltms/co$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ltms/co$a;->a()V

    return-void
.end method

.method static synthetic a(Ltms/co$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/co$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 4

    const v3, 0x7fffffff

    new-instance v0, Ltms/cp;

    invoke-direct {v0, p0}, Ltms/cp;-><init>(Ltms/co$a;)V

    iput-object v0, p0, Ltms/co$a;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/co$a;->a:Landroid/content/Context;

    iget-object v2, p0, Ltms/co$a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/co$a;->a:Landroid/content/Context;

    iget-object v2, p0, Ltms/co$a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ltms/cq;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Ltms/cq;-><init>(Ltms/co$a;Landroid/os/Handler;)V

    iput-object v0, p0, Ltms/co$a;->b:Landroid/database/ContentObserver;

    iget-object v0, p0, Ltms/co$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Ltms/co$a;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private a(Landroid/database/ContentObserver;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/ContentObserver;",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p2, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p2, v2}, Ltms/co$a;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Ltms/co$a;Landroid/database/ContentObserver;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltms/co$a;->a(Landroid/database/ContentObserver;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-void
.end method

.method static synthetic b(Ltms/co$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Ltms/co$a;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/co$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltms/co$a;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Ltms/co$a;->b:Landroid/database/ContentObserver;

    iget-object v0, p0, Ltms/co$a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltms/co$a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Ltms/co$a;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic c(Ltms/co$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Ltms/co$a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Ltms/co$a;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
