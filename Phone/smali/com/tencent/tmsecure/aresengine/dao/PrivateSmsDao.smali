.class public Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;
.super Ljava/lang/Object;
.source "PrivateSmsDao.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/ISmsDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static mSecureSmsDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

.field private static mSecureSmsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

    if-nez v0, :cond_0

    .line 19
    const-class v1, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

    monitor-enter v1

    .line 20
    :try_start_0
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

    invoke-direct {v0}, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearAll()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    return-object v0
.end method

.method public insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J
    .locals 2
    .parameter "entity"
    .parameter "paramFilterResult"

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public update(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 5
    .parameter "entity"

    .prologue
    .line 32
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 34
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 35
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    .line 36
    .local v2, tempEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->mSecureSmsList:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v2           #tempEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
