.class final Ltms/dh;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "traffic_xml"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;

.field private e:Ltms/dt;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltms/dh;->b:Landroid/content/Context;

    iget-object v0, p0, Ltms/dh;->b:Landroid/content/Context;

    const-string v1, "traffic_xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltms/dh;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ltms/dh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ltms/dt;

    invoke-direct {v0}, Ltms/dt;-><init>()V

    iput-object v0, p0, Ltms/dh;->e:Ltms/dt;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    new-instance v1, Ltms/di;

    invoke-direct {v1, p0}, Ltms/di;-><init>(Ltms/dh;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0, p1}, Ltms/dh;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v1

    invoke-direct {p0, p1}, Ltms/dh;->f(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    if-nez v1, :cond_d

    const/4 v2, -0x1

    if-eq v3, v2, :cond_d

    new-instance v1, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    iput-object p1, v1, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    const/4 v0, 0x1

    move v2, v0

    move-object v8, v1

    :goto_0
    if-eqz v8, :cond_a

    if-nez p2, :cond_0

    iget-object v0, p0, Ltms/dh;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_connection_type"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Ltms/dh;->e:Ltms/dt;

    invoke-virtual {v0, v3}, Ltms/dt;->b(I)J

    move-result-wide v4

    iget-object v0, p0, Ltms/dh;->e:Ltms/dt;

    invoke-virtual {v0, v3}, Ltms/dt;->a(I)J

    move-result-wide v0

    if-eqz v2, :cond_1

    iput-wide v0, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v4, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    :cond_2
    const-wide/16 v4, 0x0

    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    :cond_4
    const-wide/16 v0, 0x0

    :cond_5
    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    sub-long v6, v4, v2

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    sub-long v2, v0, v2

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-gez v9, :cond_6

    move-wide v6, v4

    :cond_6
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-gez v9, :cond_7

    move-wide v2, v4

    :cond_7
    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-eqz v9, :cond_8

    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-nez v9, :cond_b

    :cond_8
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    :cond_9
    :goto_1
    iput-wide v4, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iput-wide v0, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iget-object v0, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    return-void

    :cond_b
    const-string v9, "mobile"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-wide v9, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    add-long/2addr v2, v9

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    add-long/2addr v2, v6

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    goto :goto_1

    :cond_c
    const-string v9, "wifi"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-wide v9, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    add-long/2addr v2, v9

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    iget-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    add-long/2addr v2, v6

    iput-wide v2, v8, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    goto :goto_1

    :cond_d
    move v2, v0

    move-object v8, v1

    goto/16 :goto_0
.end method

.method private f(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/dh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ltms/dh;->f(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Ltms/dh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->fromString(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a([Ljava/lang/String;)V
    .locals 9

    const-wide/16 v7, 0x0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Ltms/dh;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2}, Ltms/dh;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Ltms/dh;->e:Ltms/dt;

    invoke-virtual {v5, v3}, Ltms/dt;->b(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iget-object v5, p0, Ltms/dh;->e:Ltms/dt;

    invoke-virtual {v5, v3}, Ltms/dt;->a(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    iget-object v3, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    const-string v4, "EMPTY"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 4

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    :goto_0
    iget-object v1, p0, Ltms/dh;->c:Landroid/content/SharedPreferences;

    const-string v2, "last_connection_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-direct {p0, v3, v1}, Ltms/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "mobile"

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_connection_type"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Ltms/dh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Ltms/dh;->e:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/dh;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/dh;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/dh;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/dh;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
