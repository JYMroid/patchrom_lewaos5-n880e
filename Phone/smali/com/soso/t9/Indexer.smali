.class public Lcom/soso/t9/Indexer;
.super Ljava/lang/Object;
.source "Indexer.java"


# static fields
.field private static final MAX_INDEX_NUM:I = 0x64


# instance fields
.field private digitIndex:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/IndexTerm;",
            ">;"
        }
    .end annotation
.end field

.field private firstPYIndex:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/IndexTerm;",
            ">;"
        }
    .end annotation
.end field

.field private phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private pyIndex:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/IndexTerm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soso/t9/Indexer;->phones:Ljava/util/List;

    .line 62
    new-array v0, v1, [Ljava/util/List;

    iput-object v0, p0, Lcom/soso/t9/Indexer;->firstPYIndex:[Ljava/util/List;

    .line 65
    new-array v0, v1, [Ljava/util/List;

    iput-object v0, p0, Lcom/soso/t9/Indexer;->pyIndex:[Ljava/util/List;

    .line 68
    new-array v0, v1, [Ljava/util/List;

    iput-object v0, p0, Lcom/soso/t9/Indexer;->digitIndex:[Ljava/util/List;

    .line 56
    return-void
.end method

.method private addToIndex(Lcom/soso/t9/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "phone"
    .parameter "py"
    .parameter "firstPY"

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p1}, Lcom/soso/t9/Phone;->getTels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 274
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_1

    .line 278
    const-string v3, ";"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-lt v2, v4, :cond_2

    .line 282
    return-void

    .line 268
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, tel:Ljava/lang/String;
    iget-object v4, p0, Lcom/soso/t9/Indexer;->digitIndex:[Ljava/util/List;

    invoke-direct {p0, p1, v1, v4}, Lcom/soso/t9/Indexer;->addToIndex(Lcom/soso/t9/Phone;Ljava/lang/String;[Ljava/util/List;)V

    goto :goto_0

    .line 274
    .end local v1           #tel:Ljava/lang/String;
    :cond_1
    aget-object v0, v4, v3

    .line 276
    .local v0, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/soso/t9/Indexer;->pyIndex:[Ljava/util/List;

    invoke-direct {p0, p1, v0, v6}, Lcom/soso/t9/Indexer;->addToIndex(Lcom/soso/t9/Phone;Ljava/lang/String;[Ljava/util/List;)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v0           #s:Ljava/lang/String;
    :cond_2
    aget-object v0, v3, v2

    .line 280
    .restart local v0       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/soso/t9/Indexer;->firstPYIndex:[Ljava/util/List;

    invoke-direct {p0, p1, v0, v5}, Lcom/soso/t9/Indexer;->addToIndex(Lcom/soso/t9/Phone;Ljava/lang/String;[Ljava/util/List;)V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private addToIndex(Lcom/soso/t9/Phone;Ljava/lang/String;[Ljava/util/List;)V
    .locals 6
    .parameter "phone"
    .parameter "str"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/soso/t9/Phone;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/IndexTerm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 263
    :cond_0
    return-void

    .line 245
    :cond_1
    const/4 v2, 0x0

    .line 246
    .local v2, temp:I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 247
    .local v1, positions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 249
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v4, -0x30

    .line 250
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x30

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_2
    new-instance v3, Lcom/soso/t9/IndexTerm;

    invoke-direct {v3}, Lcom/soso/t9/IndexTerm;-><init>()V

    .line 255
    .local v3, term:Lcom/soso/t9/IndexTerm;
    iput-object p1, v3, Lcom/soso/t9/IndexTerm;->phone:Lcom/soso/t9/Phone;

    .line 257
    iput-object p2, v3, Lcom/soso/t9/IndexTerm;->phoneNumber:Ljava/lang/String;

    .line 258
    aget-object v4, p3, v2

    if-nez v4, :cond_3

    .line 259
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, p3, v2

    .line 260
    :cond_3
    aget-object v4, p3, v2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 287
    .local v3, start:J
    new-instance v2, Lcom/soso/t9/Indexer;

    invoke-direct {v2}, Lcom/soso/t9/Indexer;-><init>()V

    .line 288
    .local v2, indexer:Lcom/soso/t9/Indexer;
    const-string v6, "data/pub_tel.index"

    invoke-virtual {v2, v6}, Lcom/soso/t9/Indexer;->index(Ljava/lang/String;)Z

    .line 289
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->println(J)V

    .line 290
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, v2, Lcom/soso/t9/Indexer;->phones:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(I)V

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, index:I
    iget-object v7, v2, Lcom/soso/t9/Indexer;->pyIndex:[Ljava/util/List;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_0

    .line 298
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "firstPYIndex"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    .line 300
    iget-object v7, v2, Lcom/soso/t9/Indexer;->firstPYIndex:[Ljava/util/List;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_2

    .line 306
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "digit"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x0

    .line 308
    iget-object v6, v2, Lcom/soso/t9/Indexer;->digitIndex:[Ljava/util/List;

    array-length v7, v6

    :goto_2
    if-lt v5, v7, :cond_4

    .line 315
    return-void

    .line 292
    :cond_0
    aget-object v0, v7, v6

    .line 294
    .local v0, entry:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    if-eqz v0, :cond_1

    .line 295
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 292
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 300
    .end local v0           #entry:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    :cond_2
    aget-object v0, v7, v6

    .line 302
    .restart local v0       #entry:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    if-eqz v0, :cond_3

    .line 303
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 308
    .end local v0           #entry:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    :cond_4
    aget-object v0, v6, v5

    .line 310
    .restart local v0       #entry:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/IndexTerm;>;"
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getDocList(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .parameter "key"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/soso/t9/IndexTerm;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 197
    const/4 v1, -0x1

    .line 200
    .local v1, index:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    if-ltz v1, :cond_0

    const/16 v3, 0x63

    if-le v1, v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object v2

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String to int error, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 211
    iget-object v2, p0, Lcom/soso/t9/Indexer;->firstPYIndex:[Ljava/util/List;

    aget-object v2, v2, v1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 213
    iget-object v2, p0, Lcom/soso/t9/Indexer;->pyIndex:[Ljava/util/List;

    aget-object v2, v2, v1

    goto :goto_0

    .line 214
    :cond_3
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 215
    iget-object v2, p0, Lcom/soso/t9/Indexer;->digitIndex:[Ljava/util/List;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public index(Ljava/io/InputStream;)Z
    .locals 14
    .parameter "istream"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 97
    .local v4, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, phone:Lcom/soso/t9/Phone;
    const/4 v8, 0x0

    .line 99
    .local v8, strs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 102
    .local v3, index:I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    const-string v12, "UTF8"

    invoke-direct {v11, p1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v6, v5

    .line 104
    .end local v5           #phone:Lcom/soso/t9/Phone;
    .local v6, phone:Lcom/soso/t9/Phone;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    if-nez v4, :cond_2

    .line 128
    if-eqz v1, :cond_5

    .line 132
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v6

    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    move v9, v10

    .line 140
    :goto_2
    return v9

    .line 106
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #phone:Lcom/soso/t9/Phone;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #phone:Lcom/soso/t9/Phone;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 107
    :try_start_3
    const-string v11, "\t"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 108
    array-length v11, v8

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 110
    new-instance v5, Lcom/soso/t9/Phone;

    invoke-direct {v5}, Lcom/soso/t9/Phone;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 111
    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    :try_start_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/soso/t9/Phone;->setId(Ljava/lang/String;)V

    .line 112
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v5, v11}, Lcom/soso/t9/Phone;->setName(Ljava/lang/String;)V

    .line 113
    const/4 v11, 0x1

    aget-object v11, v8, v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    move v11, v9

    :goto_3
    if-lt v11, v13, :cond_3

    .line 118
    const/4 v11, 0x3

    aget-object v11, v8, v11

    const/4 v12, 0x2

    aget-object v12, v8, v12

    invoke-direct {p0, v5, v11, v12}, Lcom/soso/t9/Indexer;->addToIndex(Lcom/soso/t9/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v11, p0, Lcom/soso/t9/Indexer;->phones:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    .end local v5           #phone:Lcom/soso/t9/Phone;
    .restart local v6       #phone:Lcom/soso/t9/Phone;
    goto :goto_0

    .line 113
    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    :cond_3
    aget-object v7, v12, v11

    .line 115
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/soso/t9/Phone;->addTel(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 113
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 122
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v7           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    if-eqz v0, :cond_1

    .line 132
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v2

    .line 135
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Stream close failed."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 128
    :goto_5
    if-eqz v0, :cond_4

    .line 132
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 139
    :cond_4
    throw v10

    .line 133
    :catch_2
    move-exception v2

    .line 135
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Stream close failed."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 133
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #phone:Lcom/soso/t9/Phone;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #phone:Lcom/soso/t9/Phone;
    :catch_3
    move-exception v2

    .line 135
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Stream close failed."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    move-object v0, v1

    .line 136
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 127
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #phone:Lcom/soso/t9/Phone;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #phone:Lcom/soso/t9/Phone;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 122
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #phone:Lcom/soso/t9/Phone;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #phone:Lcom/soso/t9/Phone;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #phone:Lcom/soso/t9/Phone;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #phone:Lcom/soso/t9/Phone;
    :cond_5
    move-object v5, v6

    .end local v6           #phone:Lcom/soso/t9/Phone;
    .restart local v5       #phone:Lcom/soso/t9/Phone;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public index(Ljava/lang/String;)Z
    .locals 4
    .parameter "filepath"

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/soso/t9/Indexer;->index(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File is not found , "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadIndex(Ljava/lang/String;)Z
    .locals 1
    .parameter "indexfile"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/soso/t9/Indexer;->index(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveToFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "indexfile"

    .prologue
    const/4 v4, 0x0

    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 154
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v5, p0, Lcom/soso/t9/Indexer;->phones:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 164
    if-eqz v1, :cond_3

    .line 168
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 176
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4

    .line 154
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soso/t9/Phone;

    .line 155
    .local v3, phone:Lcom/soso/t9/Phone;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/soso/t9/Phone;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v3}, Lcom/soso/t9/Phone;->getTels()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/soso/t9/Util;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 158
    .end local v3           #phone:Lcom/soso/t9/Phone;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 160
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    if-eqz v0, :cond_0

    .line 168
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v2

    .line 171
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " close failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 163
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 164
    :goto_4
    if-eqz v0, :cond_2

    .line 168
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 175
    :cond_2
    throw v5

    .line 169
    :catch_2
    move-exception v2

    .line 171
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " close failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 169
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    .line 171
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " close failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 172
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_2

    .line 163
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 158
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :cond_3
    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_1
.end method
