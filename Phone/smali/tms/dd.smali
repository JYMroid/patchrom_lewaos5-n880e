.class final Ltms/dd;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "cmwap"

.field static final b:Ljava/lang/String; = "cmnet"

.field static final c:Ljava/lang/String; = "3gwap"

.field static final d:Ljava/lang/String; = "3gnet"

.field static final e:Ljava/lang/String; = "uniwap"

.field static final f:Ljava/lang/String; = "uninet"

.field static final g:Ljava/lang/String; = "ctwap"

.field static final h:Ljava/lang/String; = "ctnet"

.field static final i:Ljava/lang/String; = "default"

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cmwap"

    aput-object v1, v0, v3

    const-string v1, "cmnet"

    aput-object v1, v0, v4

    const-string v1, "3gwap"

    aput-object v1, v0, v5

    const-string v1, "3gnet"

    aput-object v1, v0, v6

    const-string v1, "uniwap"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uninet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ctwap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ctnet"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "default"

    aput-object v2, v0, v1

    sput-object v0, Ltms/dd;->j:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cmnet"

    aput-object v1, v0, v3

    const-string v1, "3gnet"

    aput-object v1, v0, v4

    const-string v1, "uninet"

    aput-object v1, v0, v5

    const-string v1, "ctnet"

    aput-object v1, v0, v6

    sput-object v0, Ltms/dd;->k:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cmwap"

    aput-object v1, v0, v3

    const-string v1, "3gwap"

    aput-object v1, v0, v4

    const-string v1, "uniwap"

    aput-object v1, v0, v5

    const-string v1, "ctwap"

    aput-object v1, v0, v6

    sput-object v0, Ltms/dd;->l:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Ltms/dd;->j:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Ltms/dd;->j:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Ltms/dd;->j:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ltms/dd;->k:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ltms/dd;->l:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method
