.class Ltms/br;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/bp$b;


# direct methods
.method constructor <init>(Ltms/bp$b;)V
    .locals 0

    iput-object p1, p0, Ltms/br;->a:Ltms/bp$b;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ltms/br;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p0}, Ltms/br;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ltms/br;->a:Ltms/bp$b;

    invoke-static {v2}, Ltms/bp$b;->a(Ltms/bp$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 5

    invoke-virtual {p0}, Ltms/br;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p0, Ltms/br;->a:Ltms/bp$b;

    invoke-static {v1}, Ltms/bp$b;->b(Ltms/bp$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    invoke-virtual {p0}, Ltms/br;->c()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p0}, Ltms/br;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {p0}, Ltms/br;->d()I

    move-result v2

    iput v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p0}, Ltms/br;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    iget-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v3, p0, Ltms/br;->a:Ltms/bp$b;

    iget-object v4, p0, Ltms/br;->a:Ltms/bp$b;

    invoke-static {v4}, Ltms/bp$b;->c(Ltms/bp$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v4

    invoke-static {v3, v0, v4, v1}, Ltms/bp$b;->a(Ltms/bp$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Ltms/br;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-void
.end method
