.class final Ltms/ej;
.super Lcom/tencent/tmsecure/module/permission/IFirewallService$Stub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/ej$a;
    }
.end annotation


# static fields
.field private static volatile f:Ltms/ej; = null

.field private static final g:I = 0xbbb

.field private static final h:I = 0x132b534


# instance fields
.field private i:Ljava/lang/reflect/Field;

.field private j:Ljava/lang/reflect/Field;

.field private k:Ljava/lang/reflect/Field;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/permission/IFirewallService$Stub;-><init>()V

    const-string v0, "com.tencent.tmsecure.IFirewallService"

    invoke-virtual {p0, p0, v0}, Ltms/ej;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    const-string v0, "package"

    invoke-static {v0}, Ltms/af;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "mPackages"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltms/ej;->l:Ljava/util/HashMap;

    const-string v0, "android.content.pm.PackageParser$Package"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExtras"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ltms/ej;->i:Ljava/lang/reflect/Field;

    iget-object v0, p0, Ltms/ej;->i:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const-string v0, "com.android.server.pm.PackageSetting"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "com.android.server.pm.GrantedPermissions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v2, "sharedUser"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Ltms/ej;->j:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ltms/ej;->j:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v1, "gids"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ltms/ej;->k:Ljava/lang/reflect/Field;

    iget-object v0, p0, Ltms/ej;->k:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Ltms/ez;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltms/ej;->n:Landroid/content/Context;

    new-instance v0, Ltms/ej$a;

    invoke-direct {v0, p0}, Ltms/ej$a;-><init>(Ltms/ej;)V

    iput-object v0, p0, Ltms/ej;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/ej;->n:Landroid/content/Context;

    iget-object v2, p0, Ltms/ej;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void

    :cond_0
    const-string v0, "com.android.server.PackageManagerService$PackageSetting"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "com.android.server.PackageManagerService$GrantedPermissions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Ltms/ej;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Ltms/ej;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v1, Ltms/ej;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltms/ej;->f:Ltms/ej;

    if-nez v0, :cond_0

    new-instance v0, Ltms/ej;

    invoke-direct {v0}, Ltms/ej;-><init>()V

    sput-object v0, Ltms/ej;->f:Ltms/ej;

    :cond_0
    const-string v0, "tms_firewall"

    sget-object v2, Ltms/ej;->f:Ltms/ej;

    invoke-static {v0, v2}, Ltms/af;->a(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;[I)V
    .locals 4

    iget-object v2, p0, Ltms/ej;->l:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ltms/ej;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltms/ej;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Ltms/ej;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Ltms/ej;->k:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v3, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v2

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)[I
    .locals 3

    iget-object v1, p0, Ltms/ej;->l:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/ej;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Ltms/ej;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ltms/ej;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Ltms/ej;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    iget-object v2, p0, Ltms/ej;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isNetEnable(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v5, 0xbbb

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ltms/ej;->a(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    const v4, 0x132b534

    if-eq v3, v4, :cond_0

    aget v3, v2, v0

    if-ne v3, v5, :cond_2

    :cond_0
    aget v0, v2, v0

    if-ne v0, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNetEnable(Ljava/lang/String;Z)V
    .locals 6

    const v3, 0x132b534

    const/16 v2, 0xbbb

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ltms/ej;->a(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget v5, v4, v0

    if-eq v5, v3, :cond_0

    aget v5, v4, v0

    if-ne v5, v2, :cond_3

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_4

    move v1, v2

    :goto_1
    aput v1, v4, v0

    invoke-direct {p0, p1, v4}, Ltms/ej;->a(Ljava/lang/String;[I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public setNetEnable(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Ltms/ej;->setNetEnable(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
