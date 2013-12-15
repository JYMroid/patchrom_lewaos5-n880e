.class public Lcom/android/phone/LewaFilter;
.super Ljava/lang/Object;
.source "LewaFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LewaFilter"

.field private static mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

.field private static sInstance:Lcom/android/phone/LewaFilter;


# instance fields
.field private mAresEngineManager:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

.field private mBlockMode:I

.field private mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    iput-object v0, p0, Lcom/android/phone/LewaFilter;->mAresEngineManager:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    .line 43
    iget-object v0, p0, Lcom/android/phone/LewaFilter;->mAresEngineManager:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    new-instance v1, Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setAresEngineFactor(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V

    .line 44
    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingCallIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getDataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    .line 45
    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getDataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaFilter;->initSettings(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/LewaFilter;
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-class v1, Lcom/android/phone/LewaFilter;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/android/phone/LewaFilter;->sInstance:Lcom/android/phone/LewaFilter;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/phone/LewaFilter;

    invoke-direct {v0, p0}, Lcom/android/phone/LewaFilter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/LewaFilter;->sInstance:Lcom/android/phone/LewaFilter;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v0, Lcom/android/phone/LewaFilter;->sInstance:Lcom/android/phone/LewaFilter;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public deleteBlackNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 198
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    sput-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 199
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;

    move-result-object v0

    sget-object v1, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->delete(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)Z

    .line 201
    return-void
.end method

.method public deleteWhiteNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 210
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    sput-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 211
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 212
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    move-result-object v0

    sget-object v1, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->delete(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)Z

    .line 213
    return-void
.end method

.method public initSettings(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/InterceptConstants;->DND_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/LewaFilter;->mBlockMode:I

    .line 65
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v7, values:Landroid/content/ContentValues;
    const-string v1, "switch"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "switchMode"

    iget v2, p0, Lcom/android/phone/LewaFilter;->mBlockMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v1, "startTime"

    const-string v2, "07:00"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "endTime"

    const-string v2, "23:00"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Landroid/provider/InterceptConstants;->DND_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 75
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 77
    iget v1, p0, Lcom/android/phone/LewaFilter;->mBlockMode:I

    invoke-virtual {p0, v1}, Lcom/android/phone/LewaFilter;->setBlockMode(I)V

    .line 78
    return-void

    .line 72
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const-string v1, "switchMode"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/LewaFilter;->mBlockMode:I

    goto :goto_0
.end method

.method public insertBlackNumber2Cache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "number"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 170
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    sput-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 171
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 172
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 173
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    .line 174
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    .line 180
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;

    move-result-object v0

    sget-object v1, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->insert(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)J

    .line 181
    return-void

    .line 175
    :cond_1
    if-ne p3, v1, :cond_2

    .line 176
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    goto :goto_0
.end method

.method public insertWhiteNumber2Cache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 204
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    sput-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 205
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    move-result-object v0

    sget-object v1, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->insert(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)J

    .line 207
    return-void
.end method

.method public isBlockCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, shouldBlock:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaFilter;->isInBlockTime(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>()V

    .line 129
    .local v0, callEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    .line 130
    iget-object v6, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->filter(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v2

    .line 131
    .local v2, result:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    if-eqz v2, :cond_1

    iget v6, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 136
    .end local v0           #callEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .end local v2           #result:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    :cond_0
    :goto_0
    return v3

    .restart local v0       #callEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .restart local v2       #result:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    :cond_1
    move v3, v5

    .line 131
    goto :goto_0

    .line 133
    .end local v0           #callEntity:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .end local v2           #result:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LewaFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBlockCall: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBlockMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "incomingNumber"
    .parameter "body"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, shouldBlock:Z
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaFilter;->isInBlockTime(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 142
    new-instance v3, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    .line 143
    .local v3, smsEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    iput-object p3, v3, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 144
    iput-object p2, v3, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 145
    iget-object v7, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v8}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->filter(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    .line 146
    .local v0, filterRet:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    iget v7, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    if-ne v7, v9, :cond_4

    .line 147
    iget-object v7, p0, Lcom/android/phone/LewaFilter;->mAresEngineManager:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v7}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v4

    .line 148
    .local v4, smschecker:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    invoke-interface {v4, v3}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v1

    .line 149
    .local v1, ret:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    if-eqz v1, :cond_3

    .line 150
    iget v7, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    const/4 v8, 0x7

    if-eq v7, v8, :cond_0

    iget v7, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    if-eq v7, v9, :cond_0

    iget v7, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    if-ne v7, v5, :cond_1

    .line 166
    .end local v0           #filterRet:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .end local v1           #ret:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    .end local v3           #smsEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .end local v4           #smschecker:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    :cond_0
    :goto_0
    return v6

    .line 154
    .restart local v0       #filterRet:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .restart local v1       #ret:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    .restart local v3       #smsEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .restart local v4       #smschecker:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    :cond_1
    iget v5, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    iget v5, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    iget v5, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    iget v5, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 159
    :cond_2
    const/4 v2, 0x1

    .end local v0           #filterRet:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .end local v1           #ret:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    .end local v3           #smsEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .end local v4           #smschecker:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    :cond_3
    :goto_1
    move v6, v2

    .line 166
    goto :goto_0

    .line 163
    .restart local v0       #filterRet:Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .restart local v3       #smsEntity:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    :cond_4
    if-eqz v0, :cond_5

    iget v7, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    if-ne v7, v5, :cond_5

    move v2, v5

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2
.end method

.method public isInBlockTime(Landroid/content/Context;)Z
    .locals 16
    .parameter "context"

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/InterceptConstants;->DND_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 83
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 84
    .local v12, mAllDay:I
    const-string v15, "07:00"

    .line 85
    .local v15, startTime:Ljava/lang/String;
    const-string v9, "23:00"

    .line 86
    .local v9, endTime:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    const-string v0, "switch"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 89
    const-string v0, "startTime"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 90
    const-string v0, "endTime"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 93
    const/4 v7, 0x0

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 96
    .local v6, calendar:Ljava/util/Calendar;
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 97
    .local v14, sTime:I
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 101
    .local v8, eTime:I
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 102
    .local v10, h:I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 104
    .local v11, m:I
    if-nez v11, :cond_3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 112
    .local v13, now:I
    :goto_0
    if-le v14, v8, :cond_1

    .line 113
    add-int/lit16 v8, v8, 0x960

    .line 114
    if-ge v13, v14, :cond_1

    .line 115
    add-int/lit16 v13, v13, 0x960

    .line 118
    :cond_1
    const/4 v0, 0x1

    if-ne v12, v0, :cond_5

    if-lt v13, v14, :cond_2

    if-le v13, v8, :cond_5

    .line 119
    :cond_2
    const/4 v0, 0x0

    .line 121
    :goto_1
    return v0

    .line 106
    .end local v13           #now:I
    :cond_3
    const/16 v0, 0xa

    if-ge v11, v0, :cond_4

    if-lez v11, :cond_4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .restart local v13       #now:I
    goto :goto_0

    .line 109
    .end local v13           #now:I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .restart local v13       #now:I
    goto :goto_0

    .line 121
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setBlockMode(I)V
    .locals 9
    .parameter "blockMode"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    iput p1, p0, Lcom/android/phone/LewaFilter;->mBlockMode:I

    .line 218
    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    .line 219
    .local v1, smsConfig:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    .line 221
    .local v0, callConfig:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    packed-switch p1, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 224
    :pswitch_0
    invoke-virtual {v1, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 225
    invoke-virtual {v1, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 226
    invoke-virtual {v1, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 227
    const/16 v2, 0x40

    invoke-virtual {v1, v2, v6}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 228
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 229
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    .line 232
    invoke-virtual {v0, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 233
    invoke-virtual {v0, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 234
    invoke-virtual {v0, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 235
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 236
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto :goto_0

    .line 242
    :pswitch_1
    invoke-virtual {v1, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 243
    invoke-virtual {v1, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 244
    invoke-virtual {v1, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 245
    const/16 v2, 0x40

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 246
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    .line 250
    invoke-virtual {v0, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 251
    invoke-virtual {v0, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 252
    invoke-virtual {v0, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 253
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 254
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto :goto_0

    .line 260
    :pswitch_2
    invoke-virtual {v1, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 261
    invoke-virtual {v1, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 262
    invoke-virtual {v1, v8, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 263
    const/16 v2, 0x40

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 264
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 265
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    .line 267
    invoke-virtual {v0, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 268
    invoke-virtual {v0, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 269
    invoke-virtual {v0, v8, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 270
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 271
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_0

    .line 277
    :pswitch_3
    invoke-virtual {v1, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 278
    invoke-virtual {v1, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 279
    invoke-virtual {v1, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 280
    const/16 v2, 0x40

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 281
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 282
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    .line 285
    invoke-virtual {v0, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 286
    invoke-virtual {v0, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 287
    invoke-virtual {v0, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 288
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 289
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_0

    .line 295
    :pswitch_4
    invoke-virtual {v1, v6, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 296
    invoke-virtual {v1, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 297
    invoke-virtual {v1, v8, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 298
    const/16 v2, 0x40

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 299
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 300
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingSmsFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    .line 303
    invoke-virtual {v0, v6, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 304
    invoke-virtual {v0, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 305
    invoke-virtual {v0, v8, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 306
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    .line 307
    iget-object v2, p0, Lcom/android/phone/LewaFilter;->mIncomingCallFilter:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public updateBlackNumberInCache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "number"
    .parameter "newNumberType"

    .prologue
    const/4 v1, 0x1

    .line 184
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    sput-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    .line 185
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 186
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 187
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    .line 188
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    .line 194
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;

    move-result-object v0

    sget-object v1, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->update(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)Z

    .line 195
    return-void

    .line 189
    :cond_1
    if-ne p3, v1, :cond_2

    .line 190
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/phone/LewaFilter;->mEntity:Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iput-boolean v1, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    goto :goto_0
.end method
