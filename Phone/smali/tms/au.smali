.class Ltms/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ltms/as$a;

.field final synthetic c:Ltms/as;


# direct methods
.method constructor <init>(Ltms/as;Landroid/content/Intent;Ltms/as$a;)V
    .locals 0

    iput-object p1, p0, Ltms/au;->c:Ltms/as;

    iput-object p2, p0, Ltms/au;->a:Landroid/content/Intent;

    iput-object p3, p0, Ltms/au;->b:Ltms/as$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ltms/au;->c:Ltms/as;

    invoke-static {v0}, Ltms/as;->b(Ltms/as;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltms/au;->a:Landroid/content/Intent;

    iget-object v2, p0, Ltms/au;->b:Ltms/as$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
