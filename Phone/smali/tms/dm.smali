.class final Ltms/dm;
.super Ltms/dl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/dm$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Ltms/dn;)V
    .locals 1

    new-instance v0, Ltms/dm$a;

    invoke-direct {v0, p2}, Ltms/dm$a;-><init>(Ltms/dn;)V

    invoke-direct {p0, v0, p1}, Ltms/dl;-><init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V

    return-void
.end method
