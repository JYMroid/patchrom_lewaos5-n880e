.class Ltms/bw;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/bp$b;


# direct methods
.method constructor <init>(Ltms/bp$b;)V
    .locals 0

    iput-object p1, p0, Ltms/bw;->a:Ltms/bp$b;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 3

    invoke-virtual {p0}, Ltms/bw;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p0}, Ltms/bw;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ltms/bw;->a:Ltms/bp$b;

    invoke-static {v1}, Ltms/bp$b;->h(Ltms/bp$b;)Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ltms/bw;->a:Ltms/bp$b;

    invoke-static {v0, p0}, Ltms/bp$b;->a(Ltms/bp$b;Ltms/bf$a;)V

    return-void
.end method
