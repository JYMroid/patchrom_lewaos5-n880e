.class Ltms/ct;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/co$b;


# direct methods
.method constructor <init>(Ltms/co$b;)V
    .locals 0

    iput-object p1, p0, Ltms/ct;->a:Ltms/co$b;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method f()Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ltms/ct;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {p0}, Ltms/ct;->b()I

    move-result v2

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Ltms/ct;->a:Ltms/co$b;

    invoke-static {v2}, Ltms/co$b;->e(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method g()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Ltms/ct;->a:Ltms/co$b;

    iget-object v0, p0, Ltms/ct;->a:Ltms/co$b;

    invoke-static {v0}, Ltms/co$b;->d(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v3

    invoke-virtual {p0}, Ltms/ct;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, p0, v3, v0, v1}, Ltms/co$b;->a(Ltms/co$b;Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
