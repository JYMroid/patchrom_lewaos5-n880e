.class Ltms/ck;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/cj$a;


# direct methods
.method constructor <init>(Ltms/cj$a;)V
    .locals 0

    iput-object p1, p0, Ltms/ck;->a:Ltms/cj$a;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method f()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ltms/ck;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ltms/ck;->a:Ltms/cj$a;

    invoke-static {v1}, Ltms/cj$a;->a(Ltms/cj$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    invoke-virtual {p0}, Ltms/ck;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p0}, Ltms/ck;->d()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p0}, Ltms/ck;->b()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-virtual {p0}, Ltms/ck;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v2, Ltms/cl;

    invoke-direct {v2, p0, v0}, Ltms/cl;-><init>(Ltms/ck;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ltms/ck;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-void
.end method
