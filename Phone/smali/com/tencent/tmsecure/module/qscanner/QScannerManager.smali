.class public final Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method public static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ltms/ge;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0}, Ltms/ge;->e()V

    goto :goto_0
.end method

.method public cloudScan(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 1
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

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1, p2}, Ltms/ge;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public continueScan()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0}, Ltms/ge;->d()V

    goto :goto_0
.end method

.method public freeScanner()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0}, Ltms/ge;->b()V

    goto :goto_0
.end method

.method public getApkClass(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1}, Ltms/ge;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public initScanner()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0}, Ltms/ge;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ge;

    invoke-direct {v0}, Ltms/ge;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1}, Ltms/ge;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public pauseScan()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0}, Ltms/ge;->c()V

    goto :goto_0
.end method

.method public scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
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

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1, p2, p3}, Ltms/ge;->b(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
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

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1, p2}, Ltms/ge;->c(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
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

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1, p2}, Ltms/ge;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
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

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1, p2, p3}, Ltms/ge;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanSdcardApks(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
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

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/ge;

    invoke-virtual {v0, p1, p2}, Ltms/ge;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
