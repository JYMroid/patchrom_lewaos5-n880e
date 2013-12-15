.class final Ltms/gj$c;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ltms/gj;

.field private b:Ltms/gj$d;


# direct methods
.method private constructor <init>(Ltms/gj;)V
    .locals 0

    iput-object p1, p0, Ltms/gj$c;->a:Ltms/gj;

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/gj;Ltms/gj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/gj$c;-><init>(Ltms/gj;)V

    return-void
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    new-instance v0, Ltms/gj$d;

    iget-object v1, p0, Ltms/gj$c;->a:Ltms/gj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltms/gj$d;-><init>(Ltms/gj;Ltms/gj$1;)V

    iput-object v0, p0, Ltms/gj$c;->b:Ltms/gj$d;

    iget-object v0, p0, Ltms/gj$c;->b:Ltms/gj$d;

    invoke-virtual {v0}, Ltms/gj$d;->a()V

    return-void
.end method

.method public onDestory()V
    .locals 1

    iget-object v0, p0, Ltms/gj$c;->b:Ltms/gj$d;

    invoke-virtual {v0}, Ltms/gj$d;->b()V

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    return-void
.end method
