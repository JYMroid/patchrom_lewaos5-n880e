.class public final Lcom/tencent/tmsecure/module/software/SoftwareManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public canMoveToSdcard(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public clearUsageInfo()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0}, Ltms/gh;->a()V

    goto :goto_0
.end method

.method public getApkInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->c(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltms/gh;->a(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkList(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ltms/gh;->a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gh;->a([Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->b(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppVersionStatus(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getAppsCanMovable(IIZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gh;->a(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstalledApp(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2}, Ltms/gh;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getUseageInfo(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;
    .locals 5

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    const-string v1, ""

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->i(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getUseageInfo(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public goToInstalledAppDetails(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public installApp(Ljava/io/File;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method public installApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gh;->a(Ljava/lang/String;Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public installAppSilently(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInstalledSdcard(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public movePackageToExternal(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public movePackageToInteranl(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gh;

    invoke-direct {v0}, Ltms/gh;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public refleshUsageInfo()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0}, Ltms/gh;->b()V

    goto :goto_0
.end method

.method public startUpApp(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gh;->b(Ljava/lang/String;Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public uninstallAppSilently(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Ltms/gh;

    invoke-virtual {v0, p1}, Ltms/gh;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
