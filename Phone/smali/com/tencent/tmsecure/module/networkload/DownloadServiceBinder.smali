.class public final Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
.super Ltms/dv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Ltms/dv",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltms/dv;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAllTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/dv;->getAllTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFailedTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/dv;->getFailedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFinishedTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/dv;->getFinishedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPausedTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/dv;->getPausedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRunningTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/dv;->getRunningTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWaitingTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/dv;->getWaitingTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/dv;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    return-void
.end method

.method public bridge synthetic setDownloadDirPath(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/dv;->setDownloadDirPath(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNetworkLoadTaskDao(Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/dv;->setNetworkLoadTaskDao(Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;)V

    return-void
.end method

.method public bridge synthetic setRunningTaskCountLimit(B)V
    .locals 0

    invoke-super {p0, p1}, Ltms/dv;->setRunningTaskCountLimit(B)V

    return-void
.end method

.method public bridge synthetic unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/dv;->unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    return-void
.end method
