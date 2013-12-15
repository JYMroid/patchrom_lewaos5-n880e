.class Ltms/cx;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/co$b;


# direct methods
.method constructor <init>(Ltms/co$b;)V
    .locals 0

    iput-object p1, p0, Ltms/cx;->a:Ltms/co$b;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method f()Z
    .locals 8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ltms/cx;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Ltms/cx;->a:Ltms/co$b;

    invoke-static {v1}, Ltms/co$b;->h(Ltms/co$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-eq v1, v4, :cond_1

    move v1, v2

    :goto_0
    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    const-wide/16 v6, 0x5

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    :goto_1
    and-int v3, v1, v2

    :cond_0
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/cx;->a:Ltms/co$b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Ltms/co$b;->a(Ltms/co$b;Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method
