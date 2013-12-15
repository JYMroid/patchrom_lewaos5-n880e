.class public Lcom/soso/t9/PhoneSearcher;
.super Ljava/lang/Object;
.source "PhoneSearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soso/t9/PhoneSearcher$ListSizeComparator;,
        Lcom/soso/t9/PhoneSearcher$StringSizeComparator;
    }
.end annotation


# static fields
.field private static final TEL_SERVICE_URL:Ljava/lang/String; = "http://zhushou.soso.com/tel/lewaos.php?kw="


# instance fields
.field private indexer:Lcom/soso/t9/Indexer;

.field private maxTermNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    .line 37
    new-instance v0, Lcom/soso/t9/Indexer;

    invoke-direct {v0}, Lcom/soso/t9/Indexer;-><init>()V

    iput-object v0, p0, Lcom/soso/t9/PhoneSearcher;->indexer:Lcom/soso/t9/Indexer;

    .line 33
    return-void
.end method

.method public static searchInCloud(Ljava/lang/String;)Lcom/soso/t9/Phone;
    .locals 8
    .parameter "tel"

    .prologue
    const/4 v5, 0x0

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    :cond_0
    move-object v3, v5

    .line 72
    :goto_0
    return-object v3

    .line 50
    :cond_1
    new-instance v3, Lcom/soso/t9/Phone;

    invoke-direct {v3}, Lcom/soso/t9/Phone;-><init>()V

    .line 53
    .local v3, phone:Lcom/soso/t9/Phone;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://zhushou.soso.com/tel/lewaos.php?kw="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF8"

    invoke-static {p0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, url:Ljava/lang/String;
    const-string v6, "UTF8"

    invoke-static {v4, v6}, Lcom/soso/t9/Util;->getPage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, content:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, data:Lorg/json/JSONObject;
    const-string v6, "ret"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    move-object v3, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v6, "company"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/soso/t9/Phone;->setCompany(Ljava/lang/String;)V

    .line 60
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/soso/t9/Phone;->setType(Ljava/lang/String;)V

    .line 61
    const-string v6, "sub_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/soso/t9/Phone;->setSubType(Ljava/lang/String;)V

    .line 62
    const-string v6, "count"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/soso/t9/Phone;->setCount(I)V

    .line 63
    const-string v6, "city"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/soso/t9/Phone;->setCity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 66
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #data:Lorg/json/JSONObject;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 68
    .local v2, e:Lorg/json/JSONException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "JSON parse error"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v2           #e:Lorg/json/JSONException;
    :goto_1
    move-object v3, v5

    .line 72
    goto :goto_0

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "URL encode error"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private searchOneType(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .parameter "tel"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 141
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v6, phones:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/Phone;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, docList:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, docLists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/soso/t9/IndexTerm;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_2

    .line 156
    new-instance v8, Lcom/soso/t9/PhoneSearcher$ListSizeComparator;

    invoke-direct {v8, p0, v11}, Lcom/soso/t9/PhoneSearcher$ListSizeComparator;-><init>(Lcom/soso/t9/PhoneSearcher;Lcom/soso/t9/PhoneSearcher$ListSizeComparator;)V

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 158
    .local v3, docs:Ljava/util/Set;,"Ljava/util/Set<Lcom/soso/t9/IndexTerm;>;"
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 161
    const/4 v4, 0x1

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_5

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #docList:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .restart local v0       #docList:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    new-instance v8, Lcom/soso/t9/PhoneSearcher$StringSizeComparator;

    invoke-direct {v8, p0, v11}, Lcom/soso/t9/PhoneSearcher$StringSizeComparator;-><init>(Lcom/soso/t9/PhoneSearcher;Lcom/soso/t9/PhoneSearcher$StringSizeComparator;)V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 176
    .end local v3           #docs:Ljava/util/Set;,"Ljava/util/Set<Lcom/soso/t9/IndexTerm;>;"
    :cond_1
    return-object v6

    .line 147
    :cond_2
    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/soso/t9/PhoneSearcher;->indexer:Lcom/soso/t9/Indexer;

    invoke-virtual {v8, v5, p2}, Lcom/soso/t9/Indexer;->getDocList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v5           #key:Ljava/lang/String;
    .restart local v3       #docs:Ljava/util/Set;,"Ljava/util/Set<Lcom/soso/t9/IndexTerm;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/soso/t9/IndexTerm;

    .line 159
    .local v7, term:Lcom/soso/t9/IndexTerm;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_4

    iget-object v9, v7, Lcom/soso/t9/IndexTerm;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    :cond_4
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    .end local v7           #term:Lcom/soso/t9/IndexTerm;
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 164
    .local v2, docSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/soso/t9/IndexTerm;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 167
    move-object v3, v2

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 164
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/soso/t9/IndexTerm;

    .line 165
    .restart local v7       #term:Lcom/soso/t9/IndexTerm;
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 166
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 174
    .end local v2           #docSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/soso/t9/IndexTerm;>;"
    .end local v7           #term:Lcom/soso/t9/IndexTerm;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/soso/t9/IndexTerm;

    .line 175
    .restart local v7       #term:Lcom/soso/t9/IndexTerm;
    iget-object v9, v7, Lcom/soso/t9/IndexTerm;->phone:Lcom/soso/t9/Phone;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public getMaxTermNum()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    return v0
.end method

.method public loadIndex(Ljava/lang/String;)Z
    .locals 1
    .parameter "indexfile"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/soso/t9/PhoneSearcher;->indexer:Lcom/soso/t9/Indexer;

    invoke-virtual {v0, p1}, Lcom/soso/t9/Indexer;->loadIndex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadIndexFromJAR()Z
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/soso/t9/PhoneSearcher;->indexer:Lcom/soso/t9/Indexer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com/soso/t9/pub_tel.index"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/soso/t9/Indexer;->index(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "tel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/soso/t9/PhoneSearcher;->search(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .parameter "tel"
    .parameter "orderFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 83
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 84
    .local v0, phones:Ljava/util/Set;,"Ljava/util/Set<Lcom/soso/t9/Phone;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 85
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    :goto_0
    return-object v1

    .line 86
    :cond_1
    if-ne p2, v3, :cond_4

    .line 89
    invoke-direct {p0, p1, v5}, Lcom/soso/t9/PhoneSearcher;->searchOneType(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    if-ge v1, v2, :cond_2

    .line 91
    invoke-direct {p0, p1, v3}, Lcom/soso/t9/PhoneSearcher;->searchOneType(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    if-ge v1, v2, :cond_3

    .line 94
    invoke-direct {p0, p1, v4}, Lcom/soso/t9/PhoneSearcher;->searchOneType(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/soso/t9/PhoneSearcher;->searchOneType(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    if-ge v1, v2, :cond_5

    .line 101
    invoke-direct {p0, p1, v4}, Lcom/soso/t9/PhoneSearcher;->searchOneType(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    if-ge v1, v2, :cond_3

    .line 104
    invoke-direct {p0, p1, v5}, Lcom/soso/t9/PhoneSearcher;->searchOneType(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setMaxTermNum(I)V
    .locals 0
    .parameter "maxTermNum"

    .prologue
    .line 186
    iput p1, p0, Lcom/soso/t9/PhoneSearcher;->maxTermNum:I

    .line 187
    return-void
.end method
