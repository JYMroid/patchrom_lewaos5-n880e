.class public Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;
.super Ljava/lang/Object;
.source "PrivateListDao.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IContactDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUM_ENTITIES:I = 0x5

.field private static mEntityIds:[I

.field private static mNames:[Ljava/lang/String;

.field private static mPhoneNums:[Ljava/lang/String;

.field private static mSecureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecureListDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    .line 13
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mEntityIds:[I

    .line 14
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "15914354346"

    aput-object v1, v0, v4

    const-string v1, "076926709394"

    aput-object v1, v0, v5

    const-string v1, "59276037"

    aput-object v1, v0, v6

    const-string v1, "58376035"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "83423734"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mPhoneNums:[Ljava/lang/String;

    .line 16
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mNames:[Ljava/lang/String;

    return-void

    .line 13
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mEntityIds:[I

    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mPhoneNums:[Ljava/lang/String;

    sget-object v4, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mNames:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/tmsecure/aresengine/dao/DaoHelper;->populateStaticData(Ljava/util/List;I[I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureListDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;

    if-nez v0, :cond_0

    .line 25
    const-class v1, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;

    monitor-enter v1

    .line 26
    :try_start_0
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;

    invoke-direct {v0}, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureListDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureListDao:Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearAll()Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 1
    .parameter "phonenum"
    .parameter "flags"

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/tencent/tmsecure/aresengine/dao/DaoHelper;->contains(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 38
    sget-object v1, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    .local v0, isDeleted:Z
    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    return-object v0
.end method

.method public insert(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)J
    .locals 2
    .parameter "entity"

    .prologue
    .line 43
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public update(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)Z
    .locals 5
    .parameter "entity"

    .prologue
    .line 48
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 50
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 51
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 52
    .local v2, tempEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->mSecureList:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v2           #tempEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
