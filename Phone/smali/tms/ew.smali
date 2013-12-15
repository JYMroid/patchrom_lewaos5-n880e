.class final Ltms/ew;
.super Ltms/ez;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltms/ez;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/Object;
    .locals 2

    const-string v0, "permission"

    const-string v1, "PhoneServerHooker.onCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ltms/ev;

    invoke-direct {v0}, Ltms/ev;-><init>()V

    invoke-virtual {p0, v0}, Ltms/ew;->a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    new-instance v1, Ltms/fa;

    invoke-direct {v1, v0}, Ltms/fa;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    invoke-virtual {p0, v1}, Ltms/ew;->a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    new-instance v1, Ltms/ey;

    invoke-direct {v1, v0}, Ltms/ey;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    invoke-virtual {p0, v1}, Ltms/ew;->a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    invoke-static {}, Ltms/ew;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    invoke-static {}, Ltms/ez;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.tmsecure.hookeraction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "process_id"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.tmsecure.hookeraction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
