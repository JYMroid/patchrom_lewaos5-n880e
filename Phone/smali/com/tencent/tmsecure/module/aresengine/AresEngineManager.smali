.class public final Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ar;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ltms/ci;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0, p1}, Ltms/ar;->a(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V

    goto :goto_0
.end method

.method public findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "incoming_call"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "incoming_sms"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "outing_sms"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "system_call"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    new-instance v5, Ltms/ch;

    invoke-direct {v5, v3}, Ltms/ch;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0, p1}, Ltms/ar;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    goto :goto_1
.end method

.method public getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0}, Ltms/ar;->c()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->c:Ltms/ci;

    if-nez v0, :cond_0

    new-instance v0, Ltms/ci;

    invoke-direct {v0}, Ltms/ci;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->c:Ltms/ci;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->c:Ltms/ci;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0}, Ltms/ar;->b()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v0

    goto :goto_0
.end method

.method public intercepters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0}, Ltms/ar;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ar;

    invoke-direct {v0}, Ltms/ar;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0, p1}, Ltms/ar;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final reportSms(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0, p1}, Ltms/ar;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setAresEngineFactor(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0, p1}, Ltms/ar;->a(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V

    return-void
.end method

.method public final setHoldoffMode(I)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Ltms/ar;

    invoke-virtual {v0, p1}, Ltms/ar;->a(I)V

    goto :goto_0
.end method
