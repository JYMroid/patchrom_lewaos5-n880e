.class Ltms/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/fn;


# direct methods
.method constructor <init>(Ltms/fn;)V
    .locals 0

    iput-object p1, p0, Ltms/fo;->a:Ltms/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x1

    sput-boolean v0, Ltms/fn;->b:Z

    iget-object v0, p0, Ltms/fo;->a:Ltms/fn;

    invoke-static {v0, v1}, Ltms/fn;->a(Ltms/fn;Z)Z

    return-void
.end method
