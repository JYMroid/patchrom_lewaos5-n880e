.class public Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;
.super Ljava/lang/Object;
.source "KeyWordDao.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;


# static fields
.field private static final STATIC_KEYWORDS:[Ljava/lang/String;

.field private static mKeyWordDao:Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

.field private static mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mWords:Ljava/util/List;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hot girl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->STATIC_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->reset()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mKeyWordDao:Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

    if-nez v0, :cond_0

    .line 29
    const-class v1, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

    monitor-enter v1

    .line 30
    :try_start_0
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

    invoke-direct {v0}, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mKeyWordDao:Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mKeyWordDao:Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 38
    sget-object v2, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    .local v1, word:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 43
    .end local v1           #word:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mWords:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 21
    sget-object v4, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 22
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->STATIC_KEYWORDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 23
    .local v3, word:Ljava/lang/String;
    sget-object v4, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mWords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v3           #word:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAll(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sput-object p1, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->mWords:Ljava/util/List;

    .line 54
    return-void
.end method
