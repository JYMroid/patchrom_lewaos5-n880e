.class Ltms/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/bl;


# direct methods
.method constructor <init>(Ltms/bl;)V
    .locals 0

    iput-object p1, p0, Ltms/bm;->a:Ltms/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ltms/bm;->a:Ltms/bl;

    iget-object v0, v0, Ltms/bl;->b:Ltms/bk$a;

    invoke-static {v0}, Ltms/bk$a;->f(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->hangup()V

    return-void
.end method
