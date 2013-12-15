.class final Ltms/dw;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# static fields
.field private static final a:[S


# instance fields
.field private b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Ltms/v;

.field private f:Ltms/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltms/dv",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:Z

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ltms/dw;->a:[S

    return-void

    nop

    :array_0
    .array-data 0x2
        0x8t 0x0t
        0x40t 0x0t
        0x80t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const v0, 0x4b000

    iput v0, p0, Ltms/dw;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/dw;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;

    new-array v0, v1, [B

    iput-object v0, p0, Ltms/dw;->h:[B

    iput-byte v1, p0, Ltms/dw;->j:B

    iput-object p1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iput-object p3, p0, Ltms/dw;->g:Ljava/lang/String;

    iput-boolean p2, p0, Ltms/dw;->i:Z

    return-void
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Ltms/dw;->a:[S

    const/4 v5, 0x1

    aget-short v1, v1, v5

    shl-int/lit8 v1, v1, 0xa

    new-array v6, v1, [B

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->e:Ltms/v;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v7, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ltms/v;->a(Ljava/lang/String;)Ltms/v;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ltms/dw;->e:Ltms/v;

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->c()I

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->e()I

    move-result v1

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_4

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->e()I

    move-result v5

    add-int/lit16 v5, v5, -0xbb8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download response code is not 200 error, but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v7}, Ltms/v;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v1

    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_2
    throw v1

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->d()Ljava/io/InputStream;

    move-result-object v1

    array-length v7, v6

    invoke-direct {v5, v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v11, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v7, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v1, v7, :cond_9

    const/4 v1, 0x1

    :goto_4
    move/from16 v17, v4

    move-object v4, v6

    move/from16 v6, v17

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v7, v0, Ltms/dw;->d:Z

    if-eqz v7, :cond_6

    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v8, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iput-wide v6, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_7
    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    add-long v1, v4, v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    int-to-long v15, v7

    add-long/2addr v13, v15

    iput-wide v13, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    add-int/2addr v6, v7

    if-eqz v1, :cond_b

    int-to-long v7, v7

    add-long/2addr v2, v7

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v7, v7, v13

    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v4, 0x3f80

    iput v4, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v4, v5

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v13, 0x0

    cmp-long v7, v7, v13

    if-lez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    long-to-float v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    long-to-float v13, v13

    div-float/2addr v8, v13

    iput v8, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->f:Ltms/dv;

    move-object/from16 v0, p0

    iget-object v8, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v7, v8}, Ltms/dv;->b(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_d
    move-object/from16 v0, p0

    iget v7, v0, Ltms/dw;->c:I

    if-le v6, v7, :cond_5

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-gtz v13, :cond_e

    const-wide/16 v6, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    sub-long/2addr v13, v11

    div-long v6, v13, v6

    long-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    if-nez v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iput v6, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    :goto_8
    const/16 v7, 0x21

    if-ge v6, v7, :cond_12

    array-length v6, v4

    sget-object v7, Ltms/dw;->a:[S

    const/4 v13, 0x0

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_f

    sget-object v4, Ltms/dw;->a:[S

    const/4 v6, 0x0

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    :cond_f
    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_10

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    const-wide/16 v2, 0x0

    :cond_10
    move v6, v8

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v14, v14, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    add-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_2
    move-exception v1

    :goto_a
    :try_start_7
    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x3b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unbreakable download unsupported encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_2

    :cond_12
    const/16 v7, 0x41

    if-ge v6, v7, :cond_13

    :try_start_8
    array-length v6, v4

    sget-object v7, Ltms/dw;->a:[S

    const/4 v13, 0x1

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_f

    sget-object v4, Ltms/dw;->a:[S

    const/4 v6, 0x1

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    goto :goto_9

    :cond_13
    array-length v6, v4

    sget-object v7, Ltms/dw;->a:[S

    const/4 v13, 0x2

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_f

    sget-object v4, Ltms/dw;->a:[S

    const/4 v6, 0x2

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_3
    move-exception v1

    move-object v5, v4

    :goto_b
    :try_start_9
    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x1b90

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unbreakable download IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_4
    move-exception v1

    move-object v5, v4

    :goto_c
    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/4 v6, -0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unbreakable download Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :catchall_2
    move-exception v1

    move-object v5, v4

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    move-object v5, v4

    goto/16 :goto_a
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/16 v3, 0xce

    :try_start_0
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ltms/v;->a(Ljava/lang/String;)Ltms/v;

    move-result-object v0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltms/dw;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    const-string v2, "Range"

    invoke-virtual {v1, v2, v0}, Ltms/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->c()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Ltms/v;->a(Ljava/lang/String;)Ltms/v;

    move-result-object v0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->c()I

    :cond_0
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->e()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J
    :try_end_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init download task exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errormsg:"

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

.method private b(Ljava/io/FileOutputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    sget-object v1, Ltms/dw;->a:[S

    const/4 v5, 0x1

    aget-short v1, v1, v5

    shl-int/lit8 v1, v1, 0xa

    new-array v5, v1, [B

    const/4 v1, 0x1

    move-object v7, v5

    move v5, v6

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Ltms/dw;->d:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v6, v6, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v8, 0x3f80

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v10, v6, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Ltms/dw;->c:I

    int-to-long v14, v6

    mul-long/2addr v12, v14

    int-to-long v5, v5

    mul-long/2addr v5, v12

    add-long/2addr v5, v10

    const-wide/16 v12, 0x1

    sub-long/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v9, v5, v12

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const-wide/16 v12, 0x1

    sub-long/2addr v5, v12

    :cond_0
    cmp-long v9, v10, v5

    if-ltz v9, :cond_5

    :cond_1
    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-byte v1, v0, Ltms/dw;->j:B

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10

    :cond_3
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    :goto_3
    add-long v1, v4, v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v12, 0x2d

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    :goto_4
    invoke-static {v5}, Ltms/v;->a(Ljava/lang/String;)Ltms/v;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Ltms/dw;->e:Ltms/v;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    const-string v6, "Range"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ltms/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->c()I

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->e()I

    move-result v5

    const/16 v6, 0xce

    if-eq v5, v6, :cond_c

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->e()I

    move-result v5

    add-int/lit16 v5, v5, -0xbb8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "breakable download response code is not 206 error, but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v7}, Ltms/v;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :catch_0
    move-exception v1

    :goto_6
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    :goto_7
    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-byte v4, v0, Ltms/dw;->j:B

    if-lez v4, :cond_8

    if-eqz p1, :cond_8

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    :cond_8
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_9
    throw v1

    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    goto :goto_4

    :cond_b
    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->f()V

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-static {v5}, Ltms/v;->a(Ltms/v;)Ltms/v;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Ltms/dw;->e:Ltms/v;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    const-string v6, "Range"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ltms/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->c()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_5

    :catch_1
    move-exception v1

    :goto_a
    :try_start_8
    new-instance v5, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x3b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "breakable download UnsupportedEncodingException encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_c
    if-eqz v1, :cond_19

    const/4 v1, 0x0

    move v6, v1

    :goto_b
    :try_start_9
    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v5, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v1, v5, :cond_f

    const/4 v1, 0x1

    :goto_c
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v8}, Ltms/v;->d()Ljava/io/InputStream;

    move-result-object v8

    array-length v9, v7

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltms/dw;->d:Z

    if-eqz v4, :cond_1c

    invoke-virtual {v5, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v14, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v1, v12, v14

    if-lez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-lez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iput-wide v12, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v4, 0x3f80

    iput v4, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11

    move-wide v1, v2

    :goto_e
    if-eqz v5, :cond_1b

    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16

    :goto_f
    const/4 v4, 0x0

    :goto_10
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-gtz v3, :cond_d

    const-wide/16 v8, 0x1

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v3, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    sub-long v10, v12, v10

    div-long v8, v10, v8

    long-to-int v3, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iput v3, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    :goto_11
    const/16 v5, 0x21

    if-ge v3, v5, :cond_14

    const/4 v5, 0x1

    array-length v3, v7

    sget-object v8, Ltms/dw;->a:[S

    const/4 v9, 0x0

    aget-short v8, v8, v9

    shl-int/lit8 v8, v8, 0xa

    if-eq v3, v8, :cond_1a

    sget-object v3, Ltms/dw;->a:[S

    const/4 v7, 0x0

    aget-short v3, v3, v7

    shl-int/lit8 v3, v3, 0xa

    new-array v7, v3, [B

    move-object v3, v7

    :goto_12
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_e

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v7

    add-long/2addr v7, v1

    invoke-static {v7, v8}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13

    const-wide/16 v1, 0x0

    :cond_e
    move-object v7, v3

    move-wide/from16 v17, v1

    move-wide/from16 v2, v17

    move v1, v6

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_10
    const/4 v12, 0x0

    :try_start_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12, v4}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    :try_start_e
    move-object/from16 v0, p0

    iget-object v12, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v12, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    int-to-long v15, v4

    add-long/2addr v13, v15

    iput-wide v13, v12, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    if-eqz v1, :cond_11

    int-to-long v12, v4

    add-long/2addr v2, v12

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v14, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v4, v12, v14

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v4, 0x3f80

    iput v4, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    move-wide v1, v2

    goto/16 :goto_e

    :catch_2
    move-exception v1

    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x1b90

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "breakable download write file IOException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_3
    move-exception v1

    move-object v4, v5

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v12, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v12, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    long-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    long-to-float v13, v13

    div-float/2addr v12, v13

    iput v12, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/dw;->f:Ltms/dv;

    move-object/from16 v0, p0

    iget-object v12, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v4, v12}, Ltms/dv;->b(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    goto/16 :goto_d

    :catch_4
    move-exception v1

    move-object v4, v5

    goto/16 :goto_a

    :catch_5
    move-exception v3

    :try_start_f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12

    goto/16 :goto_f

    :catch_6
    move-exception v3

    move-object v4, v5

    move-wide/from16 v17, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto/16 :goto_6

    :cond_13
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v8, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    move-object/from16 v0, p0

    iget-object v9, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    goto/16 :goto_11

    :catch_7
    move-exception v3

    move-object/from16 v17, v3

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move-object/from16 v1, v17

    goto/16 :goto_6

    :cond_14
    const/16 v5, 0x41

    if-ge v3, v5, :cond_15

    const/4 v5, 0x2

    array-length v3, v7

    sget-object v8, Ltms/dw;->a:[S

    const/4 v9, 0x1

    aget-short v8, v8, v9

    shl-int/lit8 v8, v8, 0xa

    if-eq v3, v8, :cond_1a

    sget-object v3, Ltms/dw;->a:[S

    const/4 v7, 0x1

    aget-short v3, v3, v7

    shl-int/lit8 v3, v3, 0xa

    new-array v7, v3, [B

    move-object v3, v7

    goto/16 :goto_12

    :cond_15
    const/4 v5, 0x3

    array-length v3, v7

    sget-object v8, Ltms/dw;->a:[S

    const/4 v9, 0x2

    aget-short v8, v8, v9

    shl-int/lit8 v8, v8, 0xa

    if-eq v3, v8, :cond_1a

    sget-object v3, Ltms/dw;->a:[S

    const/4 v7, 0x2

    aget-short v3, v3, v7

    shl-int/lit8 v3, v3, 0xa

    new-array v7, v3, [B
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    move-object v3, v7

    goto/16 :goto_12

    :catch_8
    move-exception v1

    :goto_13
    :try_start_11
    move-object/from16 v0, p0

    iget-byte v5, v0, Ltms/dw;->j:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    move-object/from16 v0, p0

    iput-byte v6, v0, Ltms/dw;->j:B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/16 v6, 0xa

    if-ge v5, v6, :cond_18

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v5}, Ltms/v;->f()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Ltms/dw;->e:Ltms/v;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->g:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/dw;->g:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :try_start_13
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    invoke-virtual {v5, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ltms/dw;->b(Ljava/io/FileOutputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14

    if-eqz v4, :cond_16

    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    :cond_16
    :goto_14
    move-object/from16 v0, p0

    iget-byte v1, v0, Ltms/dw;->j:B

    if-lez v1, :cond_17

    if-eqz v6, :cond_17

    :try_start_15
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_17
    :goto_15
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    goto/16 :goto_3

    :catch_9
    move-exception v5

    :goto_16
    :try_start_16
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    new-instance v5, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x1b90

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "breakable download IOException on try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-byte v8, v0, Ltms/dw;->j:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IOException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_18
    new-instance v5, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x1b90

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "breakable download IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    :catch_a
    move-exception v1

    :goto_17
    new-instance v5, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/4 v6, -0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "breakable download Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catch_b
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catch_c
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v5

    goto/16 :goto_7

    :catchall_2
    move-exception v3

    move-object v4, v5

    move-wide/from16 v17, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto/16 :goto_7

    :catchall_3
    move-exception v3

    move-object/from16 v17, v3

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move-object/from16 v1, v17

    goto/16 :goto_7

    :catchall_4
    move-exception v1

    move-object/from16 p1, v6

    goto/16 :goto_7

    :catch_11
    move-exception v1

    move-object v4, v5

    goto :goto_17

    :catch_12
    move-exception v3

    move-object v4, v5

    move-wide/from16 v17, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto :goto_17

    :catch_13
    move-exception v3

    move-object/from16 v17, v3

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move-object/from16 v1, v17

    goto/16 :goto_17

    :catch_14
    move-exception v5

    move-object/from16 p1, v6

    goto/16 :goto_16

    :catch_15
    move-exception v1

    move-object v4, v5

    goto/16 :goto_13

    :catch_16
    move-exception v3

    move-object v4, v5

    move-wide/from16 v17, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto/16 :goto_13

    :catch_17
    move-exception v3

    move-object/from16 v17, v3

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move-object/from16 v1, v17

    goto/16 :goto_13

    :catch_18
    move-exception v3

    move-object v4, v5

    move-wide/from16 v17, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto/16 :goto_a

    :catch_19
    move-exception v3

    move-object/from16 v17, v3

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move-object/from16 v1, v17

    goto/16 :goto_a

    :cond_19
    move v6, v1

    goto/16 :goto_b

    :cond_1a
    move-object v3, v7

    goto/16 :goto_12

    :cond_1b
    move-object v4, v5

    goto/16 :goto_10

    :cond_1c
    move-wide v1, v2

    goto/16 :goto_e
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/dw;->d:Z

    invoke-virtual {p0}, Ltms/dw;->interrupt()V

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Ltms/dv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltms/dv",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/dw;->f:Ltms/dv;

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    iget-object v3, p0, Ltms/dw;->h:[B

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkType:LQQPIM/ConnectType;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v6, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v6, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_5

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x3

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x0

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v5, ""

    iput-object v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, -0x1

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v5, 0x3f80

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    iget-object v4, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v5, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v4, v5}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    :cond_1
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Ltms/dw;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v1}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_3
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;

    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v2}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-boolean v0, p0, Ltms/dw;->i:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Ltms/dw;->b()V

    :cond_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Ltms/dw;->g:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_f

    invoke-direct {p0, v2}, Ltms/dw;->a(Ljava/io/FileOutputStream;)V

    :goto_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v8

    if-gtz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Ltms/dw;->d:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v8

    if-gtz v0, :cond_9

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_9

    :cond_8
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x3

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, -0x1

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v4}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_5
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    :cond_9
    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    :cond_b
    :goto_7
    :try_start_9
    iget-boolean v0, p0, Ltms/dw;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_d

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_d

    :cond_c
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_8
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v1}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_d
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;

    :cond_e
    :goto_9
    monitor-exit v3

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :cond_f
    :try_start_a
    invoke-direct {p0, v2}, Ltms/dw;->b(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :goto_a
    :try_start_b
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->printStackTrace()V

    iget-boolean v4, p0, Ltms/dw;->d:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I

    move-result v5

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v4}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_b
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_10
    if-eqz v1, :cond_11

    :try_start_c
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_11
    :goto_c
    if-eqz v2, :cond_12

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_12
    :goto_d
    :try_start_e
    iget-boolean v0, p0, Ltms/dw;->d:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_14

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_14

    :cond_13
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_e
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v1}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_14
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_9

    :cond_15
    :try_start_f
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :goto_f
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-boolean v4, p0, Ltms/dw;->d:Z

    if-eqz v4, :cond_16

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/16 v5, -0x1b59

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_21

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v4}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_10
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_16
    if-eqz v1, :cond_17

    :try_start_11
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_17
    :goto_11
    if-eqz v2, :cond_18

    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    :cond_18
    :goto_12
    :try_start_13
    iget-boolean v0, p0, Ltms/dw;->d:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1a

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1a

    :cond_19
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_13
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v1}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_1a
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_9

    :cond_1b
    :try_start_14
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    :goto_14
    if-eqz v1, :cond_1c

    :try_start_15
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    :cond_1c
    :goto_15
    if-eqz v2, :cond_1d

    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    :cond_1d
    :goto_16
    :try_start_17
    iget-boolean v1, p0, Ltms/dw;->d:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1f

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_1f

    :cond_1e
    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x3

    iput v2, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v1, :cond_28

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v2, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v2}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_17
    iget-object v1, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v2}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_1f
    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v1, :cond_20

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->f()V

    const/4 v1, 0x0

    iput-object v1, p0, Ltms/dw;->e:Ltms/v;

    :cond_20
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_21
    :try_start_18
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v4, p0, Ltms/dw;->d:Z

    if-eqz v4, :cond_22

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/16 v5, -0x1b5a

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "final exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v4}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_19
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v4, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_22
    if-eqz v1, :cond_23

    :try_start_19
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    :cond_23
    :goto_1a
    if-eqz v2, :cond_24

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    :cond_24
    :goto_1b
    :try_start_1b
    iget-boolean v0, p0, Ltms/dw;->d:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v2, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_26

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_26

    :cond_25
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v1}, Ltms/v;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    :goto_1c
    iget-object v0, p0, Ltms/dw;->f:Ltms/dv;

    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v1}, Ltms/dv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_26
    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltms/dw;->e:Ltms/v;

    invoke-virtual {v0}, Ltms/v;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dw;->e:Ltms/v;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_9

    :cond_27
    :try_start_1c
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto :goto_19

    :catch_3
    move-exception v1

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16

    :cond_28
    iget-object v1, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_17

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    :cond_29
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_e

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_12

    :cond_2a
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_13

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b

    :cond_2b
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto :goto_1c

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_2c
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_2

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :cond_2d
    iget-object v0, p0, Ltms/dw;->b:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_14

    :catch_f
    move-exception v0

    goto/16 :goto_18

    :catch_10
    move-exception v0

    move-object v2, v1

    goto/16 :goto_f

    :catch_11
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a
.end method
