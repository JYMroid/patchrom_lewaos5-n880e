.class Ltms/et;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/en$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ltms/en;


# direct methods
.method constructor <init>(Ltms/en;Z)V
    .locals 0

    iput-object p1, p0, Ltms/et;->b:Ltms/en;

    iput-boolean p2, p0, Ltms/et;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/tencent/tmsecure/module/permission/IDummyService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Ltms/et;->a:Z

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/permission/IDummyService;->setEnable(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ltms/et;->b:Ltms/en;

    iget-boolean v1, p0, Ltms/et;->a:Z

    invoke-static {v0, v1}, Ltms/en;->a(Ltms/en;Z)Z

    return-void
.end method
