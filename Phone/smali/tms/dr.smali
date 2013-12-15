.class public final Ltms/dr;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static final d:I = 0x2

.field private static final e:I = 0x1

.field private static final f:I = 0x0

.field private static final g:J = 0x240c8400L

.field private static final h:I = 0x0

.field private static final i:Ljava/lang/String; = "[YEAR]"

.field private static final j:Ljava/lang/String; = "[MONTH]"

.field private static final k:Ljava/lang/String; = "TrafficCorrectionManagerImpl"


# instance fields
.field a:Ltms/ds;

.field b:Landroid/content/Context;

.field c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ltms/ds;->b(I)Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v2, "|"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, v0, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v0}, Ltms/ds;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v5

    new-instance v0, LQQPIM/STSmsInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-virtual {p0, v4, v12}, Ltms/dr;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-virtual {p0, v5, v8}, Ltms/dr;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2710

    const-string v9, ""

    move v10, v8

    move v11, v8

    invoke-direct/range {v0 .. v11}, LQQPIM/STSmsInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p0, Ltms/dr;->c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getTrafficTemplate(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v12, :cond_2

    if-nez v0, :cond_5

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STRetInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STTrafficTemplate;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LQQPIM/STTrafficTemplate;->getMatchRules()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LQQPIM/STTrafficTemplate;->getMatchRules()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v1}, Ltms/ds;->b()V

    iget-object v1, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v1, v0}, Ltms/ds;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltms/ds;->f(J)V

    :goto_1
    return v8

    :cond_4
    const/16 v8, -0x65

    goto :goto_1

    :cond_5
    const/16 v8, -0x66

    goto :goto_1
.end method

.method private a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/tccdb/SmsInfo;

    iget-object v3, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/tccdb/SmsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v4, p0, Ltms/dr;->b:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Lcom/tencent/tccdb/SmsParser;->getWrongSmsType(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "TrafficCorrectionManagerImpl"

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget-object v0, v0, Lcom/tencent/tccdb/Ret;->sms:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x67

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v0}, Ltms/ds;->j()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x240c8400

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    invoke-direct {p0, p2}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    move-result v0

    const-string v3, "TrafficCorrectionManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMatchRule 1 result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_1
    :goto_1
    iget-object v3, p0, Ltms/dr;->a:Ltms/ds;

    sget-object v4, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_USE:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v4}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ltms/ds;->a(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-direct {p0, p1, v3, p2, v1}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_2

    iget-object v4, p0, Ltms/dr;->a:Ltms/ds;

    sget-object v5, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v5}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ltms/ds;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-direct {p0, p1, v4, p2, v2}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v3

    :cond_2
    if-nez v3, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0, p2}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    move-result v0

    const-string v3, "TrafficCorrectionManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMatchRule 2 result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    move v3, v0

    move v0, v1

    :goto_4
    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    new-instance v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltms/ds;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)V

    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/ds;->f(J)V

    invoke-direct {p0}, Ltms/dr;->b()I

    move-result v0

    return v0
.end method

.method private a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tccdb/MatchRule;",
            ">;",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            "Z)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v4, Lcom/tencent/tccdb/SmsInfo;

    iget-object v0, p3, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/tencent/tccdb/SmsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v0, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MatchRule;

    iget-object v7, p0, Ltms/dr;->b:Landroid/content/Context;

    invoke-static {v7, v4, v0, v5}, Lcom/tencent/tccdb/SmsParser;->getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget v0, v0, Lcom/tencent/tccdb/Ret;->number:I

    add-int/2addr v0, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    const-string v0, "TrafficCorrectionManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    iput v1, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    iput v8, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    :cond_2
    :goto_1
    return v2

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v0, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MatchRule;

    iget-object v7, p0, Ltms/dr;->b:Landroid/content/Context;

    invoke-static {v7, v4, v0, v5}, Lcom/tencent/tccdb/SmsParser;->getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget v0, v0, Lcom/tencent/tccdb/Ret;->number:I

    add-int/2addr v0, v1

    move v1, v0

    move v0, v3

    goto :goto_2

    :cond_4
    move v2, v0

    :cond_5
    const-string v0, "TrafficCorrectionManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Left "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iput v8, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    iput v1, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    goto :goto_1
.end method

.method private b()I
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v0}, Ltms/ds;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, -0x39

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    new-instance v4, LQQPIM/STQuery;

    invoke-direct {v4, v2, v3, v0, v5}, LQQPIM/STQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Ltms/dr;->c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v4, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getOperatorDataSyncInfo(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-eq v0, v5, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryResult;

    invoke-virtual {v0}, LQQPIM/STQueryResult;->getQueryinfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v2}, Ltms/ds;->c()V

    iget-object v2, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v2, v0}, Ltms/ds;->b(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltms/ds;->e(J)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Ltms/dr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x6

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, -0x6

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    iput-object p2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iput-object p3, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ltms/dr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, -0x6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ltms/ds;->b(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/16 v0, -0x68

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "[MONTH]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "[YEAR]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const-string v6, "[MONTH]"

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "[YEAR]"

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v5, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    invoke-direct {v5, v4, v0}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .locals 1

    iget-object v0, p0, Ltms/dr;->a:Ltms/ds;

    invoke-virtual {v0}, Ltms/ds;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-object p1

    :sswitch_0
    const-string p1, "\u5317\u4eac"

    goto :goto_0

    :sswitch_1
    const-string p1, "\u5e7f\u4e1c"

    goto :goto_0

    :sswitch_2
    const-string p1, "\u4e0a\u6d77"

    goto :goto_0

    :sswitch_3
    const-string p1, "\u5929\u6d25"

    goto :goto_0

    :sswitch_4
    const-string p1, "\u91cd\u5e86"

    goto :goto_0

    :sswitch_5
    const-string p1, "\u8fbd\u5b81"

    goto :goto_0

    :sswitch_6
    const-string p1, "\u6c5f\u82cf"

    goto :goto_0

    :sswitch_7
    const-string p1, "\u6e56\u5317"

    goto :goto_0

    :sswitch_8
    const-string p1, "\u56db\u5ddd"

    goto :goto_0

    :sswitch_9
    const-string p1, "\u9655\u897f"

    goto :goto_0

    :sswitch_a
    const-string p1, "\u6cb3\u5317"

    goto :goto_0

    :sswitch_b
    const-string p1, "\u5c71\u897f"

    goto :goto_0

    :sswitch_c
    const-string p1, "\u6cb3\u5357"

    goto :goto_0

    :sswitch_d
    const-string p1, "\u5409\u6797"

    goto :goto_0

    :sswitch_e
    const-string p1, "\u9ed1\u9f99\u6c5f"

    goto :goto_0

    :sswitch_f
    const-string p1, "\u5185\u8499\u53e4"

    goto :goto_0

    :sswitch_10
    const-string p1, "\u5c71\u4e1c"

    goto :goto_0

    :sswitch_11
    const-string p1, "\u5b89\u5fbd"

    goto :goto_0

    :sswitch_12
    const-string p1, "\u6d59\u6c5f"

    goto :goto_0

    :sswitch_13
    const-string p1, "\u798f\u5efa"

    goto :goto_0

    :sswitch_14
    const-string p1, "\u6e56\u5357"

    goto :goto_0

    :sswitch_15
    const-string p1, "\u5e7f\u897f"

    goto :goto_0

    :sswitch_16
    const-string p1, "\u6c5f\u897f"

    goto :goto_0

    :sswitch_17
    const-string p1, "\u8d35\u5dde"

    goto :goto_0

    :sswitch_18
    const-string p1, "\u4e91\u5357"

    goto :goto_0

    :sswitch_19
    const-string p1, "\u897f\u85cf"

    goto :goto_0

    :sswitch_1a
    const-string p1, "\u6d77\u5357"

    goto :goto_0

    :sswitch_1b
    const-string p1, "\u7518\u8083"

    goto :goto_0

    :sswitch_1c
    const-string p1, "\u5b81\u590f"

    goto :goto_0

    :sswitch_1d
    const-string p1, "\u9752\u6d77"

    goto :goto_0

    :sswitch_1e
    const-string p1, "\u65b0\u7586"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_1f
    const-string p1, "QUAN_QIU_TONG"

    goto :goto_0

    :sswitch_20
    const-string p1, "SHEN_ZHOU_XING"

    goto :goto_0

    :sswitch_21
    const-string p1, "DONG_GAN"

    goto :goto_0

    :sswitch_22
    const-string p1, "UNICOM_2G"

    goto :goto_0

    :sswitch_23
    const-string p1, "UNICOM_3G"

    goto :goto_0

    :sswitch_24
    const-string p1, "CHINA_TELECOM"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x137 -> :sswitch_a
        0x15f -> :sswitch_b
        0x173 -> :sswitch_c
        0x1af -> :sswitch_d
        0x1c3 -> :sswitch_e
        0x1d7 -> :sswitch_f
        0x213 -> :sswitch_10
        0x227 -> :sswitch_11
        0x23b -> :sswitch_12
        0x24f -> :sswitch_13
        0x2db -> :sswitch_14
        0x303 -> :sswitch_15
        0x317 -> :sswitch_16
        0x353 -> :sswitch_17
        0x367 -> :sswitch_18
        0x37b -> :sswitch_19
        0x382 -> :sswitch_1a
        0x3a3 -> :sswitch_1b
        0x3b7 -> :sswitch_1c
        0x3cb -> :sswitch_1d
        0x3df -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2710 -> :sswitch_1f
        0x4e20 -> :sswitch_21
        0x7530 -> :sswitch_20
        0xc350 -> :sswitch_22
        0xea60 -> :sswitch_24
        0x11170 -> :sswitch_23
    .end sparse-switch
.end method

.method public getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Ltms/dr;->b:Landroid/content/Context;

    new-instance v0, Ltms/ds;

    invoke-direct {v0}, Ltms/ds;-><init>()V

    iput-object v0, p0, Ltms/dr;->a:Ltms/ds;

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iput-object v0, p0, Ltms/dr;->c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    return-void
.end method
