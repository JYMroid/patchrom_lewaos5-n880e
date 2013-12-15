.class public final Ltms/al;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String; = "password"

.field public static final c:Ljava/lang/String; = "helper"


# instance fields
.field public a:Ltms/ac;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltms/ac;

    const-string v1, "AntitheftProperty"

    invoke-direct {v0, v1}, Ltms/ac;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/al;->a:Ltms/ac;

    return-void
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ltms/al;->a:Ltms/ac;

    const-string v1, "helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Ltms/al;->a:Ltms/ac;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/utils/Base64;->decode([BI)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltms/al;->a:Ltms/ac;

    const-string v1, "password"

    invoke-static {p1}, Ltms/al;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltms/al;->a:Ltms/ac;

    const-string v1, "helper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
