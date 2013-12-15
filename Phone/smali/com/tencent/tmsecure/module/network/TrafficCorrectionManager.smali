.class public final Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field a:Ltms/dr;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAllProvinces()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ltms/dj;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getBrands(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltms/dj;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ltms/dj;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCities(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltms/dj;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfig()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    invoke-virtual {v0}, Ltms/dr;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getCorrectionResult(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x1869f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    invoke-virtual {v0, p1, p2, p3}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/dr;

    invoke-direct {v0}, Ltms/dr;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    invoke-virtual {v0, p1}, Ltms/dr;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x1869f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    invoke-virtual {v0, p1}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I

    move-result v0

    goto :goto_0
.end method

.method public startCorrection(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x1869f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Ltms/dr;

    invoke-virtual {v0, p1}, Ltms/dr;->a(Ljava/util/ArrayList;)I

    move-result v0

    goto :goto_0
.end method
