.class public Lcom/tencent/tmsecure/aresengine/dao/DaoHelper;
.super Ljava/lang/Object;
.source "DaoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter "phonenum"
    .parameter "callfrom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, contactList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tmsecure/module/aresengine/ContactEntity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 53
    .local v0, entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    iget-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 54
    .local v2, pattern:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const/4 v3, 0x1

    .line 61
    .end local v0           #entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    .end local v2           #pattern:Ljava/lang/String;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isInBlackList(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 7
    .parameter
    .parameter "phonenum"
    .parameter "callfrom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, contactList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tmsecure/module/aresengine/ContactEntity;>;"
    const/4 v4, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 25
    .local v0, entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 26
    .local v3, pattern:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    .local v2, length:I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_3

    .line 29
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    if-nez p2, :cond_2

    iget-boolean v4, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    .line 47
    .end local v0           #entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #length:I
    .end local v3           #pattern:Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 31
    .restart local v0       #entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #length:I
    .restart local v3       #pattern:Ljava/lang/String;
    :cond_2
    iget-boolean v4, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_4

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    if-nez p2, :cond_5

    iget-boolean v4, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    goto :goto_0

    :cond_5
    iget-boolean v4, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    goto :goto_0
.end method

.method public static populateStaticData(Ljava/util/List;I[I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "numEntities"
    .parameter "entityIds"
    .parameter "phoneNums"
    .parameter "names"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;I[I[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, contactList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tmsecure/module/aresengine/ContactEntity;>;"
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 12
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 13
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    .line 14
    .local v0, entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    aget v2, p2, v1

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->id:I

    .line 15
    aget-object v2, p3, v1

    iput-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 16
    aget-object v2, p4, v1

    iput-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    .end local v0           #entity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
    :cond_0
    return-void
.end method
