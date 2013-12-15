.class public final Lcom/tencent/tmsecure/module/phoneservice/LocationManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/fd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    invoke-virtual {v0, p1}, Ltms/fd;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    invoke-virtual {v0, p1}, Ltms/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltms/fd;->a(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProvinceNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    invoke-virtual {v0}, Ltms/fd;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/fd;

    invoke-direct {v0}, Ltms/fd;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    invoke-virtual {v0, p1}, Ltms/fd;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Ltms/fd;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
