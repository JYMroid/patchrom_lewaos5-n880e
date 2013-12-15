.class Ltms/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/v;


# direct methods
.method private constructor <init>(Ltms/v;)V
    .locals 0

    iput-object p1, p0, Ltms/v$a;->a:Ltms/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/v;Ltms/v$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/v$a;-><init>(Ltms/v;)V

    return-void
.end method


# virtual methods
.method public onWifiApproveCheckFinished(ZZ)V
    .locals 3

    const-string v1, "wifi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiApproveCheckFinished:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ltms/v;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " currentSSID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " needwifiApprove:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isApproving?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ltms/v;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ltms/v;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltms/v;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    invoke-static {p1}, Ltms/v;->a(Z)Z

    :goto_2
    invoke-static {p2}, Ltms/v;->b(Z)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ltms/v;->c(Z)Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "false"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ltms/v;->a(Z)Z

    goto :goto_2
.end method
