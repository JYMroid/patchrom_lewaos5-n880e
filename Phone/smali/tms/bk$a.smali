.class final Ltms/bk$a;
.super Lcom/tencent/tmsecure/module/aresengine/InComingCallFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private f:Ltms/bf;

.field private g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/InComingCallFilter;-><init>()V

    new-instance v0, Ltms/bf;

    invoke-direct {v0}, Ltms/bf;-><init>()V

    iput-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltms/bf;->a([I)V

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    invoke-direct {p0, v2}, Ltms/bk$a;->a(I)Ltms/bf$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    invoke-direct {p0, v3}, Ltms/bk$a;->a(I)Ltms/bf$a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    invoke-direct {p0, v4}, Ltms/bk$a;->a(I)Ltms/bf$a;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    invoke-direct {p0, v5}, Ltms/bk$a;->a(I)Ltms/bf$a;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    invoke-direct {p0, v6}, Ltms/bk$a;->a(I)Ltms/bf$a;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Ltms/bk$a;->a(I)Ltms/bf$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iput-object v1, p0, Ltms/bk$a;->g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bk$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bk$a;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bk$a;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bk$a;->e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    iput-object v0, p0, Ltms/bk$a;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bk$a;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method private a(I)Ltms/bf$a;
    .locals 1

    new-instance v0, Ltms/bl;

    invoke-direct {v0, p0, p1}, Ltms/bl;-><init>(Ltms/bk$a;I)V

    return-object v0
.end method

.method static synthetic b(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bk$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic c(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bk$a;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic d(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Ltms/bk$a;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic e(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/bk$a;->e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic f(Ltms/bk$a;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Ltms/bk$a;->g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method


# virtual methods
.method protected varargs a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 2

    iget-object v0, p0, Ltms/bk$a;->f:Ltms/bf;

    invoke-virtual {p0}, Ltms/bk$a;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Ltms/bf;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 1

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {p0, p1, p2}, Ltms/bk$a;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

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

    iput-object p1, p0, Ltms/bk$a;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bk$a;->e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Ltms/bk$a;->g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

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

    iput-object p1, p0, Ltms/bk$a;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bk$a;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

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

    iput-object p1, p0, Ltms/bk$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
