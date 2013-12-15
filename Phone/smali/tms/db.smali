.class final Ltms/db;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/bi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/db$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/content/Intent;

.field private f:Ltms/db$a;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0c"

    iput-object v0, p0, Ltms/db;->a:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, p0, Ltms/db;->b:Ljava/lang/String;

    const-string v0, "03"

    iput-object v0, p0, Ltms/db;->c:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Ltms/db;->d:Ljava/lang/String;

    iput-object p1, p0, Ltms/db;->e:Landroid/content/Intent;

    return-void
.end method

.method private a(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ByteArrayInputStream;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Ltms/db;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Ltms/db;->e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltms/db;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/db;->f:Ltms/db$a;

    iput-object v0, v1, Ltms/db$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ltms/db;->e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltms/db;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    iput-object v1, v0, Ltms/db$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    iget-object v0, v0, Ltms/db$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Ltms/db;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Ltms/db;->a(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private b(Ljava/io/ByteArrayInputStream;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Ltms/db;->e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltms/db;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    iput-object v1, v0, Ltms/db$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    iget-object v0, v0, Ltms/db$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/io/ByteArrayInputStream;)Z
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, p1}, Ltms/db;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "03"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ltms/db;->d(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ltms/db;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltms/db;->f:Ltms/db$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltms/db$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltms/db;->f:Ltms/db$a;

    iput-object v1, v3, Ltms/db$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    iget-object v0, v0, Ltms/db$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltms/db$a;->c:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    iget-object v0, v0, Ltms/db$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Ltms/db;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    invoke-direct {p0, p1}, Ltms/db;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Ltms/db;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v0, 0xf

    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    invoke-virtual {v0}, Ltms/db$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ltms/db$a;

    invoke-direct {v1}, Ltms/db$a;-><init>()V

    iput-object v1, p0, Ltms/db;->f:Ltms/db$a;

    invoke-direct {p0, v0}, Ltms/db;->a(Ljava/io/ByteArrayInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ltms/db;->b(Ljava/io/ByteArrayInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ltms/db;->c(Ljava/io/ByteArrayInputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltms/db;->f:Ltms/db$a;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/db;->f:Ltms/db$a;

    invoke-virtual {v0}, Ltms/db$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 4

    iget-object v0, p0, Ltms/db;->e:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ltms/db;->a([B)V

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    invoke-virtual {p0}, Ltms/db;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p0}, Ltms/db;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget-object v1, p0, Ltms/db;->e:Landroid/content/Intent;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    :cond_0
    return-object v0
.end method
