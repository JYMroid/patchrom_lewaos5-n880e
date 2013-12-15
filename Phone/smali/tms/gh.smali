.class public final Ltms/gh;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static final a:Ljava/lang/String; = "SoftwareManagerImpl"


# instance fields
.field private b:Landroid/content/pm/PackageManager;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences$Editor;

.field private e:Landroid/content/SharedPreferences;

.field private f:Ltms/gg;

.field private g:Ljava/security/cert/CertificateFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    iput-object v0, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Ltms/gh;->c:Landroid/content/Context;

    iput-object v0, p0, Ltms/gh;->g:Ljava/security/cert/CertificateFactory;

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    const/16 v0, 0x40

    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    return v0
.end method

.method private a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;
    .locals 3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/gh;->g:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ltms/gh;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ltms/ab;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "signatureCermMD5"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "pkgName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "appName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "isSystem"

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_3

    const-string v0, "pkgName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isSystem"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4

    const-string v0, "icon"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_5

    const-string v0, "version"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionCode"

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lastModified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Ltms/gh;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;)V

    :cond_6
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_7

    const-string v0, "permissions"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    const-string v0, "apkPath"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isApk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto :goto_2
.end method

.method private a(Landroid/content/pm/PackageInfo;Ljava/lang/String;Lcom/tencent/tmsecure/module/software/AppEntity;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_8

    iget-object v0, p0, Ltms/gh;->c:Landroid/content/Context;

    invoke-static {v0, p2, v5}, Ltms/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    const-string v1, "pkgName"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isSystem"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "appName"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_2

    const-string v1, "pkgName"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isSystem"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_3

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_a

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "icon"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_4

    const-string v0, "version"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionCode"

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lastModified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    and-int/lit8 v0, p4, 0x40

    if-eqz v0, :cond_5

    const-string v0, "apkPath"

    invoke-virtual {p3, v0, p2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isApk"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_6

    invoke-direct {p0, p2, p3}, Ltms/gh;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/software/AppEntity;)V

    :cond_6
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_7

    const-string v0, "permissions"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ltms/gh;->c:Landroid/content/Context;

    invoke-static {v0, p2, v4}, Ltms/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "appName"

    iget-object v2, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "icon"

    iget-object v1, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Lcom/tencent/tmsecure/module/software/AppEntity;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "android.content.pm.PackageParser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ltms/ae;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const-string v4, "parsePackage"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Ltms/ae;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "collectCertificates"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ltms/ae;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mSignatures"

    invoke-static {v2, v0}, Ltms/ae;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    check-cast v0, [Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v2, v8, :cond_2

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v0, v0, v7

    invoke-direct {p0, v0}, Ltms/gh;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ltms/ab;->c([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    const-string v0, "signatureCermMD5"

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private b(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 4
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

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, v1, p5}, Ltms/s;->a(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0, p4}, Ltms/gh;->c(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    invoke-direct {p0, v0}, Ltms/gh;->k(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method private d(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "SoftwareManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 5

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "appName"

    invoke-virtual {v1, v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "apkPath"

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isApk"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private l(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stat -t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    :try_start_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :try_start_0
    const-string v1, "[- :.]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMonth(I)V

    invoke-virtual {v0, v3}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {v0, v4}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {v0, v5}, Ljava/util/Date;->setMinutes(I)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltms/gh;->d(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq p2, v2, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge p2, v0, :cond_3

    if-nez p2, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 2

    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ltms/gh;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Ltms/gh;->d(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Ltms/gh;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public a(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Ltms/gh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    if-eq p2, v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    iget-object v1, p0, Ltms/gh;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Ltms/gh;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method public a(IIZ)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Ltms/gh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    invoke-static {v0, p3}, Ltms/gf;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-direct {p0, v0, v3, p1}, Ltms/gh;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_0

    invoke-static {v0}, Ltms/gf;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-direct {p0, v0, v3, p1}, Ltms/gh;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public a(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 6
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

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ltms/gh;->b(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 1
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

    invoke-direct/range {p0 .. p5}, Ltms/gh;->b(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
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

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltms/gh;->i(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a([Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 3
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Ltms/gh;->a(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Ltms/gh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ltms/gh;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the apkfile dosn\'t exist."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz p3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltms/gh;->d(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltms/gh;->d(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Ltms/gf;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "apkPath"

    invoke-virtual {p1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p2}, Ltms/gh;->a(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, v0, p1, p2}, Ltms/gh;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;Lcom/tencent/tmsecure/module/software/AppEntity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Ltms/gh;->a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 8

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Starting"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "START"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/tencent/tmsecure/utils/Logcat;->filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x12

    const-string v6, "cmp="

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    const/16 v7, 0x2f

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ltms/gh;->m(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_7

    invoke-virtual {p0, v0}, Ltms/gh;->i(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    new-instance v1, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v1, v0, v5, v6, v7}, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V

    :goto_3
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget v5, v1, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;->mUseCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;->mUseCount:I

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Ltms/gh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;->getString(Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Ltms/gh;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/tmsecure/utils/Logcat;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    move-object v1, v2

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-ltz p3, :cond_0

    invoke-virtual {p2, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Ltms/s;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/k;

    move-result-object v0

    invoke-interface {v0, p1}, Ltms/k;->e(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pm install -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public c(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const-string v1, "apkPath"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Ltms/gh;->b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/k;

    move-result-object v0

    invoke-interface {v0, p1}, Ltms/k;->f(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Ltms/gh;->f:Ltms/gg;

    invoke-virtual {v2, p1}, Ltms/gg;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltms/gh;->f:Ltms/gg;

    invoke-virtual {v2, p1}, Ltms/gg;->b(Ljava/lang/String;)Z

    :cond_3
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pm uninstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "android.provider.Settings"

    const-string v2, "ACTION_APPLICATION_DETAILS_SETTINGS"

    invoke-static {v0, v2}, Ltms/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "package"

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Ltms/gh;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pkg"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Ltms/gh;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "SoftwareManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a visualble application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SoftwareManagerImpl"

    invoke-static {v2, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltms/gh;->d(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Ltms/gf;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Ltms/gf;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Ltms/gf;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/gh;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;->fromString(Ljava/lang/String;)Lcom/tencent/tmsecure/module/software/SoftwareUseageInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ltms/gh;->f:Ltms/gg;

    invoke-virtual {v0, p1}, Ltms/gg;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Ltms/gh;->c:Landroid/content/Context;

    iget-object v0, p0, Ltms/gh;->c:Landroid/content/Context;

    const-string v1, "SoftwareManagerImpl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltms/gh;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ltms/gh;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ltms/gh;->d:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ltms/gg;

    invoke-direct {v0}, Ltms/gg;-><init>()V

    iput-object v0, p0, Ltms/gh;->f:Ltms/gg;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Ltms/gh;->b:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Ltms/gh;->g:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SoftwareManagerImpl"

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
