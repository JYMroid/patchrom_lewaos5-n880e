.class final Ltms/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:J = 0x3e8L


# instance fields
.field private b:I

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Z)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ltms/f;

    aput-object v4, v2, v3

    invoke-static {v2}, Ltms/n;->a([Ljava/lang/Class;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "os.version"

    const-string v7, "wtf"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    new-instance v8, Ljava/security/SecureRandom;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-long v3, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/security/SecureRandom;-><init>([B)V

    :cond_0
    const/16 v2, 0x384

    invoke-virtual {v8, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x65

    invoke-static {v2}, Ltms/c;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iput v2, v0, Ltms/c;->b:I

    move-object/from16 v0, p0

    iget v11, v0, Ltms/c;->b:I

    const/16 v2, 0x64

    new-array v12, v2, [I

    int-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v2, v6

    add-int/lit8 v2, v2, -0x1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x1

    mul-int/2addr v3, v4

    if-gt v3, v11, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aput v2, v12, v3

    mul-int/2addr v2, v2

    if-ne v2, v11, :cond_2

    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x5

    new-array v8, v2, [I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v8, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v8, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget v3, v12, v3

    neg-int v3, v3

    aput v3, v8, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput v3, v8, v2

    const/16 v2, 0x64

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v3, 0x0

    move/from16 v24, v3

    move v3, v4

    move/from16 v4, v24

    :goto_2
    const/16 v9, 0x64

    if-ge v5, v9, :cond_10

    const/4 v3, 0x1

    aget v3, v8, v3

    if-gez v3, :cond_3

    const/4 v3, 0x1

    const/4 v9, 0x1

    aget v9, v8, v9

    neg-int v9, v9

    aput v9, v8, v3

    const/4 v3, 0x2

    const/4 v9, 0x2

    aget v9, v8, v9

    neg-int v9, v9

    aput v9, v8, v3

    const/4 v3, 0x3

    const/4 v9, 0x3

    aget v9, v8, v9

    neg-int v9, v9

    aput v9, v8, v3

    const/4 v3, 0x4

    const/4 v9, 0x4

    aget v9, v8, v9

    neg-int v9, v9

    aput v9, v8, v3

    :cond_3
    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v9, 0x2

    aget v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v3, v9}, Ltms/c;->a(II)I

    move-result v3

    const/4 v9, 0x3

    aget v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v3, v9}, Ltms/c;->a(II)I

    move-result v3

    const/4 v9, 0x4

    aget v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v3, v9}, Ltms/c;->a(II)I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_4

    const/4 v9, 0x1

    aget v10, v8, v9

    div-int/2addr v10, v3

    aput v10, v8, v9

    const/4 v9, 0x2

    aget v10, v8, v9

    div-int/2addr v10, v3

    aput v10, v8, v9

    const/4 v9, 0x3

    aget v10, v8, v9

    div-int/2addr v10, v3

    aput v10, v8, v9

    const/4 v9, 0x4

    aget v10, v8, v9

    div-int v3, v10, v3

    aput v3, v8, v9

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v9, v2, v3

    const/4 v10, 0x1

    aget v10, v9, v10

    const/4 v13, 0x1

    aget v13, v8, v13

    if-ne v10, v13, :cond_7

    const/4 v10, 0x2

    aget v10, v9, v10

    const/4 v13, 0x2

    aget v13, v8, v13

    if-ne v10, v13, :cond_7

    const/4 v10, 0x3

    aget v10, v9, v10

    const/4 v13, 0x3

    aget v13, v8, v13

    if-ne v10, v13, :cond_7

    const/4 v10, 0x4

    aget v9, v9, v10

    const/4 v10, 0x4

    aget v10, v8, v10

    if-ne v9, v10, :cond_7

    :cond_5
    if-ge v3, v4, :cond_8

    move v2, v3

    :goto_4
    add-int/lit8 v13, v5, -0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_5
    const-wide/16 v9, 0xc8

    cmp-long v9, v7, v9

    if-ltz v9, :cond_6

    if-nez v4, :cond_e

    :cond_6
    add-int/lit8 v10, v3, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x1

    add-int/lit8 v3, v10, -0x1

    move v9, v3

    :goto_6
    if-ltz v9, :cond_a

    if-gt v10, v13, :cond_9

    aget v3, v12, v9

    :goto_7
    int-to-long v14, v3

    mul-long/2addr v14, v7

    add-long/2addr v5, v14

    add-int/lit8 v3, v9, -0x1

    move v9, v3

    move-wide/from16 v24, v5

    move-wide v5, v7

    move-wide/from16 v7, v24

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    aget-object v9, v2, v4

    const/4 v10, 0x1

    const/4 v13, 0x1

    aget v13, v8, v13

    aput v13, v9, v10

    aget-object v9, v2, v4

    const/4 v10, 0x2

    const/4 v13, 0x2

    aget v13, v8, v13

    aput v13, v9, v10

    aget-object v9, v2, v4

    const/4 v10, 0x3

    const/4 v13, 0x3

    aget v13, v8, v13

    aput v13, v9, v10

    aget-object v9, v2, v4

    const/4 v10, 0x4

    const/4 v13, 0x4

    aget v13, v8, v13

    aput v13, v9, v10

    add-int/lit8 v4, v4, 0x1

    invoke-static {v6, v7, v8}, Ltms/c;->a(D[I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v12, v5

    aget v9, v12, v5

    invoke-static {v11, v8, v9}, Ltms/c;->a(I[II)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9
    sub-int v3, v9, v2

    rem-int/2addr v3, v13

    add-int/2addr v3, v2

    aget v3, v12, v3

    goto :goto_7

    :cond_a
    const-wide/32 v14, 0xf4240

    cmp-long v3, v7, v14

    if-ltz v3, :cond_b

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_b
    mul-long v14, v7, v7

    mul-long v16, v5, v5

    int-to-long v0, v11

    move-wide/from16 v18, v0

    mul-long v18, v18, v16

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v14

    const-wide/16 v22, 0xc8

    cmp-long v3, v7, v22

    if-ltz v3, :cond_f

    const-wide/16 v22, 0x3e7

    mul-long v22, v22, v18

    cmp-long v3, v22, v20

    if-gez v3, :cond_f

    const-wide/16 v22, 0x3e9

    mul-long v18, v18, v22

    cmp-long v3, v20, v18

    if-gez v3, :cond_f

    if-nez v4, :cond_f

    if-eqz p1, :cond_c

    int-to-long v0, v11

    move-wide/from16 v18, v0

    mul-long v18, v18, v16

    cmp-long v3, v14, v18

    if-ltz v3, :cond_d

    :cond_c
    if-nez p1, :cond_f

    int-to-long v0, v11

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    cmp-long v3, v14, v16

    if-lez v3, :cond_f

    :cond_d
    const/4 v3, 0x1

    :goto_8
    move v4, v3

    move v3, v10

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v5, v6}, Ltms/c;->a(JJ)V

    goto/16 :goto_1

    :cond_f
    move v3, v4

    goto :goto_8

    :cond_10
    move v2, v3

    goto/16 :goto_4
.end method

.method private static final a(D[I)D
    .locals 6

    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-double v0, v0

    const/4 v2, 0x2

    aget v2, p2, v2

    int-to-double v2, v2

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p2, v2

    int-to-double v2, v2

    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-double v4, v4

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static final a(II)I
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return p1

    :cond_0
    if-nez p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    if-ge p0, p1, :cond_3

    invoke-static {p1, p0}, Ltms/c;->a(II)I

    move-result p1

    goto :goto_0

    :cond_2
    move p0, p1

    move p1, v0

    :cond_3
    rem-int v0, p0, p1

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private static final a(I[II)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    aget v0, p1, v5

    aget v1, p1, v7

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v6

    aget v1, p1, v8

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p1, v5

    aget v1, p1, v7

    mul-int/2addr v0, v1

    aget v1, p1, v6

    aget v2, p1, v8

    mul-int/2addr v1, v2

    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v8

    mul-int/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v7

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-int/2addr v2, v3

    aget v3, p1, v6

    aget v4, p1, v6

    mul-int/2addr v3, v4

    mul-int/2addr v3, p0

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    aput v0, p1, v5

    aput v1, p1, v6

    aput v2, p1, v7

    aput v3, p1, v8

    return-void
.end method

.method private static final a(I)Z
    .locals 3

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    if-gt v1, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v0, v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/BadExpiryDataException;
        }
    .end annotation

    const-wide/16 v8, 0x3e8

    iget v0, p0, Ltms/c;->b:I

    int-to-long v0, v0

    iget-wide v2, p0, Ltms/c;->c:J

    iget-wide v4, p0, Ltms/c;->d:J

    const-wide/16 v6, 0xc8

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/exception/BadExpiryDataException;

    invoke-direct {v0}, Lcom/tencent/tmsecure/exception/BadExpiryDataException;-><init>()V

    throw v0

    :cond_0
    mul-long/2addr v2, v2

    mul-long/2addr v4, v4

    mul-long/2addr v0, v4

    mul-long v4, v0, v8

    mul-long/2addr v2, v8

    sub-long v6, v4, v0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/tencent/tmsecure/exception/BadExpiryDataException;

    invoke-direct {v0}, Lcom/tencent/tmsecure/exception/BadExpiryDataException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method final a(JJ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ltms/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Ltms/n;->a([Ljava/lang/Class;)V

    iput-wide p1, p0, Ltms/c;->c:J

    iput-wide p3, p0, Ltms/c;->d:J

    invoke-direct {p0}, Ltms/c;->c()V

    return-void
.end method

.method final a()Z
    .locals 6

    invoke-direct {p0}, Ltms/c;->c()V

    iget v0, p0, Ltms/c;->b:I

    int-to-long v0, v0

    iget-wide v2, p0, Ltms/c;->c:J

    iget-wide v4, p0, Ltms/c;->d:J

    mul-long/2addr v2, v2

    mul-long/2addr v4, v4

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Ltms/c;->b:I

    return v0
.end method
