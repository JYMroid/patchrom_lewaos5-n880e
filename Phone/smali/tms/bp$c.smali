.class final Ltms/bp$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private a:Ltms/as;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ltms/as;->a()Ltms/as;

    move-result-object v0

    iput-object v0, p0, Ltms/bp$c;->a:Ltms/as;

    return-void
.end method

.method synthetic constructor <init>(Ltms/bp$1;)V
    .locals 0

    invoke-direct {p0}, Ltms/bp$c;-><init>()V

    return-void
.end method

.method private a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/common/ISDKClient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/bp$c;->a:Ltms/as;

    invoke-virtual {v0}, Ltms/as;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    invoke-virtual {v5}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "sms"

    invoke-static {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-interface {v0, v5}, Lcom/tencent/tmsecure/common/ISDKClient;->sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "blocked"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_4
    move-object v0, v2

    goto :goto_3
.end method

.method static synthetic a(Ltms/bp$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Ltms/bp$c;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/common/ISDKClient;",
            ">;",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    invoke-virtual {v1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sms"

    invoke-static {p2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "event_sender"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/common/ISDKClient;->sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic a(Ltms/bp$c;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltms/bp$c;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v0, p2, v2

    check-cast v0, Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Ltms/bp$c;->a:Ltms/as;

    invoke-virtual {v3}, Ltms/as;->c()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Ltms/bp$c;->a(Landroid/content/BroadcastReceiver;)V

    new-instance v0, Ltms/ca;

    invoke-direct {v0, p0, p1}, Ltms/ca;-><init>(Ltms/bp$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    invoke-virtual {v0}, Ltms/ca;->start()V

    move v0, v2

    goto :goto_0
.end method
