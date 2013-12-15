.class Ltms/ca;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field final synthetic b:Ltms/bp$c;


# direct methods
.method constructor <init>(Ltms/bp$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 0

    iput-object p1, p0, Ltms/ca;->b:Ltms/bp$c;

    iput-object p2, p0, Ltms/ca;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ltms/ca;->b:Ltms/bp$c;

    iget-object v1, p0, Ltms/ca;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-static {v0, v1}, Ltms/bp$c;->a(Ltms/bp$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ltms/ca;->b:Ltms/bp$c;

    iget-object v2, p0, Ltms/ca;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-static {v1, v0, v2}, Ltms/bp$c;->a(Ltms/bp$c;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    return-void
.end method
