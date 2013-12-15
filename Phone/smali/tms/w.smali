.class public Ltms/w;
.super Ltms/u;


# instance fields
.field private l:Landroid/content/Context;

.field private m:Lorg/apache/http/client/methods/HttpGet;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:J

.field private v:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltms/u;-><init>()V

    iput-object v0, p0, Ltms/w;->m:Lorg/apache/http/client/methods/HttpGet;

    iput-object v0, p0, Ltms/w;->n:Ljava/lang/String;

    iput-object v0, p0, Ltms/w;->o:Ljava/lang/String;

    iput-object v0, p0, Ltms/w;->p:Ljava/lang/String;

    iput-object v0, p0, Ltms/w;->q:Ljava/lang/String;

    iput v1, p0, Ltms/w;->r:I

    iput-boolean v1, p0, Ltms/w;->s:Z

    iput-boolean v1, p0, Ltms/w;->t:Z

    iput-wide v2, p0, Ltms/w;->u:J

    iput-wide v2, p0, Ltms/w;->v:J

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->canNetworkOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException;

    invoke-direct {v0}, Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ltms/w;->l:Landroid/content/Context;

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ltms/w;->s:Z

    iget-boolean v0, p0, Ltms/w;->s:Z

    if-eqz v0, :cond_3

    const-string v0, "/sdcard/qqsecure"

    iput-object v0, p0, Ltms/w;->n:Ljava/lang/String;

    const-string v0, "/sdcard/qqsecure"

    iput-object v0, p0, Ltms/w;->o:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Ltms/w;->m:Lorg/apache/http/client/methods/HttpGet;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v0

    sget-object v1, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltms/w;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltms/w;->a(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/w;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v1, -0x1b58

    const/16 v0, 0x400

    new-array v5, v0, [B

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    iget-wide v8, p0, Ltms/w;->v:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Ltms/w;->u:J

    const-string v0, "key_total"

    iget-wide v6, p0, Ltms/w;->u:J

    invoke-virtual {p2, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "key_completed"

    iget-wide v6, p0, Ltms/w;->v:J

    invoke-virtual {p2, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Ltms/w;->p:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    if-eqz p3, :cond_4

    :try_start_1
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16

    :goto_1
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    iget-boolean v6, p0, Ltms/w;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17

    if-eqz v6, :cond_5

    const/16 v1, -0x138b

    if-eqz v0, :cond_0

    const-string v2, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    const-string v0, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    move v0, v1

    :cond_2
    :goto_4
    return v0

    :cond_3
    :try_start_5
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v2

    :goto_5
    const/16 v4, -0x1b59

    :try_start_6
    const-string v5, "HttpBase"

    const-string v6, "file not found"

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_d

    const-string v0, "HttpBase"

    const-string v5, "is closing file"

    invoke-static {v0, v5}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    move v0, v4

    :goto_6
    if-eqz v3, :cond_2

    const-string v2, "HttpBase"

    const-string v4, "fos closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_4

    :cond_4
    :try_start_9
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_16

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_a
    iget-wide v6, p0, Ltms/w;->v:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Ltms/w;->v:J

    const-string v6, "key_completed"

    iget-wide v7, p0, Ltms/w;->v:J

    invoke-virtual {p2, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v6, 0x2

    invoke-virtual {p0, v6, p2}, Ltms/w;->a(ILandroid/os/Bundle;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_1

    :catch_4
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17

    if-eqz v0, :cond_e

    const-string v2, "HttpBase"

    const-string v5, "is closing file"

    invoke-static {v2, v5}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move v0, v4

    :goto_7
    if-eqz v3, :cond_2

    const-string v2, "HttpBase"

    const-string v4, "fos closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_7

    :catch_7
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_6

    :catch_8
    move-exception v0

    move-object v3, v2

    :goto_8
    const/16 v4, -0x13be

    :try_start_d
    const-string v5, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_c

    const-string v0, "HttpBase"

    const-string v5, "is closing file"

    invoke-static {v0, v5}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    move v0, v4

    :goto_9
    if-eqz v3, :cond_2

    const-string v2, "HttpBase"

    const-string v4, "fos closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_4

    :catch_9
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_4

    :catch_a
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v3, v2

    :goto_a
    const/16 v4, -0x13bf

    :try_start_10
    const-string v5, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket timeout error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v2, :cond_b

    const-string v0, "HttpBase"

    const-string v5, "is closing file"

    invoke-static {v0, v5}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    move v0, v4

    :goto_b
    if-eqz v3, :cond_2

    const-string v2, "HttpBase"

    const-string v4, "fos closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_4

    :catch_c
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_4

    :catch_d
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v3, v2

    :goto_c
    const/16 v4, -0x13c0

    :try_start_13
    const-string v5, "HttpBase"

    const-string v6, "socket or file io error"

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v2, :cond_a

    const-string v0, "HttpBase"

    const-string v5, "is closing file"

    invoke-static {v0, v5}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    move v0, v4

    :goto_d
    if-eqz v3, :cond_2

    const-string v2, "HttpBase"

    const-string v4, "fos closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    goto/16 :goto_4

    :catch_f
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_4

    :catch_10
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_d

    :catch_11
    move-exception v0

    move-object v3, v2

    :goto_e
    const/16 v4, -0x1388

    :try_start_16
    const-string v5, "HttpBase"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "HttpBase"

    const-string v6, "receive data error"

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v2, :cond_9

    const-string v0, "HttpBase"

    const-string v5, "is closing file"

    invoke-static {v0, v5}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13

    move v0, v4

    :goto_f
    if-eqz v3, :cond_2

    const-string v2, "HttpBase"

    const-string v4, "fos closing file"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    goto/16 :goto_4

    :catch_12
    move-exception v0

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_4

    :catch_13
    move-exception v0

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_10
    if-eqz v2, :cond_7

    const-string v1, "HttpBase"

    const-string v4, "is closing file"

    invoke-static {v1, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14

    :cond_7
    :goto_11
    if-eqz v3, :cond_8

    const-string v1, "HttpBase"

    const-string v2, "fos closing file"

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_15

    :cond_8
    :goto_12
    throw v0

    :catch_14
    move-exception v1

    const-string v2, "HttpBase"

    const-string v4, "is close file error"

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catch_15
    move-exception v1

    const-string v2, "HttpBase"

    const-string v3, "fos close file error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_10

    :catch_16
    move-exception v0

    goto/16 :goto_e

    :catch_17
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_e

    :catch_18
    move-exception v0

    goto/16 :goto_c

    :catch_19
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_c

    :catch_1a
    move-exception v0

    goto/16 :goto_a

    :catch_1b
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_a

    :catch_1c
    move-exception v0

    goto/16 :goto_8

    :catch_1d
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_8

    :catch_1e
    move-exception v0

    goto/16 :goto_5

    :cond_9
    move v0, v4

    goto/16 :goto_f

    :cond_a
    move v0, v4

    goto/16 :goto_d

    :cond_b
    move v0, v4

    goto/16 :goto_b

    :cond_c
    move v0, v4

    goto/16 :goto_9

    :cond_d
    move v0, v4

    goto/16 :goto_6

    :cond_e
    move v0, v4

    goto/16 :goto_7
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    const/16 v2, -0x3e8

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Ltms/w;->m:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    const/4 v0, 0x0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "HttpBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/16 v0, -0x41d

    goto :goto_0
.end method

.method private e()I
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v6, -0x1b59

    const/4 v3, 0x0

    const/16 v0, -0x1b58

    const-string v2, "HttpGetFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltms/w;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "HttpGetFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltms/w;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltms/w;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltms/w;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Ltms/w;->s:Z

    if-nez v4, :cond_1

    iget v4, p0, Ltms/w;->r:I

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Ltms/w;->l:Landroid/content/Context;

    iget-object v5, p0, Ltms/w;->q:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v5

    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    :goto_2
    :try_start_4
    const-string v5, "HttpBase"

    const-string v7, "file not found"

    invoke-static {v5, v7}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_f

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move v1, v6

    :goto_3
    if-eqz v4, :cond_e

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move v0, v1

    :goto_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    return v0

    :cond_1
    :try_start_7
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ltms/w;->o:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Ltms/w;->q:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v3

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Ltms/w;->o:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v5, v3

    :goto_6
    const/16 v4, -0x1b90

    :try_start_8
    const-string v6, "HttpBase"

    const-string v7, "file io error"

    invoke-static {v6, v7}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_d

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    move v1, v4

    :goto_7
    if-eqz v5, :cond_c

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    move v0, v1

    :goto_8
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_3
    move-object v4, v3

    move-object v5, v3

    move v1, v6

    :cond_4
    if-eqz v4, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    :cond_5
    :goto_9
    if-eqz v5, :cond_b

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    move v0, v1

    :goto_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v5, v3

    :goto_b
    :try_start_d
    const-string v4, "HttpBase"

    const-string v6, "file op error"

    invoke-static {v4, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v3, :cond_6

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_6
    :goto_c
    if-eqz v5, :cond_7

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_7
    :goto_d
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    :goto_e
    if-eqz v3, :cond_8

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :cond_8
    :goto_f
    if-eqz v5, :cond_9

    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    :cond_9
    :goto_10
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    :catch_4
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_5
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_6
    move-exception v1

    const-string v3, "HttpBase"

    const-string v5, "fis close file error"

    invoke-static {v3, v5}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    goto/16 :goto_3

    :catch_7
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_8
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    goto/16 :goto_7

    :catch_9
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_a
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    :catch_b
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    :catch_c
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fis close file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    goto/16 :goto_9

    :catch_d
    move-exception v1

    const-string v3, "HttpBase"

    const-string v4, "fosclose file error"

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v5, v3

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object v5, v4

    goto/16 :goto_e

    :catch_e
    move-exception v1

    move-object v5, v3

    goto/16 :goto_b

    :catch_f
    move-exception v1

    goto/16 :goto_b

    :catch_10
    move-exception v1

    move-object v3, v4

    goto/16 :goto_b

    :catch_11
    move-exception v1

    move-object v2, v3

    move-object v5, v3

    goto/16 :goto_6

    :catch_12
    move-exception v1

    goto/16 :goto_6

    :catch_13
    move-exception v1

    move-object v3, v4

    goto/16 :goto_6

    :catch_14
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_2

    :catch_15
    move-exception v1

    move-object v4, v5

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_a

    :cond_c
    move v0, v1

    goto/16 :goto_8

    :cond_d
    move v1, v4

    goto/16 :goto_7

    :cond_e
    move v0, v1

    goto/16 :goto_4

    :cond_f
    move v1, v6

    goto/16 :goto_3
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Ltms/w;->r:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/w;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 12

    const/16 v4, -0xbb8

    const/16 v11, -0xbbb

    const/4 v1, 0x0

    const/4 v10, 0x1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ltms/w;->a()Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    :try_start_1
    invoke-direct {p0, p1}, Ltms/w;->c(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    if-eqz v1, :cond_1

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Ltms/w;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_6

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_4
    if-eqz v1, :cond_5

    :cond_5
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    :try_start_3
    iget-object v0, p0, Ltms/w;->m:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltms/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltms/w;->p:Ljava/lang/String;

    iget-object v6, p0, Ltms/w;->q:Ljava/lang/String;

    if-nez v6, :cond_7

    iput-object v0, p0, Ltms/w;->q:Ljava/lang/String;

    :cond_7
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ltms/w;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltms/w;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Ltms/w;->v:J

    iget-object v0, p0, Ltms/w;->m:Lorg/apache/http/client/methods/HttpGet;

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Ltms/w;->v:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Ltms/w;->m:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string v6, "HttpBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusCode == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/16 v6, 0xc8

    if-eq v0, v6, :cond_e

    const/16 v6, 0xce

    if-eq v0, v6, :cond_e

    rsub-int v0, v0, -0xbb8

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_9
    if-eqz v1, :cond_a

    :cond_a
    if-eqz v0, :cond_2

    const-string v1, "key_errcode"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    const/16 v3, -0xbed

    :try_start_4
    const-string v0, "HttpBase"

    const-string v6, "url == null"

    invoke-static {v0, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_c
    if-eqz v1, :cond_d

    :cond_d
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    :try_start_5
    iget-boolean v0, p0, Ltms/w;->t:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_11

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_f
    if-eqz v1, :cond_10

    :cond_10
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_11
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v0, v5, p2}, Ltms/w;->a(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v2, :cond_12

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_12
    if-eqz v1, :cond_13

    :cond_13
    if-eqz v3, :cond_2

    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_14
    const/16 v3, -0xfa0

    :try_start_7
    const-string v0, "HttpBase"

    const-string v6, "httpEntity == null"

    invoke-static {v0, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_15
    if-eqz v1, :cond_16

    :cond_16
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_17
    :try_start_8
    invoke-direct {p0}, Ltms/w;->e()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v2, :cond_18

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_18
    if-eqz v1, :cond_19

    :cond_19
    if-eqz v0, :cond_2

    const-string v1, "key_errcode"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1a
    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1b
    if-eqz v1, :cond_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    const/16 v3, -0xbeb

    :try_start_9
    const-string v4, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protocol error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1c
    if-eqz v1, :cond_1d

    :cond_1d
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    const/16 v3, -0xbee

    :try_start_a
    const-string v4, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1e
    if-eqz v1, :cond_1f

    :cond_1f
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_3
    const/16 v3, -0xbef

    :try_start_b
    const-string v4, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket timeout error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_20

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_20
    if-eqz v1, :cond_21

    :cond_21
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_4
    const/16 v3, -0xbf0

    :try_start_c
    const-string v4, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "io error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v2, :cond_22

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_22
    if-eqz v1, :cond_23

    :cond_23
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_d
    const-string v3, "HttpBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_24

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_24
    if-eqz v1, :cond_25

    :cond_25
    const-string v0, "key_errcode"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move v3, v4

    :goto_6
    if-eqz v2, :cond_26

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_26
    if-eqz v1, :cond_27

    :cond_27
    if-eqz v3, :cond_28

    const-string v1, "key_errcode"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v10, v5}, Ltms/w;->a(ILandroid/os/Bundle;)V

    :cond_28
    throw v0

    :catchall_1
    move-exception v0

    move v3, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/w;->q:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltms/w;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltms/w;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltms/w;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltms/w;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
