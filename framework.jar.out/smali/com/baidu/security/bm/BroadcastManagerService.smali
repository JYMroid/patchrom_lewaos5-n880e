.class public Lcom/baidu/security/bm/BroadcastManagerService;
.super Lcom/baidu/security/bm/IBroadcastManagerService$Stub;
.source "BroadcastManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    }
.end annotation


# static fields
.field private static final ADD_LOCKED_APPS:I = 0x4

.field private static final ADD_SILENT_APPS:I = 0x2

.field private static final CLASS_FIELD_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final CLASS_NAME_BROADCAST_FILTER:Ljava/lang/String; = "com.android.server.am.BroadcastFilter"

.field private static final CLASS_NAME_PACKAGEMANAGERSERVICE:Ljava/lang/String; = "com.android.server.pm.PackageManagerService"

.field private static final CLASS_NAME_PACKAGESETTINGBASE:Ljava/lang/String; = "com.android.server.pm.PackageSettingBase"

.field private static final CLASS_NAME_PM_SETTINGS:Ljava/lang/String; = "com.android.server.pm.Settings"

.field private static final CLASS_NAME_PROCESSRECORD:Ljava/lang/String; = "com.android.server.am.ProcessRecord"

.field private static final CLASS_PACKAGESETTING_FIELD_STOPPED:Ljava/lang/String; = "stopped"

.field private static final CLASS_PMS_FIELD_MPROTECTEDBROADCASTS:Ljava/lang/String; = "mProtectedBroadcasts"

.field private static final CLASS_PMS_FIELD_MSETTINGS:Ljava/lang/String; = "mSettings"

.field private static final CLASS_PM_SETTINGS_FIELD_MPACKAGES:Ljava/lang/String; = "mPackages"

.field private static final CLASS_PR_FIELD_PKGLIST:Ljava/lang/String; = "pkgList"

.field private static final ERROR_BLACK_SILENT_LISTS_ARE_EMPTY:I = -0x2

.field private static final ERROR_SERVICE_DISABLED:I = -0x1

.field private static final ERROR_SERVICE_UNINIT:I = -0x3

.field private static final OK_FOUND_AND_FILTERED:I = 0x1

.field private static final OK_NO_NEED_TO_FILTER:I = 0x0

.field private static final PACKAGEMANAGERSERVICE_NAME:Ljava/lang/String; = "package"

.field private static final REMOVE_LOCKED_APPS:I = 0x5

.field private static final REMOVE_SILENT_APP:I = 0x3

.field private static final SHOW_LOG:Z = false

.field public static final TAG:Ljava/lang/String; = "BroadcastManagerService"

.field private static final UPDATE_AUTO_LAUNCH_BLACKLIST:I = 0x1

.field private static broadcastFilter_packageName:Ljava/lang/reflect/Field;

.field private static volatile enabled:Z

.field private static mService:Lcom/baidu/security/bm/BroadcastManagerService;

.field private static processRecord_pkgList:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPMSIBinder:Landroid/os/IBinder;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedSilentApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageManagerService_mSettings:Ljava/lang/Object;

.field private packageSetting_stopped:Ljava/lang/reflect/Field;

.field private pmSettings_mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    .line 70
    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    .line 80
    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/security/bm/BroadcastManagerService;->enabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 977
    invoke-direct {p0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;-><init>()V

    .line 51
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    .line 53
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    .line 58
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    .line 63
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    .line 83
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    .line 84
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 89
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "YiBMS"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 94
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    .line 978
    iput-object p1, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    .line 979
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 981
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->loadBlackList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 982
    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/security/bm/BroadcastManagerService;->enabled:Z

    .line 985
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mProtectedApps:Ljava/util/HashSet;

    .line 986
    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 988
    sget-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 989
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    .line 994
    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 996
    sget-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 997
    .restart local v3       #pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/baidu/security/bm/LockedAppsController;->loadLockedAppsList()Z

    .line 1003
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1004
    new-instance v4, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;-><init>(Lcom/baidu/security/bm/BroadcastManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    .line 1005
    return-void
.end method

.method private buildAutoLaunchAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 12
    .parameter "appInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/security/bm/AutoLaunchAppInfo;"
        }
    .end annotation

    .prologue
    .local p2, systemActions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 864
    if-nez p1, :cond_1

    .line 865
    const/4 v1, 0x0

    .line 945
    :cond_0
    :goto_0
    return-object v1

    .line 868
    :cond_1
    const/4 v1, 0x0

    .line 869
    .local v1, autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v7, 0x0

    .line 870
    .local v7, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 873
    .local v6, packageName:Ljava/lang/String;
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    array-length v9, v10

    .line 874
    .local v9, yiConcernActionsNum:I
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    if-eqz v10, :cond_5

    if-lez v9, :cond_5

    .line 875
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-direct {p0, v6, v10}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 876
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 877
    if-nez v1, :cond_2

    .line 878
    new-instance v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v1           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {v1, v6, v11, v10}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Ljava/lang/String;II)V

    .line 880
    .restart local v1       #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_2
    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 885
    :cond_3
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_5

    .line 886
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-direct {p0, v6, v10}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 887
    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 888
    if-nez v1, :cond_4

    .line 889
    new-instance v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v1           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {v1, v6, v11, v10}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Ljava/lang/String;II)V

    .line 891
    .restart local v1       #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_4
    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 900
    .end local v2           #i:I
    :cond_5
    const-wide/16 v4, 0x0

    .line 905
    .local v4, now1:J
    if-eqz v1, :cond_6

    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_9

    :cond_6
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 907
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {p2, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 908
    if-eqz p2, :cond_9

    .line 909
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 911
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 912
    if-nez v1, :cond_8

    .line 913
    new-instance v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v1           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {v1, v6, v11, v10}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Ljava/lang/String;II)V

    .line 915
    .restart local v1       #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_8
    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 929
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    if-eqz v1, :cond_0

    .line 930
    invoke-static {v6}, Lcom/baidu/security/bm/AutoLaunchController;->packageInBlackList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 931
    iput-boolean v11, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 932
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->getBlackListForReading()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 933
    .local v8, state:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 934
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    goto/16 :goto_0

    .line 885
    .end local v4           #now1:J
    .end local v8           #state:Ljava/lang/Integer;
    .restart local v2       #i:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 938
    .end local v2           #i:I
    .restart local v4       #now1:J
    :cond_b
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    goto/16 :goto_0
.end method

.method private dumpHashMap(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 971
    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 972
    .local v2, item:Ljava/lang/String;
    const-string v3, "BroadcastManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    .end local v2           #item:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static filterBroadcastReceiver(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;Ljava/util/ArrayList;)I
    .locals 6
    .parameter "declaredReceivers"
    .parameter "registeredReceivers"
    .parameter "intent"
    .parameter "runningAppProcesses"

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, retVal:I
    sget-boolean v5, Lcom/baidu/security/bm/BroadcastManagerService;->enabled:Z

    if-nez v5, :cond_1

    .line 173
    const/4 v3, -0x1

    .line 213
    :cond_0
    :goto_0
    return v3

    .line 175
    :cond_1
    sget-object v5, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    if-nez v5, :cond_2

    .line 176
    const/4 v3, -0x3

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->getBlackListForReading()Ljava/util/HashMap;

    move-result-object v0

    .line 180
    .local v0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/baidu/security/bm/SilentAppsController;->getSilentAppsForReading()Ljava/util/HashSet;

    move-result-object v4

    .line 181
    .local v4, silentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-gtz v5, :cond_5

    .line 182
    :cond_4
    const/4 v3, -0x2

    goto :goto_0

    .line 185
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_0

    .line 186
    const-wide/16 v1, 0x0

    .line 190
    .local v1, now1:J
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {p0, v5, v4, p3}, Lcom/baidu/security/bm/BroadcastManagerService;->findAndFilterDeclaredReceivers(Ljava/util/List;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static findAndFilterDeclaredReceivers(Ljava/util/List;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 14
    .parameter "declaredReceivers"
    .parameter
    .parameter
    .parameter "runningAppProcesses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, blackList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, silentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_2

    .line 559
    :cond_0
    const/4 v9, 0x0

    .line 634
    :cond_1
    return v9

    .line 562
    :cond_2
    const/4 v9, 0x0

    .line 563
    .local v9, retVal:Z
    const/4 v3, 0x0

    .line 564
    .local v3, foundPkgName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 565
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 566
    .local v8, receivers:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 567
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 568
    .local v6, item:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 569
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 570
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 571
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_a

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 572
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 590
    :cond_4
    :goto_1
    if-eqz v3, :cond_3

    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, foundAutoLaunch:Z
    const/4 v5, 0x0

    .line 593
    .local v5, it:Ljava/util/Iterator;
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 594
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, blackListItem:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 597
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #blackListItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 598
    .restart local v1       #blackListItem:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 599
    const/4 v2, 0x1

    .line 604
    .end local v1           #blackListItem:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .line 605
    .local v4, foundSilent:Z
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 606
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 607
    const/4 v11, 0x0

    .line 608
    .local v11, silentListItem:Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 609
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #silentListItem:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 610
    .restart local v11       #silentListItem:Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 611
    const/4 v4, 0x1

    .line 616
    .end local v11           #silentListItem:Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_9

    if-eqz v4, :cond_3

    .line 620
    :cond_9
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService;->isRunningApp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 621
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 622
    const/4 v9, 0x1

    goto :goto_0

    .line 577
    .end local v2           #foundAutoLaunch:Z
    .end local v4           #foundSilent:Z
    .end local v5           #it:Ljava/util/Iterator;
    :cond_a
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_b

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_b

    .line 578
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 583
    :cond_b
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 584
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    goto :goto_1

    .line 625
    .restart local v2       #foundAutoLaunch:Z
    .restart local v4       #foundSilent:Z
    .restart local v5       #it:Ljava/util/Iterator;
    :cond_c
    if-eqz v4, :cond_3

    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    if-eqz v12, :cond_3

    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    iget-object v12, v12, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    if-eqz v12, :cond_3

    .line 626
    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    iget-object v12, v12, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 627
    .local v7, msg:Landroid/os/Message;
    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    iget-object v12, v12, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v12, v7}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private static findAndFilterRegisteredReceivers(Ljava/util/List;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "registeredReceivers"
    .parameter
    .parameter
    .parameter "runningAppProcesses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, blackList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, silentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 641
    :cond_0
    const/4 v6, 0x0

    .line 675
    :cond_1
    return v6

    .line 644
    :cond_2
    const/4 v6, 0x0

    .line 645
    .local v6, retVal:Z
    const/4 v2, 0x0

    .line 646
    .local v2, foundPkgName:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 647
    .local v5, receivers:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 648
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 649
    .local v4, item:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 650
    if-eqz v4, :cond_4

    .line 651
    invoke-static {v4}, Lcom/baidu/security/bm/BroadcastManagerService;->getClassBroadcastFilterFieldPkgName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 653
    :cond_4
    if-eqz v2, :cond_3

    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, found:Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 656
    .local v3, it:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 657
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    .local v0, blacklistItem:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 659
    const/4 v1, 0x1

    .line 663
    .end local v0           #blacklistItem:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_3

    .line 667
    invoke-static {v2, p3}, Lcom/baidu/security/bm/BroadcastManagerService;->isRunningApp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 668
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 669
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static getClassBroadcastFilterFieldPkgName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "obj"

    .prologue
    .line 731
    if-nez p0, :cond_0

    .line 732
    const/4 v3, 0x0

    .line 755
    :goto_0
    return-object v3

    .line 735
    :cond_0
    const/4 v3, 0x0

    .line 737
    .local v3, pkgName:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    if-nez v4, :cond_1

    .line 738
    const-string v4, "com.android.server.am.BroadcastFilter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 739
    .local v1, broadcastFilterClass:Ljava/lang/Class;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    .line 740
    sget-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 742
    .end local v1           #broadcastFilterClass:Ljava/lang/Class;
    :cond_1
    sget-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 743
    :catch_0
    move-exception v2

    .line 744
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Class: com.android.server.am.BroadcastFilter, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 746
    .local v2, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Field: packageName, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 748
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: packageName, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 750
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: packageName, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 751
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 752
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClassBroadcastFilterFieldPkgName(), RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPMSAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "attr"

    .prologue
    .line 789
    const/4 v3, 0x0

    .line 791
    .local v3, retVal:Ljava/lang/Object;
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    if-nez v4, :cond_0

    .line 792
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    .line 794
    :cond_0
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 796
    :try_start_0
    const-string v4, "com.android.server.pm.PackageManagerService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 797
    .local v2, pmsClass:Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 798
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 799
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 816
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #pmsClass:Ljava/lang/Class;
    .end local v3           #retVal:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 800
    .restart local v3       #retVal:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Class: com.android.server.pm.PackageManagerService, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 803
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 808
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BMS.getPMSAttribute(), RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 813
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    const-string v4, "BroadcastManagerService"

    const-string v5, "BMS.getPMSAttribute(), can not get the instance of PackageManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getResolveInfo(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    if-nez p1, :cond_0

    .line 821
    const/4 v1, 0x0

    .line 837
    :goto_0
    return-object v1

    .line 824
    :cond_0
    const/4 v1, 0x0

    .line 826
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v5

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BroadcastManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastManagerService.getResolveInfo(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "packageName"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 842
    :cond_0
    const/4 v1, 0x0

    .line 860
    :goto_0
    return-object v1

    .line 847
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.ACTION_MEDIA_BAD_REMOVAL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 855
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/sdcard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 858
    :cond_3
    invoke-direct {p0, v0}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 860
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0
.end method

.method private getSystemProtectedBroadcasts()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    if-nez v6, :cond_0

    .line 762
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    .line 764
    :try_start_0
    const-string/jumbo v6, "mProtectedBroadcasts"

    invoke-direct {p0, v6}, Lcom/baidu/security/bm/BroadcastManagerService;->getPMSAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 765
    .local v3, fieldObject:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 766
    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v5, v0

    .line 770
    .local v5, protectedBroadcasts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 771
    .local v4, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 772
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 773
    .local v1, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #fieldObject:Ljava/lang/Object;
    .end local v4           #it:Ljava/util/Iterator;
    .end local v5           #protectedBroadcasts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 777
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v6, "BroadcastManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BMS.getSystemProtectedBroadcasts(), RuntimeException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    return-object v6
.end method

.method private static isRunningApp(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter "packageName"
    .parameter "allRunningApp"

    .prologue
    const/4 v6, 0x0

    .line 679
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v6

    .line 683
    :cond_1
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    if-nez v7, :cond_2

    .line 685
    :try_start_0
    const-string v7, "com.android.server.am.ProcessRecord"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 686
    .local v5, processRecordClass:Ljava/lang/Class;
    const-string/jumbo v7, "pkgList"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    sput-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    .line 687
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 696
    .end local v5           #processRecordClass:Ljava/lang/Class;
    :cond_2
    :goto_1
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_0

    .line 700
    const/4 v6, 0x0

    .line 701
    .local v6, retVal:Z
    const/4 v4, 0x0

    .line 702
    .local v4, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 703
    .local v1, app:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 705
    :try_start_1
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    move-object v0, v7

    check-cast v0, Ljava/util/HashSet;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 711
    :goto_2
    if-eqz v4, :cond_3

    .line 714
    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 715
    const/4 v6, 0x1

    .line 719
    goto :goto_0

    .line 688
    .end local v1           #app:Ljava/lang/Object;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #retVal:Z
    :catch_0
    move-exception v2

    .line 689
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find Class: com.android.server.am.ProcessRecord, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 690
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 691
    .local v2, e:Ljava/lang/NoSuchFieldException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find Field: pkgList, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 692
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 693
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RuntimeException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 706
    .end local v2           #e:Ljava/lang/RuntimeException;
    .restart local v1       #app:Ljava/lang/Object;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6       #retVal:Z
    :catch_3
    move-exception v2

    .line 707
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access Field: pkgList, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 708
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 709
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access Field: pkgList, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 154
    sget-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/baidu/security/bm/BroadcastManagerService;

    invoke-direct {v0, p0}, Lcom/baidu/security/bm/BroadcastManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 162
    const-string v0, "BroadcastManagerService"

    sget-object v1, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public addCleanedApp(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/bm/BroadcastManagerService;->isTrustedApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    .local v0, app:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 369
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addCleanedApps([Ljava/lang/String;)V
    .locals 8
    .parameter "packageNameArray"

    .prologue
    .line 376
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v4, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 383
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/baidu/security/bm/BroadcastManagerService;->isTrustedApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 389
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 390
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 391
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLockedApp(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v0, app:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 406
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLockedApps([Ljava/lang/String;)V
    .locals 8
    .parameter "packageNameArray"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    .local v4, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 419
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 422
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public appIsLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 478
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/baidu/security/bm/LockedAppsController;->packageInLockedAppsList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 295
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object v2

    .line 299
    :cond_1
    const/4 v0, 0x0

    .line 301
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :goto_1
    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/baidu/security/bm/BroadcastManagerService;->getSystemProtectedBroadcasts()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/baidu/security/bm/BroadcastManagerService;->buildAutoLaunchAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v2

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 14

    .prologue
    .line 220
    iget-object v12, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    if-nez v12, :cond_1

    .line 221
    const/4 v9, 0x0

    .line 288
    :cond_0
    return-object v9

    .line 223
    :cond_1
    const/4 v9, 0x0

    .line 225
    .local v9, retVal:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 227
    .local v4, autoLaunchAppList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    iget-object v12, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/baidu/security/bm/BroadcastManagerService;->getSystemProtectedBroadcasts()Ljava/util/HashSet;

    move-result-object v10

    .line 256
    .local v10, systemActions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 258
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mProtectedApps:Ljava/util/HashSet;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 260
    invoke-direct {p0, v2, v10}, Lcom/baidu/security/bm/BroadcastManagerService;->buildAutoLaunchAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v3

    .line 266
    .local v3, autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 273
    .local v11, totalAppNum:I
    if-lez v11, :cond_0

    .line 274
    new-array v9, v11, [Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, index:I
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 277
    .local v8, it:Ljava/util/Iterator;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v11, :cond_0

    .line 278
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 279
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 280
    .local v0, alAppInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    aput-object v0, v9, v5

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 459
    invoke-static {}, Lcom/baidu/security/bm/LockedAppsController;->getLockedAppsListForReading()Ljava/util/HashSet;

    move-result-object v3

    .line 460
    .local v3, lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 461
    .local v0, appsArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 462
    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 463
    .local v4, pkgName:Ljava/lang/String;
    aput-object v4, v0, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public isPackageStopped(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    .line 492
    const/4 v4, 0x0

    .line 493
    .local v4, retVal:Z
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 495
    :try_start_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 496
    const-string/jumbo v5, "mSettings"

    invoke-direct {p0, v5}, Lcom/baidu/security/bm/BroadcastManagerService;->getPMSAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    .line 498
    :cond_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 499
    const-string v5, "com.android.server.pm.Settings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 500
    .local v3, pmsClass:Ljava/lang/Class;
    const-string/jumbo v5, "mPackages"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 501
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 502
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 517
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v3           #pmsClass:Ljava/lang/Class;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 518
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 519
    .local v2, packageSetting:Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 521
    :try_start_1
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 522
    const-string v5, "com.android.server.pm.PackageSettingBase"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 523
    .restart local v3       #pmsClass:Ljava/lang/Class;
    const-string/jumbo v5, "stopped"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    .line 524
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 526
    .end local v3           #pmsClass:Ljava/lang/Class;
    :cond_2
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    move-result v4

    .line 541
    .end local v2           #packageSetting:Ljava/lang/Object;
    :cond_3
    :goto_1
    return v4

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Class: com.android.server.pm.Settings, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Field: mPackages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: mPackages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: mPackages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 513
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BMS.isPackageStopped(), RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v2       #packageSetting:Ljava/lang/Object;
    :catch_5
    move-exception v0

    .line 528
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Class: com.android.server.pm.PackageSettingBase, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 529
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Field: stopped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 531
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_7
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: stopped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 533
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: stopped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 535
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BMS.isPackageStopped(), RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isTrustedApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 949
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 966
    :cond_1
    :goto_0
    return v3

    .line 953
    :cond_2
    const/4 v2, 0x0

    .line 954
    .local v2, retVal:Z
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_1

    .line 956
    :try_start_0
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 957
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    .line 958
    const/4 v2, 0x1

    goto :goto_0

    .line 961
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 962
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public packageInBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/baidu/security/bm/AutoLaunchController;->packageInBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeLockedApp(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .local v0, app:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 436
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public removeLockedApps([Ljava/lang/String;)V
    .locals 8
    .parameter "packageNameArray"

    .prologue
    .line 443
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 448
    .local v0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 449
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 452
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateBlackList([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 8
    .parameter "newPart"

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v5, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 336
    .local v0, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    .end local v0           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_1
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 339
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateBlackListItem(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 4
    .parameter "appInfo"

    .prologue
    const/4 v3, 0x1

    .line 316
    if-nez p1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v1, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v3, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method