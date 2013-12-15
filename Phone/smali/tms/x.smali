.class public Ltms/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "http://uploadserver.3g.qq.com"

.field private static final b:Ljava/lang/String; = "key_UploadPacketInfoReq"

.field private static final c:Ljava/lang/String; = "key_UploadPacketInfoResp"

.field private static final d:I = 0x5000


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://uploadserver.3g.qq.com"

    iput-object v0, p0, Ltms/x;->f:Ljava/lang/String;

    iput-object p1, p0, Ltms/x;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;JII)[B
    .locals 3

    new-instance v0, LQQPIM/uploadPacketInfoReq;

    invoke-direct {v0}, LQQPIM/uploadPacketInfoReq;-><init>()V

    invoke-virtual {v0, p1}, LQQPIM/uploadPacketInfoReq;->setSoftware_id(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, LQQPIM/uploadPacketInfoReq;->setPacket_pos(J)V

    invoke-virtual {v0, p4}, LQQPIM/uploadPacketInfoReq;->setPacket_size(I)V

    const-string v1, "MD5"

    invoke-virtual {v0, v1}, LQQPIM/uploadPacketInfoReq;->setChecksum_type(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, LQQPIM/uploadPacketInfoReq;->setChecksun_len(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQQPIM/uploadPacketInfoReq;->setZip_type(I)V

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    const-string v2, "key_UploadPacketInfoReq"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;JI[B)[B
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p5}, Ltms/ab;->a([B)[B

    move-result-object v7

    array-length v5, v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ltms/x;->a(Ljava/lang/String;JII)[B

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v6

    goto :goto_0

    :cond_2
    array-length v2, v1

    add-int/lit8 v0, v2, 0x4

    array-length v3, p5

    add-int/2addr v0, v3

    array-length v3, v7

    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, v1

    invoke-static {v3}, Ltms/ab;->a(I)[B

    move-result-object v3

    invoke-static {v3, v8, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v8, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x4

    array-length v3, p5

    invoke-static {p5, v8, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x4

    array-length v2, p5

    add-int/2addr v1, v2

    array-length v2, v7

    invoke-static {v7, v8, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private b([B)I
    .locals 2

    const/16 v0, -0xfa0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ltms/x;->a([B)LQQPIM/uploadPacketInfoResp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LQQPIM/uploadPacketInfoResp;->getIs_succ()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;LQQPIM/UploadFileInfo;)I
    .locals 13

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, -0x2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5000

    new-array v5, v0, [B

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    :try_start_1
    invoke-virtual {p2}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    move-object v8, v1

    move v9, v2

    :goto_1
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UploadFile;

    invoke-virtual {v0}, LQQPIM/UploadFile;->getPos()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, LQQPIM/UploadFile;->getSize()I

    move-result v4

    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v0, v5

    if-eq v4, v0, :cond_2

    new-array v5, v4, [B

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v10, v5, v0, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    move-result v0

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_5

    :cond_3
    const/16 v0, -0x80c

    if-eqz v10, :cond_4

    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_4
    :goto_2
    if-eqz v8, :cond_0

    :goto_3
    invoke-virtual {v8}, Ltms/v;->f()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {p2}, LQQPIM/UploadFileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltms/x;->a(Ljava/lang/String;JI[B)[B

    move-result-object v0

    iget-object v1, p0, Ltms/x;->f:Ljava/lang/String;

    invoke-static {v1}, Ltms/v;->a(Ljava/lang/String;)Ltms/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    move-result-object v2

    :try_start_5
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ltms/v;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ltms/v;->a([B)V

    invoke-virtual {v2}, Ltms/v;->c()I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ltms/v;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result v1

    :try_start_6
    invoke-virtual {v2}, Ltms/v;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v1, :cond_8

    if-eqz v10, :cond_6

    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ltms/v;->f()V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    :try_start_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Ltms/x;->b([B)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v10, :cond_9

    :try_start_9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_9
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ltms/v;->f()V

    goto/16 :goto_0

    :cond_a
    move-object v8, v2

    move v9, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :goto_6
    :try_start_a
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->printStackTrace()V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v0

    if-eqz v10, :cond_b

    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_b
    :goto_7
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltms/v;->f()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move v0, v2

    :goto_8
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v10, :cond_c

    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_c
    :goto_9
    if-eqz v8, :cond_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_a
    if-eqz v10, :cond_d

    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_d
    :goto_b
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ltms/v;->f()V

    :cond_e
    throw v0

    :cond_f
    move-object v1, v8

    :cond_10
    if-eqz v10, :cond_11

    :try_start_f
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_11
    :goto_c
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ltms/v;->f()V

    :cond_12
    move v0, v7

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v8, v2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    move v0, v9

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v8, v2

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v1, v0

    move v0, v9

    goto :goto_8

    :catch_d
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v1, v8

    goto :goto_6
.end method

.method public a([B)LQQPIM/uploadPacketInfoResp;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Ltms/x;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v2, "key_UploadPacketInfoResp"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/uploadPacketInfoResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/x;->f:Ljava/lang/String;

    return-void
.end method
