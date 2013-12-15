.class final Ltms/co$b;
.super Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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

.field private d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

.field private h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

.field private j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

.field private k:Landroid/content/Context;

.field private l:Ltms/bf;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;-><init>()V

    iput-object p1, p0, Ltms/co$b;->k:Landroid/content/Context;

    invoke-direct {p0}, Ltms/co$b;->c()Z

    move-result v0

    iput-boolean v0, p0, Ltms/co$b;->m:Z

    new-instance v0, Ltms/bf;

    invoke-direct {v0}, Ltms/bf;-><init>()V

    iput-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltms/bf;->a([I)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/4 v1, 0x1

    new-instance v2, Ltms/cr;

    invoke-direct {v2, p0}, Ltms/cr;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/4 v1, 0x2

    new-instance v2, Ltms/cs;

    invoke-direct {v2, p0}, Ltms/cs;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/4 v1, 0x4

    new-instance v2, Ltms/ct;

    invoke-direct {v2, p0}, Ltms/ct;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x8

    new-instance v2, Ltms/cu;

    invoke-direct {v2, p0}, Ltms/cu;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x10

    new-instance v2, Ltms/cv;

    invoke-direct {v2, p0}, Ltms/cv;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x20

    new-instance v2, Ltms/cw;

    invoke-direct {v2, p0}, Ltms/cw;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x40

    new-instance v2, Ltms/cx;

    invoke-direct {v2, p0}, Ltms/cx;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x80

    new-instance v2, Ltms/cy;

    invoke-direct {v2, p0}, Ltms/cy;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    const/16 v1, 0x100

    new-instance v2, Ltms/cz;

    invoke-direct {v2, p0}, Ltms/cz;-><init>(Ltms/co$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/bf;->a(ILtms/bf$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    iput-object v1, p0, Ltms/co$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    iput-object v0, p0, Ltms/co$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method private a(Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltms/bf$a;",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;ZZ)V"
        }
    .end annotation

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p1}, Ltms/bf$a;->c()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    invoke-virtual {p1}, Ltms/bf$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {p1}, Ltms/bf$a;->d()I

    move-result v0

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p1}, Ltms/bf$a;->b()I

    move-result v0

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-virtual {p1, v1}, Ltms/bf$a;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ltms/bf$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    :cond_0
    iget-object v2, p0, Ltms/co$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z

    iget-object v2, p0, Ltms/co$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltms/co$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-interface {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;->convert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v0

    :cond_1
    invoke-interface {p2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;->insert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    :cond_2
    return-void
.end method

.method static synthetic a(Ltms/co$b;Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ltms/co$b;->a(Ltms/bf$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method

.method static synthetic b(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-object v0
.end method

.method static synthetic c(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/co$b;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.htc.launcher"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-object v0
.end method

.method static synthetic e(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic f(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic g(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic h(Ltms/co$b;)Z
    .locals 1

    iget-boolean v0, p0, Ltms/co$b;->m:Z

    return v0
.end method

.method static synthetic i(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    return-object v0
.end method

.method static synthetic j(Ltms/co$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Ltms/co$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method


# virtual methods
.method protected varargs a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 2

    iget-object v0, p0, Ltms/co$b;->l:Ltms/bf;

    invoke-virtual {p0}, Ltms/co$b;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Ltms/bf;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;->onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltms/co$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;->update(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    :cond_0
    return-void
.end method

.method public defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    invoke-virtual {v0, v4, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected synthetic onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 0

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {p0, p1, p2}, Ltms/co$b;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-void
.end method

.method protected synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 1

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {p0, p1, p2}, Ltms/co$b;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

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

    iput-object p1, p0, Ltms/co$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public setCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/co$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-void
.end method

.method public setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    iput-object p1, p0, Ltms/co$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void
.end method

.method public setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Ltms/co$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Ltms/co$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void
.end method

.method public setPrivateCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/co$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

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

    iput-object p1, p0, Ltms/co$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public setShortCallChecker(Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;)V
    .locals 0

    iput-object p1, p0, Ltms/co$b;->g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    return-void
.end method

.method public setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Ltms/co$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

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

    iput-object p1, p0, Ltms/co$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
