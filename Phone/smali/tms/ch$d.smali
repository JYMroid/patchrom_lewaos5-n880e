.class final Ltms/ch$d;
.super Lcom/tencent/tmsecure/module/aresengine/OutgoingSmsFiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/OutgoingSmsFiter;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 1

    sget-object v0, Ltms/ch;->b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-object v0
.end method

.method public defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 1

    sget-object v0, Ltms/ch;->a:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    return-object v0
.end method

.method protected synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 1

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p0, p1, p2}, Ltms/ch$d;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    return-void
.end method

.method public setPrivateListDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPrivateSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSystDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    return-void
.end method
