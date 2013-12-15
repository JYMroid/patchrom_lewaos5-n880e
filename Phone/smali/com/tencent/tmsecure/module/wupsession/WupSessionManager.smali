.class public final Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public browerCheck(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/BrowserClient;",
            "LQQPIM/BrowserUrl;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/BrowserResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->a(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public checkLicence(LQQPIM/LicenceInfo;LQQPIM/LicenceCheckResult;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/LicenceInfo;LQQPIM/LicenceCheckResult;)I

    move-result v0

    return v0
.end method

.method public checkUrl(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/UrlCheckResponse;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public checkUrlEx(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RspTemplate;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->b(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getADs(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ADInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->e(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getCategoryList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Category;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getChangeUrl(LQQPIM/ChangeUrlReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/ChangeUrlReqInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ChangeUrlResInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/ChangeUrlReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getConfigV3(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfSrc;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/TipInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getConfigV3CPT(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfSrc;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/TipInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 3

    new-instance v0, Ltms/ac;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Ltms/ac;-><init>(Ljava/lang/String;)V

    const-string v1, "guid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuidFromServer(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/DeviceInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/GUIDInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getHotWord(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/HotWordReqInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/HotWordResInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getMark(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RespMark;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getMySoftList(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftKey;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/MySoftSimpleInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getOperatorDataSyncInfo(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STQuery;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STQueryResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getSoftList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SoftSimpleInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getTime(Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getTrafficCmd(LQQPIM/STCloudOrderReq;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STCloudOrderReq;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STVecCloudBak;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/STCloudOrderReq;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getTrafficTemplate(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STSmsInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STTrafficTemplate;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STRetInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->a(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getUpdatesV2(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerCmdInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public getVirusInfos(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/VirusClientInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/VirusServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gy;->a(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gy;

    invoke-direct {v0}, Ltms/gy;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public reportChannelInfo()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0}, Ltms/gy;->a()I

    move-result v0

    return v0
.end method

.method public reportDownSoft(LQQPIM/DownInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(LQQPIM/DownInfo;)I

    move-result v0

    return v0
.end method

.method public reportFBIllegaReason(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBIllegaSoft;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->c(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public reportMobile(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBMobile;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->f(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public reportNotifyInfo(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/NotifyInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->e(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public reportOperatorDataSyncErrorMsg(LQQPIM/VECReportError;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/VECReportError;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STReportBack;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(LQQPIM/VECReportError;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public reportSms(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SmsReport;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public reportSoftAction(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftAction;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->d(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public reportSoftDesc(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBSoftDesc;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->d(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public reportSoftFeature(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->c(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public reportSoftType(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "LQQPIM/SoftKey;",
            "LQQPIM/MalSoftType;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public reportSoftUsageInfo(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SUI;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->h(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public reportTel(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/TelReport;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public reportTipsRes(LQQPIM/CmdInfoRes;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(LQQPIM/CmdInfoRes;)I

    move-result v0

    return v0
.end method

.method public reportUnknowSoftInfo(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UnknownSoftInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->b(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public reportUserComment(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CommentInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public reportVirusLibUpdate()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0}, Ltms/gy;->b()I

    move-result v0

    return v0
.end method

.method public reportWBList(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBWBList;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->g(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method
