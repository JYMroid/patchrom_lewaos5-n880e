.class public final Ltms/ed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/optimize/ICpuHelper;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/optimize/ICpuHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    return-void
.end method


# virtual methods
.method public getAvailableCpus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCpuInfoMaxFreq()I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getCpuInfoMaxFreq()I

    move-result v0

    return v0
.end method

.method public getCpuInfoMinFreq()I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getCpuInfoMinFreq()I

    move-result v0

    return v0
.end method

.method public getKernelMax()I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getKernelMax()I

    move-result v0

    return v0
.end method

.method public getOnlineCpus()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getOnlineCpus()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingAvaliableFrequencies()[I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingAvaliableFrequencies()[I

    move-result-object v0

    return-object v0
.end method

.method public getScalingAvaliableGovernors()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingCurFreq()I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingCurFreq()I

    move-result v0

    return v0
.end method

.method public getScalingGovernor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingGovernor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingMaxFreq()I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingMaxFreq()I

    move-result v0

    return v0
.end method

.method public getScalingMinFreq()I
    .locals 1

    iget-object v0, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingMinFreq()I

    move-result v0

    return v0
.end method

.method public setScalingFreq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public setScalingGovernor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public setScalingMaxFreq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public setScalingMinFreq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method
