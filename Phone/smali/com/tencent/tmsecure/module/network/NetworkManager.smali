.class public final Lcom/tencent/tmsecure/module/network/NetworkManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final INTERVAL_FOR_BACKGROUND:I = 0x0

.field public static final INTERVAL_FOR_REALTIME:I = 0x2

.field public static final INTERVAL_FOR_UI:I = 0x1


# instance fields
.field private a:Ltms/do;

.field private b:Ltms/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1, p2}, Ltms/do;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1, p2}, Ltms/do;->b(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public addMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1, p2, p3}, Ltms/do;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearTrafficInfo([Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Ltms/dq;

    if-nez v0, :cond_0

    new-instance v0, Ltms/dq;

    invoke-direct {v0}, Ltms/dq;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Ltms/dq;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Ltms/dq;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntervalType()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->c()I

    move-result v0

    return v0
.end method

.method public getMobileRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMobileTxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelfMobileDownloadBytes()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelfMobileUploadBytes()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTrafficEntity(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->c(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getWIFIRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->f(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWIFITxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->g(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportTrafficState()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyConfigChange()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0}, Ltms/do;->e()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/do;

    invoke-direct {v0}, Ltms/do;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public refreshTrafficInfo([Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1, p2}, Ltms/do;->a([Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public removeMonitor(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->a(Z)V

    goto :goto_0
.end method

.method public setInterval(I)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1}, Ltms/do;->a(I)V

    goto :goto_0
.end method

.method public updateSelfMobileDownloadBytes(J)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1, p2}, Ltms/do;->a(J)V

    goto :goto_0
.end method

.method public updateSelfMobileUploadBytes(J)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/do;

    invoke-virtual {v0, p1, p2}, Ltms/do;->b(J)V

    goto :goto_0
.end method
