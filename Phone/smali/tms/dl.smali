.class Ltms/dl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;
.implements Lcom/tencent/tmsecure/module/network/INetworkMonitor;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;

.field private b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

.field private c:Ljava/util/Date;

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

.field private h:I

.field private i:[B

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ltms/dl;->d:J

    iput-wide v0, p0, Ltms/dl;->e:J

    iput-wide v0, p0, Ltms/dl;->f:J

    const/4 v0, -0x1

    iput v0, p0, Ltms/dl;->h:I

    new-array v0, v2, [B

    iput-object v0, p0, Ltms/dl;->i:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    iput-boolean v2, p0, Ltms/dl;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/dl;->l:Z

    iput-object p1, p0, Ltms/dl;->a:Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;

    iput-object p2, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iput-object v1, p0, Ltms/dl;->c:Ljava/util/Date;

    iget-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iput-wide v1, p0, Ltms/dl;->d:J

    iget-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    iput-wide v1, p0, Ltms/dl;->e:J

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iput-wide v0, p0, Ltms/dl;->f:J

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getClosingDayForMonth()I

    move-result v0

    iput v0, p0, Ltms/dl;->h:I

    return-void
.end method

.method private f()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;
    .locals 5

    new-instance v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    iget-wide v1, p0, Ltms/dl;->d:J

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-wide v1, p0, Ltms/dl;->f:J

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iget-wide v1, p0, Ltms/dl;->d:J

    iget-wide v3, p0, Ltms/dl;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mRetialForMonth:J

    iget-wide v1, p0, Ltms/dl;->e:J

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    iget-object v1, p0, Ltms/dl;->c:Ljava/util/Date;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iget-object v1, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->setTodayNetworkInfoEntity(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 9

    const-wide/16 v7, 0x0

    iget-object v0, p0, Ltms/dl;->a:Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;->getNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;

    move-result-object v4

    iget-wide v0, v4, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_3

    iget-object v0, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An unexpected exception had happen. The monitor\'s enable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltms/dl;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, v4, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    iget-wide v2, v4, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslate:J

    add-long/2addr v0, v2

    iget-object v2, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-wide v2, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    iget-object v5, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-wide v5, v5, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslate:J

    add-long/2addr v2, v5

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    cmp-long v5, v2, v7

    if-nez v5, :cond_2

    :cond_1
    iput-object v4, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    move-wide v2, v0

    :cond_2
    sub-long v2, v0, v2

    cmp-long v5, v2, v7

    if-gez v5, :cond_4

    :goto_0
    iget-wide v2, p0, Ltms/dl;->e:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ltms/dl;->e:J

    iget-wide v2, p0, Ltms/dl;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltms/dl;->f:J

    iput-object v4, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    iget-object v1, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->setLastNetDataEntity(Lcom/tencent/tmsecure/module/network/NetDataEntity;)V

    :cond_3
    invoke-direct {p0}, Ltms/dl;->f()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltms/dl;->onNormalChanged(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    return-void

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    iput-boolean p1, p0, Ltms/dl;->k:Z

    iget-boolean v0, p0, Ltms/dl;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getLastNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;

    move-result-object v0

    iput-object v0, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-object v0, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltms/dl;->a:Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;->getNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;

    move-result-object v0

    iput-object v0, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    iget-object v1, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->setLastNetDataEntity(Lcom/tencent/tmsecure/module/network/NetDataEntity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Ltms/dl;->f()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    goto :goto_0
.end method

.method public addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I
    .locals 2

    iget-object v1, p0, Ltms/dl;->i:[B

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    iget-object v1, p0, Ltms/dl;->c:Ljava/util/Date;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iget-wide v1, p0, Ltms/dl;->e:J

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    iget-object v1, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->insert(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->resetToDayNetworkInfoEntity()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltms/dl;->e:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ltms/dl;->c:Ljava/util/Date;

    invoke-virtual {p0}, Ltms/dl;->onDayChanged()V

    return-void
.end method

.method protected c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltms/dl;->f:J

    invoke-virtual {p0}, Ltms/dl;->onClosingDateReached()V

    return-void
.end method

.method public clearAllLogs()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltms/dl;->e:J

    iput-wide v0, p0, Ltms/dl;->f:J

    invoke-direct {p0}, Ltms/dl;->f()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ltms/dl;->c:Ljava/util/Date;

    iget-object v0, p0, Ltms/dl;->a:Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;->getNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;

    move-result-object v0

    iput-object v0, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    iget-object v1, p0, Ltms/dl;->g:Lcom/tencent/tmsecure/module/network/NetDataEntity;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->setLastNetDataEntity(Lcom/tencent/tmsecure/module/network/NetDataEntity;)V

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->resetToDayNetworkInfoEntity()V

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->clearAll()V

    return-void
.end method

.method public d()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x5

    iget-boolean v0, p0, Ltms/dl;->k:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    iget-object v2, p0, Ltms/dl;->c:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    iget v2, p0, Ltms/dl;->h:I

    invoke-static {v0, v2}, Ltms/p;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v2

    iget v3, p0, Ltms/dl;->h:I

    invoke-static {v1, v3}, Ltms/p;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    iget v5, p0, Ltms/dl;->h:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ltms/dl;->c()V

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Ltms/dl;->b()V

    :cond_1
    invoke-virtual {p0}, Ltms/dl;->a()V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    iget-object v1, p0, Ltms/dl;->c:Ljava/util/Date;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getSystemTimeChange(Ljava/util/Date;)Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iput-wide v1, p0, Ltms/dl;->d:J

    iget-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iput-wide v1, p0, Ltms/dl;->f:J

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    iput-wide v0, p0, Ltms/dl;->e:J

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ltms/dl;->c:Ljava/util/Date;

    invoke-direct {p0}, Ltms/dl;->f()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    return-void
.end method

.method public getAllLogs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method public getRefreshState()Z
    .locals 1

    iget-boolean v0, p0, Ltms/dl;->l:Z

    return v0
.end method

.method public notifyConfigChange()V
    .locals 2

    iget-boolean v0, p0, Ltms/dl;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getClosingDayForMonth()I

    move-result v0

    iput v0, p0, Ltms/dl;->h:I

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getTotalForMonth()J

    move-result-wide v0

    iput-wide v0, p0, Ltms/dl;->d:J

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getUsedForMonth()J

    move-result-wide v0

    iput-wide v0, p0, Ltms/dl;->f:J

    iget-object v0, p0, Ltms/dl;->b:Lcom/tencent/tmsecure/module/network/INetworkInfoDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkInfoDao;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    iput-wide v0, p0, Ltms/dl;->e:J

    :cond_0
    return-void
.end method

.method public onClosingDateReached()V
    .locals 3

    iget-object v1, p0, Ltms/dl;->i:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/dl;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;->onClosingDateReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDayChanged()V
    .locals 3

    iget-object v1, p0, Ltms/dl;->i:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/dl;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;->onDayChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNormalChanged(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 3

    iget-object v1, p0, Ltms/dl;->i:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/dl;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;->onNormalChanged(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeCallback(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Ltms/dl;->i:[B

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit v3

    :goto_2
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    monitor-exit v3

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z
    .locals 2

    iget-object v1, p0, Ltms/dl;->i:[B

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ltms/dl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRefreshState(Z)V
    .locals 0

    iput-boolean p1, p0, Ltms/dl;->l:Z

    return-void
.end method
