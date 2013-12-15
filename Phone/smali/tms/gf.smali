.class final Ltms/gf;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field private static final d:I = 0x20000000

.field private static final e:I = 0x40000

.field private static final f:I = -0x1

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    sput v1, Ltms/gf;->j:I

    sput v1, Ltms/gf;->k:I

    sput v1, Ltms/gf;->l:I

    sput v1, Ltms/gf;->m:I

    const-string v0, "android.content.pm.IPackageManager$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_getInstallLocation"

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltms/gf;->l:I

    const-string v0, "TRANSACTION_setInstallLocation"

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltms/gf;->k:I

    const-string v0, "TRANSACTION_movePackage"

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltms/gf;->j:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 5

    const-class v1, Ltms/gf;

    monitor-enter v1

    :try_start_0
    sget v0, Ltms/gf;->m:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget v0, Ltms/gf;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    const-string v0, "service call package %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Ltms/gf;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "[ ]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    const/4 v2, 0x2

    :try_start_2
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Ltms/gf;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    :try_start_3
    sget v0, Ltms/gf;->m:I

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput v0, Ltms/gf;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(I)V
    .locals 5

    const-class v1, Ltms/gf;

    monitor-enter v1

    :try_start_0
    const-string v0, "service call package %d i32 %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Ltms/gf;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput p0, Ltms/gf;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Ltms/gf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Ltms/gf;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-static {}, Ltms/gf;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Ltms/gf;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Ltms/gf;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Ltms/gf;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "installLocation"

    invoke-static {p0, v2, v0}, Ltms/ae;->a(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Ltms/gf;->a()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_3
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/k;

    move-result-object v0

    invoke-interface {v0, p0}, Ltms/k;->c(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "service call package %d s16 %s i32 1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Ltms/gf;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v2, "isExternalStorageEmulated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/k;

    move-result-object v0

    invoke-interface {v0, p0}, Ltms/k;->d(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "service call package %d s16 %s i32 2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Ltms/gf;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
