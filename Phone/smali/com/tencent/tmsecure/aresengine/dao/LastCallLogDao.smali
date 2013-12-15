.class public Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;
.super Ljava/lang/Object;
.source "LastCallLogDao.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;


# static fields
.field private static mLastCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;->mLastCallList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;->mLastCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;

    if-nez v0, :cond_0

    .line 18
    const-class v1, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;

    monitor-enter v1

    .line 19
    :try_start_0
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;

    invoke-direct {v0}, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;->mLastCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;->mLastCallLogDao:Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .parameter "phonenum"

    .prologue
    .line 27
    sget-object v2, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;->mLastCallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    .line 28
    .local v1, tempEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    iget-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const/4 v2, 0x1

    .line 32
    .end local v1           #tempEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 0
    .parameter "calllog"

    .prologue
    .line 37
    return-void
.end method
