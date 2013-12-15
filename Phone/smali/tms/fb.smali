.class final Ltms/fb;
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

    new-instance v0, Ltms/eh;

    invoke-direct {v0}, Ltms/eh;-><init>()V

    invoke-virtual {p0, v0}, Ltms/fb;->a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    new-instance v1, Ltms/ek;

    invoke-direct {v1, v0}, Ltms/ek;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    invoke-virtual {p0, v1}, Ltms/fb;->a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    new-instance v1, Ltms/em;

    invoke-direct {v1, v0}, Ltms/em;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    invoke-virtual {p0, v1}, Ltms/fb;->a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    invoke-static {}, Ltms/fb;->c()[Ljava/lang/Object;

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

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.tmsecure.hookeraction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
