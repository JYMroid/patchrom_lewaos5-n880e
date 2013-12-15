.class final Ltms/ds;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "operator_data_sync_setting"

.field private static final c:Ljava/lang/String; = "#ITEM#"

.field private static final d:Ljava/lang/String; = "#COLUMN#"

.field private static final e:Ljava/lang/String; = "MATCH_RULE"

.field private static final f:Ljava/lang/String; = "QUERY_INFO"


# instance fields
.field a:Ltms/ac;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LAST_SYNC_TASK_EXECUTE_TIME"

    iput-object v0, p0, Ltms/ds;->g:Ljava/lang/String;

    const-string v0, "LAST_SYNC_TASK_EXECUTE_RESULT"

    iput-object v0, p0, Ltms/ds;->h:Ljava/lang/String;

    const-string v0, "LAST_OPERATOR_DATA_SYNC_TIME"

    iput-object v0, p0, Ltms/ds;->i:Ljava/lang/String;

    const-string v0, "ZFT_OPERATOR_CONFIG_UPDATE_TIME"

    iput-object v0, p0, Ltms/ds;->j:Ljava/lang/String;

    const-string v0, "OPERATOR_CONFIG_UPDATE_TIME"

    iput-object v0, p0, Ltms/ds;->k:Ljava/lang/String;

    const-string v0, "OPERATOR_CONFIG_UPDATE_RESURRECTION_TIME"

    iput-object v0, p0, Ltms/ds;->l:Ljava/lang/String;

    const-string v0, "MATCH_RULE_UPDATE_TIME"

    iput-object v0, p0, Ltms/ds;->m:Ljava/lang/String;

    const-string v0, "CURRENT_IMSI"

    iput-object v0, p0, Ltms/ds;->n:Ljava/lang/String;

    const-string v0, "SAMPLE_COLLECTED"

    iput-object v0, p0, Ltms/ds;->o:Ljava/lang/String;

    const-string v0, "SIM_CARD_PROVINCE"

    iput-object v0, p0, Ltms/ds;->p:Ljava/lang/String;

    const-string v0, "SIM_CARD_CITY"

    iput-object v0, p0, Ltms/ds;->q:Ljava/lang/String;

    const-string v0, "SIM_CARD_CARRY"

    iput-object v0, p0, Ltms/ds;->r:Ljava/lang/String;

    const-string v0, "SIM_CARD_BRAND"

    iput-object v0, p0, Ltms/ds;->s:Ljava/lang/String;

    new-instance v0, Ltms/ac;

    const-string v1, "operator_data_sync_setting"

    invoke-direct {v0, v1}, Ltms/ac;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/ds;->a:Ltms/ac;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .locals 7

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    iget-object v1, p0, Ltms/ds;->a:Ltms/ac;

    const-string v2, "SIM_CARD_PROVINCE"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltms/ds;->a:Ltms/ac;

    const-string v3, "SIM_CARD_CITY"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltms/ds;->a:Ltms/ac;

    const-string v4, "SIM_CARD_CARRY"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltms/ds;->a:Ltms/ac;

    const-string v5, "SIM_CARD_BRAND"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tccdb/MatchRule;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MATCH_RULE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#ITEM#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    const-string v6, "#COLUMN#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    new-instance v6, Lcom/tencent/tccdb/MatchRule;

    aget-object v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    const/4 v10, 0x3

    aget-object v5, v5, v10

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/tencent/tccdb/MatchRule;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "LAST_SYNC_TASK_EXECUTE_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltms/ac;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method public a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ltms/ds;->a:Ltms/ac;

    const-string v2, "SIM_CARD_PROVINCE"

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Ltms/ds;->a:Ltms/ac;

    const-string v2, "SIM_CARD_CITY"

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2, v0, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Ltms/ds;->a:Ltms/ac;

    const-string v2, "SIM_CARD_CARRY"

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2, v0, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Ltms/ds;->a:Ltms/ac;

    const-string v2, "SIM_CARD_BRAND"

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2, v0, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    invoke-virtual {v0}, Ltms/ac;->a()V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "CURRENT_IMSI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/STMatchRule;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STMatchRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MATCH_RULE"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, LQQPIM/STMatchRule;->type:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, LQQPIM/STMatchRule;->unit:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, LQQPIM/STMatchRule;->type:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, LQQPIM/STMatchRule;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, LQQPIM/STMatchRule;->postfix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MATCH_RULE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, LQQPIM/STMatchRule;->type:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#ITEM#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, LQQPIM/STMatchRule;->unit:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, LQQPIM/STMatchRule;->type:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, LQQPIM/STMatchRule;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, LQQPIM/STMatchRule;->postfix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Ltms/ds;->a:Ltms/ac;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    invoke-virtual {v0}, Ltms/ac;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "LAST_SYNC_TASK_EXECUTE_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltms/ac;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public b(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#ITEM#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    const-string v6, "#COLUMN#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    new-instance v6, LQQPIM/STQueryInfo;

    aget-object v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    const/4 v9, 0x2

    aget-object v5, v5, v9

    invoke-direct {v6, v7, v8, v5}, LQQPIM/STQueryInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATCH_RULE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v2}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATCH_RULE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_USE:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v2}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    invoke-virtual {v0}, Ltms/ac;->a()V

    return-void
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "LAST_OPERATOR_DATA_SYNC_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltms/ac;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_INFO"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getNQuerytype()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getNQuerytype()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QUERY_INFO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getNQuerytype()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#ITEM#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getNQuerytype()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#COLUMN#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Ltms/ds;->a:Ltms/ac;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    invoke-virtual {v0}, Ltms/ac;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "SAMPLE_COLLECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltms/ac;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUERY_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v2}, LQQPIM/EQueryType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUERY_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LQQPIM/EQueryType;->E_QUERY_MONEY:LQQPIM/EQueryType;

    invoke-virtual {v2}, LQQPIM/EQueryType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    invoke-virtual {v0}, Ltms/ac;->a()V

    return-void
.end method

.method public c(J)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "ZFT_OPERATOR_CONFIG_UPDATE_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltms/ac;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method public d()J
    .locals 4

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "LAST_SYNC_TASK_EXECUTE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "OPERATOR_CONFIG_UPDATE_RESURRECTION_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltms/ac;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method public e(J)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "OPERATOR_CONFIG_UPDATE_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltms/ac;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "LAST_SYNC_TASK_EXECUTE_RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/ac;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 4

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "LAST_OPERATOR_DATA_SYNC_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)V
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "MATCH_RULE_UPDATE_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltms/ac;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method public g()J
    .locals 4

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "ZFT_OPERATOR_CONFIG_UPDATE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 4

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "OPERATOR_CONFIG_UPDATE_RESURRECTION_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .locals 4

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "OPERATOR_CONFIG_UPDATE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 4

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "MATCH_RULE_UPDATE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltms/ac;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "CURRENT_IMSI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 3

    iget-object v0, p0, Ltms/ds;->a:Ltms/ac;

    const-string v1, "SAMPLE_COLLECTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/ac;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
