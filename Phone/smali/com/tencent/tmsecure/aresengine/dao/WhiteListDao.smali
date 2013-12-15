.class public Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;
.super Ljava/lang/Object;
.source "WhiteListDao.java"

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
.field private static mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteListDao:Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;


# instance fields
.field private mContext:Landroid/content/Context;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Landroid/provider/InterceptConstants;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->uri:Landroid/net/Uri;

    .line 21
    iput-object p1, p0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->initFromStaticData()V

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteListDao:Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    if-nez v0, :cond_0

    .line 27
    const-class v1, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    monitor-enter v1

    .line 28
    :try_start_0
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteListDao:Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteListDao:Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    return-object v0

    .line 29
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
    .line 96
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 1
    .parameter "phonenum"
    .parameter "flags"

    .prologue
    .line 56
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/tencent/tmsecure/aresengine/dao/DaoHelper;->contains(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)Z
    .locals 5
    .parameter "entity"

    .prologue
    .line 60
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 63
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 64
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 65
    .local v2, temEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    const/4 v3, 0x1

    .line 70
    .end local v2           #temEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    :goto_1
    return v3

    .line 63
    .restart local v2       #temEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v2           #temEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
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
    .line 92
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method protected initFromStaticData()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    const-string v3, "type=2"

    .line 37
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->uri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, number:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, name:Ljava/lang/String;
    new-instance v7, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v7}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    .line 45
    .local v7, entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    iput-object v9, v7, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 46
    iput-object v8, v7, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v7           #entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1
    return-void
.end method

.method public insert(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)J
    .locals 2
    .parameter "entity"

    .prologue
    .line 74
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

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
    .line 79
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 81
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 82
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 83
    .local v2, tempEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    sget-object v3, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->mWhiteList:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v2           #tempEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
