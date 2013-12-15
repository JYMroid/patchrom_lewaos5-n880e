.class final Ltms/ch$c;
.super Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;-><init>()V

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

    invoke-virtual {p0, p1, p2}, Ltms/ch$c;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public setBlacklistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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

.method public setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    return-void
.end method

.method public setIntelligentSmsHandler(Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;)V
    .locals 0

    return-void
.end method

.method public setKeywordDao(Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;)V
    .locals 0

    return-void
.end method

.method public setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    return-void
.end method

.method public setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

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

.method public setPrivatelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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

.method public setSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
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

.method public setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    return-void
.end method

.method public setWhitelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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
