.class Ltms/es;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/en$a;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

.field final synthetic b:Ltms/en;


# direct methods
.method constructor <init>(Ltms/en;Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 0

    iput-object p1, p0, Ltms/es;->b:Ltms/en;

    iput-object p2, p0, Ltms/es;->a:Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/es;->b:Ltms/en;

    invoke-static {v0}, Ltms/en;->b(Ltms/en;)Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v0

    iget-object v1, p0, Ltms/es;->a:Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->update(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    return-void
.end method

.method public a(Lcom/tencent/tmsecure/module/permission/IDummyService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/es;->a:Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/permission/IDummyService;->updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
