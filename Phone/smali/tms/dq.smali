.class public final Ltms/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/INetworkMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearAllLogs()V
    .locals 0

    return-void
.end method

.method public getAllLogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRefreshState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyConfigChange()V
    .locals 0

    return-void
.end method

.method public removeCallback(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRefreshState(Z)V
    .locals 0

    return-void
.end method
