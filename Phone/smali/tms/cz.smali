.class Ltms/cz;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/co$b;


# direct methods
.method constructor <init>(Ltms/co$b;)V
    .locals 0

    iput-object p1, p0, Ltms/cz;->a:Ltms/co$b;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method f()Z
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Ltms/cz;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ltms/cz;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 4

    iget-object v0, p0, Ltms/cz;->a:Ltms/co$b;

    iget-object v1, p0, Ltms/cz;->a:Ltms/co$b;

    invoke-static {v1}, Ltms/co$b;->d(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Ltms/co$b;->a(Ltms/co$b;Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method
