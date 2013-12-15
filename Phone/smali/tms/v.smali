.class public final Ltms/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/v$1;,
        Ltms/v$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GET"

.field public static final b:Ljava/lang/String; = "POST"

.field private static final c:Ljava/lang/String; = "*/*"

.field private static final d:Ljava/lang/String; = "application/octet-stream"

.field private static final e:I = 0x7530

.field private static final f:I = 0x7530

.field private static final g:B = 0x2t

.field private static final h:B = 0x1t

.field private static volatile t:Z

.field private static volatile u:Ljava/lang/String;

.field private static volatile v:Z

.field private static volatile w:Z

.field private static volatile x:J


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/net/HttpURLConnection;

.field private l:[B

.field private m:I

.field private n:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:B

.field private r:B

.field private s:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Ltms/v;->t:Z

    const/4 v0, 0x0

    sput-object v0, Ltms/v;->u:Ljava/lang/String;

    sput-boolean v1, Ltms/v;->v:Z

    sput-boolean v1, Ltms/v;->w:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Ltms/v;->x:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Ltms/v;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ltms/v;->m:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ltms/v;->n:Ljava/util/Hashtable;

    iput-boolean v1, p0, Ltms/v;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/v;->p:Z

    iput-byte v1, p0, Ltms/v;->q:B

    iput-byte v1, p0, Ltms/v;->r:B

    iput-byte v1, p0, Ltms/v;->s:B

    iput-object p1, p0, Ltms/v;->i:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ltms/v;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const-class v1, Ltms/v;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->canNetworkOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException;

    invoke-direct {v0}, Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/16 v0, -0x3e8

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    const-string v3, "url is null!"

    invoke-direct {v2, v0, v3}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ltms/v;

    invoke-direct {v0, p0}, Ltms/v;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v2

    sget-object v3, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-ne v3, v2, :cond_3

    const/16 v0, -0x41c

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    const-string v3, "no connecition!"

    invoke-direct {v2, v0, v3}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_3
    iget-object v3, v0, Ltms/v;->i:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ltms/v;->a(Ljava/lang/String;LQQPIM/ConnectType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Ltms/v;)Ltms/v;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const-class v1, Ltms/v;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v0

    new-instance v2, Ltms/v;

    invoke-virtual {p0}, Ltms/v;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltms/v;-><init>(Ljava/lang/String;)V

    sget-object v3, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-ne v3, v0, :cond_0

    const/16 v0, -0x41c

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    const-string v3, "no connection!"

    invoke-direct {v2, v0, v3}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v3, v2, Ltms/v;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ltms/v;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    invoke-virtual {p0}, Ltms/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltms/v;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltms/v;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ltms/v;->a([B)V

    invoke-direct {p0}, Ltms/v;->r()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltms/v;->a(Ljava/util/Hashtable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2
.end method

.method private a(Ljava/lang/String;LQQPIM/ConnectType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ltms/v;->m()Ljava/lang/String;

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-eq v0, p2, :cond_0

    sget-object v0, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    if-ne v0, p2, :cond_1

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getProxyPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/v;->o:Z

    :goto_0
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v0, p2, :cond_4

    const-string v0, "com.tencent.qqpimsecure"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltms/v;->u:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Ltms/v;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ltms/v;->x:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    sget-boolean v1, Ltms/v;->v:Z

    if-nez v1, :cond_5

    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Ltms/v;->t:Z

    const/4 v1, 0x1

    sput-boolean v1, Ltms/v;->v:Z

    sput-object v0, Ltms/v;->u:Ljava/lang/String;

    new-instance v0, Ltms/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltms/v$a;-><init>(Ltms/v;Ltms/v$1;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/WifiUtil;->needWifiApprove(Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;)V

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ltms/v;->x:J

    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/v;->o:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x421

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_5
    :try_start_1
    sget-boolean v0, Ltms/v;->t:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Ltms/v;->v:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Ltms/v;->v:Z

    new-instance v0, Ltms/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltms/v$a;-><init>(Ltms/v;Ltms/v$1;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/WifiUtil;->needWifiApprove(Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v1, -0x422

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    const/16 v1, -0x423

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedOperationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3
    move-exception v0

    const/16 v1, -0x420

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Ltms/v;->t:Z

    return p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/16 v5, -0x38

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Bytes from inputStream when read buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Bytes from inputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Ltms/v;->w:Z

    return p0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Ltms/v;->v:Z

    return p0
.end method

.method private d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_0

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_1
    aput-object p1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Ltms/v;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    sget-boolean v0, Ltms/v;->v:Z

    return v0
.end method

.method private p()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    invoke-virtual {p0}, Ltms/v;->f()V

    iget-object v0, p0, Ltms/v;->i:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltms/v;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    iget-object v0, p0, Ltms/v;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltms/v;->b(Ljava/lang/String;)V

    const-string v0, "POST"

    iget-object v1, p0, Ltms/v;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/v;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/v;->l:[B

    invoke-virtual {p0, v0}, Ltms/v;->a([B)V

    :cond_0
    iget-object v0, p0, Ltms/v;->n:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ltms/v;->b(Ljava/util/Hashtable;)V

    invoke-virtual {p0}, Ltms/v;->c()I

    move-result v0

    return v0
.end method

.method private q()Z
    .locals 2

    iget v0, p0, Ltms/v;->m:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Ltms/v;->m:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/v;->n:Ljava/util/Hashtable;

    return-object v0
.end method

.method private s()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    sget-object v0, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_2
    :goto_1
    sget-boolean v2, Ltms/v;->v:Z

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    :cond_3
    const-string v1, "wifi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWifi:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ltms/v;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " currentSSID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " needwifiApprove:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Ltms/v;->t:Z

    if-eqz v0, :cond_5

    const-string v0, "true"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isApproving?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Ltms/v;->v:Z

    if-eqz v0, :cond_6

    const-string v0, "true"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Ltms/v;->t:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Ltms/v;->v:Z

    if-nez v0, :cond_7

    sget-boolean v0, Ltms/v;->w:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v1, -0x427

    const-string v2, "wifi need approve!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    const-string v0, "false"

    goto :goto_2

    :cond_6
    const-string v0, "false"

    goto :goto_3

    :cond_7
    sget-boolean v0, Ltms/v;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Ltms/v;->t:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/16 v0, -0xfa0

    iget-object v1, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ltms/v;->q()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-direct {p0, v0}, Ltms/v;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, -0xfa2

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get response exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/v;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltms/v;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ltms/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Ltms/v;->l:[B

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ltms/v;->j:Ljava/lang/String;

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GET"

    iput-object v0, p0, Ltms/v;->j:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "POST"

    iput-object v0, p0, Ltms/v;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Ltms/v;->l:[B

    return-object v0
.end method

.method public c()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/16 v9, 0xc8

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    const-string v0, "com.tencent.qqpimsecure"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltms/v;->s()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v0, "GET"

    iget-object v1, p0, Ltms/v;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, -0xbb8

    :try_start_1
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Ltms/v;->m:I

    iget v0, p0, Ltms/v;->m:I

    const/16 v3, 0x12d

    if-lt v0, v3, :cond_4

    iget v0, p0, Ltms/v;->m:I

    const/16 v3, 0x131

    if-gt v0, v3, :cond_4

    iget-byte v0, p0, Ltms/v;->q:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->q:B

    if-ge v0, v6, :cond_13

    invoke-virtual {p0}, Ltms/v;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/v;->i:Ljava/lang/String;

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    :goto_1
    return v0

    :cond_3
    const/16 v1, -0x7d0

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v3, "Accept-Charset"

    const-string v4, "utf-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Ltms/v;->l:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltms/v;->l:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, p0, Ltms/v;->l:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    iget-byte v3, p0, Ltms/v;->s:B

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Ltms/v;->s:B

    if-ge v3, v6, :cond_5

    invoke-virtual {p0}, Ltms/v;->m()Ljava/lang/String;

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto :goto_1

    :cond_4
    :try_start_2
    iget v0, p0, Ltms/v;->m:I

    if-ne v0, v9, :cond_13

    invoke-virtual {p0}, Ltms/v;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Ltms/v;->o:Z

    if-eqz v3, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.wap.wml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_13

    iget-byte v0, p0, Ltms/v;->r:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->r:B

    if-ge v0, v7, :cond_13

    invoke-direct {p0}, Ltms/v;->p()I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result v0

    goto/16 :goto_1

    :cond_5
    iget-boolean v3, p0, Ltms/v;->p:Z

    if-eqz v3, :cond_a

    iput-boolean v2, p0, Ltms/v;->p:Z

    invoke-virtual {p0}, Ltms/v;->f()V

    iget-boolean v2, p0, Ltms/v;->o:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltms/v;->i:Ljava/lang/String;

    sget-object v3, LQQPIM/ConnectType;->CT_GPRS_NET:LQQPIM/ConnectType;

    invoke-direct {p0, v2, v3}, Ltms/v;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    :cond_6
    :goto_3
    iget-object v2, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_a

    iget-object v0, p0, Ltms/v;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltms/v;->b(Ljava/lang/String;)V

    const-string v0, "POST"

    iget-object v1, p0, Ltms/v;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltms/v;->l:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltms/v;->l:[B

    invoke-virtual {p0, v0}, Ltms/v;->a([B)V

    :cond_7
    iget-object v0, p0, Ltms/v;->n:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ltms/v;->b(Ljava/util/Hashtable;)V

    invoke-virtual {p0}, Ltms/v;->c()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v3

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getProxyPort()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Ltms/v;->i:Ljava/lang/String;

    sget-object v3, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    invoke-direct {p0, v2, v3}, Ltms/v;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, -0x3e

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest UnknownHostException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " networktype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_a
    add-int/lit8 v1, v1, -0x3e

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest UnknownHostException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " networktype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    move v1, v2

    :goto_4
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_b

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, v1, -0x3c

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest IllegalAccessError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    move v1, v2

    :goto_5
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_c

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v1, v1, -0x3d

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3
    move-exception v0

    move v1, v2

    :goto_6
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_d

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v1, v1, -0x33

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest ProtocolException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_4
    move-exception v0

    move v1, v2

    :goto_7
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_e

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v1, v1, -0x33

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest ClientProtocolException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_5
    move-exception v0

    move v1, v2

    :goto_8
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_f

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v1, v1, -0x36

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest SocketException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_6
    move-exception v0

    move v1, v2

    :goto_9
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_10

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v1, v1, -0x37

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_7
    move-exception v0

    move v1, v2

    :goto_a
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_11

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v1, v1, -0x38

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest NetWorkException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_8
    move-exception v0

    move v1, v2

    :goto_b
    iget-byte v2, p0, Ltms/v;->s:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Ltms/v;->s:B

    if-ge v2, v6, :cond_12

    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_12
    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_13
    iget v0, p0, Ltms/v;->m:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_16

    iget v0, p0, Ltms/v;->m:I

    if-eq v0, v9, :cond_16

    iget-byte v0, p0, Ltms/v;->s:B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Ltms/v;->s:B

    if-ge v0, v6, :cond_15

    if-ne v1, v8, :cond_14

    const-string v0, "true"

    const-string v1, "http.keepAlive"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_14
    invoke-direct {p0}, Ltms/v;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_15
    iget v0, p0, Ltms/v;->m:I

    add-int/2addr v0, v1

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code is unnormal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltms/v;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SDK Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_16
    iget v0, p0, Ltms/v;->m:I

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_b

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    goto/16 :goto_5

    :catch_10
    move-exception v0

    goto/16 :goto_4

    :catch_11
    move-exception v0

    move v1, v2

    goto/16 :goto_2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get header field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public d()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get inputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ltms/v;->m:I

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public g()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Ltms/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get breakpoint total size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public h()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const-string v2, "content-length"

    invoke-virtual {p0, v2}, Ltms/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public j()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get redirect url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Ltms/v;->o:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Ltms/v;->k:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    iget-object v0, p0, Ltms/v;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltms/v;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Ltms/v;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltms/v;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method
