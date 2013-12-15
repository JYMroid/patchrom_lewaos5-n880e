.class public Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;
.super Ljava/lang/Object;
.source "CallLogDao.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static mCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

.field private static mCallLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

    if-nez v0, :cond_0

    .line 19
    const-class v1, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

    monitor-enter v1

    .line 20
    :try_start_0
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

    invoke-direct {v0}, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

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
    .line 57
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
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
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    return-object v0
.end method

.method public getSecureCallList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, callLogList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    .line 29
    .local v1, entity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v1           #entity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    :cond_0
    return-object v0
.end method

.method public insert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J
    .locals 2
    .parameter "entity"
    .parameter "paramFilterResult"

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public update(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z
    .locals 5
    .parameter "entity"

    .prologue
    .line 40
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 42
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 43
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    .line 44
    .local v2, tempEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->mCallLogList:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v2           #tempEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
