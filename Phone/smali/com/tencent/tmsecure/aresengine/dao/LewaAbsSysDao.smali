.class public Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;
.super Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
.source "LewaAbsSysDao.java"


# static fields
.field private static final COUNTRY_CALL_CODES:[Ljava/lang/String; = null

.field public static final MIN_NUMBER_LENGTH_INCLUDE_COUNTRY_CODE:I = 0xb

.field private static final SPECIAL_PREFIX_IN_NUMBER:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12520026"

    aput-object v1, v0, v2

    const-string v1, "12520"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->SPECIAL_PREFIX_IN_NUMBER:[Ljava/lang/String;

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+86"

    aput-object v1, v0, v2

    const-string v1, "+852"

    aput-object v1, v0, v3

    const-string v1, "+853"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "+886"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "+27"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "+31"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+33"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "+44"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+49"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "+55"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "+61"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "+64"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "+65"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+81"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "+82"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->COUNTRY_CALL_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static final getChinaCallCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "+86"

    return-object v0
.end method

.method private getContactId(Ljava/lang/String;)J
    .locals 10
    .parameter "number"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->getWhereByNameorNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, strWhere:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-wide/16 v8, 0x0

    .line 133
    :cond_0
    :goto_0
    return-wide v8

    .line 112
    :cond_1
    const/4 v6, 0x0

    .line 113
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 115
    .local v8, id:J
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 129
    :cond_2
    if-eqz v6, :cond_0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v7

    .line 127
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v6, :cond_0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getCountryCodeLength(Ljava/lang/String;)I
    .locals 6
    .parameter "number"

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 199
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->COUNTRY_CALL_CODES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 200
    .local v1, countryCallCode:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 206
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #countryCallCode:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 199
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #countryCallCode:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #countryCallCode:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getWhereByNameorNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "name"
    .parameter "number"

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x2b

    const/4 v8, 0x0

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, strWhere:Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, strWhere1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 142
    .local v3, strWhere2:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 181
    :cond_0
    return-object v6

    .line 144
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 151
    const-string v4, "REPLACE(TRIM(data1), \'-\', \'\')"

    .line 153
    .local v4, strippedNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->stripNumberSpecialPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_2

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->getCountryCodeLength(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    :goto_1
    const-string v5, "REPLACE(TRIM(data1), \' \', \'\')"

    .line 166
    .local v5, strippedNumber1:Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_3

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->getCountryCodeLength(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    goto/16 :goto_0

    .line 159
    .end local v5           #strippedNumber1:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->getChinaCallCode()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, chinaCallCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 171
    .end local v0           #chinaCallCode:Ljava/lang/String;
    .restart local v5       #strippedNumber1:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->getChinaCallCode()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #chinaCallCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public static final stripNumberSpecialPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 187
    sget-object v0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->SPECIAL_PREFIX_IN_NUMBER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 188
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 194
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #prefix:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0

    .line 187
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #prefix:Ljava/lang/String;
    .restart local p0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;->getContactId(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllCallLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllContact()Ljava/util/List;
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
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastCallLog()Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastInBoxSms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastOutBoxSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimContact()Ljava/util/List;
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
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method
