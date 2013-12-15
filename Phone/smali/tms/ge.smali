.class public final Ltms/ge;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static final a:Ljava/lang/String; = "QScannerManangerImpl"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

.field private e:Ltms/gc;

.field private f:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

.field private g:[B

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Ltms/ge;->g:[B

    iput-boolean v1, p0, Ltms/ge;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltms/ge;->j:Ljava/lang/Object;

    iput-boolean v1, p0, Ltms/ge;->k:Z

    iput-boolean v1, p0, Ltms/ge;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltms/ge;->m:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)LQQPIM/SoftFeature;
    .locals 9

    const/4 v7, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, LQQPIM/SoftFeature;

    invoke-direct {v8}, LQQPIM/SoftFeature;-><init>()V

    new-instance v0, LQQPIM/FeatureKey;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget v4, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v5, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget v6, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v8, v0}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {v8, v7}, LQQPIM/SoftFeature;->setRequestType(I)V

    iget v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_1
    invoke-virtual {v8, v0}, LQQPIM/SoftFeature;->setIsBuildIn(Z)V

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    iget v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    invoke-virtual {v8, v0}, LQQPIM/SoftFeature;->setLocalSafeType(I)V

    iget v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    invoke-virtual {v8, v0}, LQQPIM/SoftFeature;->setLocalVirusID(I)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, LQQPIM/SoftFeature;->setLocalVirusName(Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/qscanner/ApkKey;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersionCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;-><init>()V

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getSoftName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getVersionCode()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v1, v1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    iput v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v1, v1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    iput v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iput v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    iput v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/ge;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltms/ge;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x49

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltms/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LQQPIM/VirusClientInfo;->getTimestamp()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    const-string v0, "B"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "A"

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanStarted()V

    :cond_0
    invoke-virtual {p0}, Ltms/ge;->a()V

    iget-object v1, p0, Ltms/ge;->g:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ltms/ge;->h:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Ltms/ge;->b(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-direct {p0, v0, p2}, Ltms/ge;->c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p2, v0}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ltms/ge;->b()V

    iget-object v1, p0, Ltms/ge;->g:[B

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Ltms/ge;->h:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V
    .locals 3

    iget-object v1, p0, Ltms/ge;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/ge;->i:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanPaused()V

    :cond_0
    iget-object v0, p0, Ltms/ge;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanContinue()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/ge;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "QScannerManangerImpl"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Ltms/ge;->j:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ltms/ge;->i:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ltms/ge;->m:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ltms/ge;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/ge;->l:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanFinished(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/AnalyseInfo;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v5, v1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v5, v5, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget-object v5, v1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v5, v5, LQQPIM/FeatureKey;->fileSize:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->safeType:I

    if-eqz v4, :cond_1

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->safeType:I

    iput v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->handleAdvice:I

    iput v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v4, v4, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v4, v4, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->virusID:I

    iput v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v1, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v1, v1, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getUploadFileInfo()LQQPIM/UploadFileInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v6, v6, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget-object v6, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v6, v6, LQQPIM/FeatureKey;->fileSize:I

    if-ne v5, v6, :cond_1

    new-instance v5, Ltms/x;

    iget-object v6, p0, Ltms/ge;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Ltms/x;-><init>(Landroid/content/Context;)V

    const-string v6, "http://uploadserver.3g.qq.com"

    invoke-virtual {v5, v6}, Ltms/x;->a(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Ltms/x;->a(Ljava/lang/String;LQQPIM/UploadFileInfo;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getActionLevel()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, LQQPIM/SoftActionConfig;

    iget-object v4, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v0, v0, LQQPIM/AnalyseInfo;->actionLevel:I

    invoke-direct {v3, v4, v0}, LQQPIM/SoftActionConfig;-><init>(LQQPIM/FeatureKey;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Ltms/ge;->b:Landroid/content/Context;

    const-string v2, "label_sa_cfg"

    const-string v3, "sa_cfg.dat"

    invoke-static {v0, v1, v2, v3}, Ltms/s;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private b(Lcom/tencent/tmsecure/module/software/AppEntity;)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Ltms/ge;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object p1

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_d

    invoke-direct {p0, p2}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/ge;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {p0, v0}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v10

    if-nez v10, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v10}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v5, 0x2

    :cond_5
    :goto_3
    iget-object v0, p0, Ltms/ge;->e:Ltms/gc;

    invoke-virtual {v10}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ltms/gc;->a(Ljava/lang/String;Ljava/lang/String;JI)Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-direct {p0, v10}, Ltms/ge;->b(Lcom/tencent/tmsecure/module/software/AppEntity;)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v5}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    move-result-object v2

    iget-object v0, p0, Ltms/ge;->d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->scanApk(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Ltms/ge;->f:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->checkCert(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    move-result-object v0

    :goto_4
    invoke-direct {p0, v0}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    move-result-object v1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->getApkkey()Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getCertMd5()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iget-object v0, p0, Ltms/ge;->e:Ltms/gc;

    invoke-virtual {v0, v2, v1}, Ltms/gc;->a(Lcom/tencent/tmsecure/module/qscanner/ApkKey;Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    move-object v0, v1

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_8

    iget v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    :cond_7
    add-int/lit8 v1, v6, 0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    :cond_8
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    const-wide/16 v2, 0x14

    sub-long v0, v2, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v10}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    iget v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    add-int/lit8 v1, v6, 0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    goto :goto_6

    :cond_d
    move-object v0, v7

    goto/16 :goto_0
.end method

.method private b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Ltms/ge;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Ltms/ge;->k:Z

    if-ne v2, v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Ltms/ge;->l:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanCanceled()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Ltms/ge;->l:Z

    :cond_0
    monitor-exit v1

    :goto_0
    return v0

    :cond_1
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

.method private c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/ge;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Ltms/f;->a()Ltms/f;

    move-result-object v0

    invoke-virtual {v0}, Ltms/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TMS licence expired! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onCloudScan()V

    :cond_3
    invoke-direct {p0, p2}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/ge;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-direct {p0, v0}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)LQQPIM/SoftFeature;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v0

    invoke-direct {p0, p2}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/ge;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, v2}, Ltms/ge;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v2}, Ltms/ge;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-direct {p0}, Ltms/ge;->f()V

    invoke-direct {p0, v2}, Ltms/ge;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onCloudScanError(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Ltms/ge;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltms/ga;->a(Landroid/content/Context;)Ltms/ga;

    move-result-object v0

    invoke-virtual {v0}, Ltms/ga;->a()I

    return-void
.end method

.method private g()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltms/ge;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private h()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "/storage"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v3}, Ltms/s;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v3}, Ltms/s;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard-ext"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v3}, Ltms/s;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ltms/ge;->f:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/ge;->f:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->getApkClass(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ltms/ge;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltms/ge;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanStarted()V

    :cond_0
    invoke-virtual {p0}, Ltms/ge;->a()V

    iget-object v1, p0, Ltms/ge;->g:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ltms/ge;->h:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Ltms/ge;->c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ltms/ge;->b()V

    iget-object v1, p0, Ltms/ge;->g:[B

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Ltms/ge;->h:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public a(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, p2, p3}, Ltms/ge;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Ltms/ge;->e:Ltms/gc;

    if-nez v0, :cond_0

    invoke-static {}, Ltms/gc;->a()Ltms/gc;

    move-result-object v0

    iput-object v0, p0, Ltms/ge;->e:Ltms/gc;

    :cond_0
    iget-object v0, p0, Ltms/ge;->d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltms/ge;->b:Landroid/content/Context;

    const-string v1, "qv_base.amf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltms/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    iget-object v2, p0, Ltms/ge;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ltms/ge;->d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    :cond_1
    iget-object v0, p0, Ltms/ge;->f:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    iget-object v1, p0, Ltms/ge;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/ge;->f:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    :cond_2
    return-void
.end method

.method public b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ltms/ge;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltms/ge;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, p2, p3}, Ltms/ge;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ltms/ge;->g:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/ge;->h:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ltms/gc;->b()V

    iput-object v2, p0, Ltms/ge;->e:Ltms/gc;

    iget-object v0, p0, Ltms/ge;->d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/ge;->d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->finalize()V

    iput-object v2, p0, Ltms/ge;->d:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ltms/ge;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Ltms/ge;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0, p1, p2}, Ltms/ge;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Ltms/ge;->j:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltms/ge;->i:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v1, p0, Ltms/ge;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/ge;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v1, p0, Ltms/ge;->m:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltms/ge;->k:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ltms/ge;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Ltms/ge;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Ltms/ge;->b()V

    return-void
.end method

.method public getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Ltms/ge;->b:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Ltms/ge;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltms/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
