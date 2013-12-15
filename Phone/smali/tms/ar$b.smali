.class final Ltms/ar$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:[[I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/tccdb/SmsChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    sput-object v0, Ltms/ar$b;->a:[[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/ar$b;->b:Landroid/content/Context;

    iget-object v0, p0, Ltms/ar$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->getInstance(Landroid/content/Context;)Lcom/tencent/tccdb/SmsChecker;

    move-result-object v0

    iput-object v0, p0, Ltms/ar$b;->c:Lcom/tencent/tccdb/SmsChecker;

    return-void
.end method


# virtual methods
.method a(Lcom/tencent/tccdb/MMatchSysResult;)I
    .locals 5

    const/4 v2, 0x4

    const/4 v1, 0x1

    iget v0, p1, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    if-lez v0, :cond_0

    if-le v0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ne v0, v1, :cond_1

    iget v3, p1, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    if-eq v3, v1, :cond_3

    iget v3, p1, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_3
    iget v0, p1, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tccdb/MMatchSysResult;
    .locals 7

    const/4 v5, 0x0

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
    iput v5, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    :cond_1
    new-instance v0, Lcom/tencent/tccdb/MCheckInput;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v3, 0x3

    sget-object v4, Ltms/ar$b;->a:[[I

    iget v6, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    aget-object v4, v4, v6

    aget v4, v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tccdb/MCheckInput;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v2, p0, Ltms/ar$b;->c:Lcom/tencent/tccdb/SmsChecker;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tccdb/SmsChecker;->checkSmsSys(Lcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MMatchSysResult;

    return-object v0
.end method

.method a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/MMatchSysResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    if-ne v0, v8, :cond_4

    move v5, v6

    :goto_1
    new-instance v0, Lcom/tencent/tccdb/MCheckInput;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tccdb/MCheckInput;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Ltms/ar$b;->c:Lcom/tencent/tccdb/SmsChecker;

    invoke-virtual {v1, v0, p2}, Lcom/tencent/tccdb/SmsChecker;->checkChargeSms(Lcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MMatchSysResult;

    invoke-virtual {p0, v0}, Ltms/ar$b;->a(Lcom/tencent/tccdb/MMatchSysResult;)I

    move-result v0

    if-eq v0, v8, :cond_2

    if-ne v0, v3, :cond_0

    :cond_2
    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v0

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1
.end method

.method public check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;-><init>()V

    invoke-virtual {p0, p1}, Ltms/ar$b;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tccdb/MMatchSysResult;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    iget v2, v1, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    invoke-virtual {p0, v1}, Ltms/ar$b;->a(Lcom/tencent/tccdb/MMatchSysResult;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    return-object v0
.end method

.method public isChartSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltms/ar$b;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method
