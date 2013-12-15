.class public Lcom/android/internal/telephony/msim/CardSubscriptionManager;
.super Landroid/os/Handler;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/CardSubscriptionManager$1;,
        Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICCID_DONE:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x0

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x5

.field private static final EVENT_UPDATE_UICC_STATUS:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CardSubscriptionManager"

.field private static sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;


# instance fields
.field private mAllCardsInfoAvailable:Z

.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mRadioOn:[Z

.field private mUiccCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/UiccController;

.field private mUpdateUiccStatusContext:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "context"
    .parameter "uiccManager"
    .parameter "ci"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 152
    new-array v2, v5, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    .line 153
    iput v6, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 157
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    .line 160
    iput-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 163
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 182
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 184
    iput-object p3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 185
    iput-object p2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccController:Lcom/android/internal/telephony/UiccController;

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 189
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 190
    .local v1, slot:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v1           #slot:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccController:Lcom/android/internal/telephony/UiccController;

    invoke-virtual {v2, p0, v5, v7}, Lcom/android/internal/telephony/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    new-array v2, v5, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 201
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-direct {v3, p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_1
    new-array v2, v5, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    .line 206
    new-array v2, v5, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    .line 207
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_2

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 212
    :cond_2
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 213
    return-void

    .line 152
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private appTypetoString(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 616
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 628
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 618
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 620
    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    .line 622
    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    .line 624
    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    .line 626
    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillAppIndex(Lcom/android/internal/telephony/msim/Subscription;I)V
    .locals 3
    .parameter "cardSub"
    .parameter "appIndex"

    .prologue
    const/4 v2, -0x1

    .line 603
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 604
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 605
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    :cond_2
    iput p2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 608
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto :goto_0

    .line 609
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    :cond_4
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 611
    iput p2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccMgr"
    .parameter "ci"

    .prologue
    .line 168
    const-string v0, "CardSubscriptionManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 172
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    return-object v0
.end method

.method private declared-synchronized handleGetIccIdDone(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    .line 434
    monitor-enter p0

    if-nez p1, :cond_0

    .line 435
    :try_start_0
    const-string v4, "handleGetIccIdDone: parameter is null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 439
    :cond_0
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 440
    .local v2, data:[B
    const/4 v1, 0x0

    .line 442
    .local v1, cardIndex:I
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 443
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 446
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetIccIdDone: cardIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_2

    .line 449
    const-string v4, "handleGetIccIdDone: radio not available - EXIT"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    .end local v1           #cardIndex:I
    .end local v2           #data:[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 453
    .restart local v1       #cardIndex:I
    .restart local v2       #data:[B
    :cond_2
    const/4 v3, 0x0

    .line 455
    .local v3, iccId:Ljava/lang/String;
    :try_start_2
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 456
    const-string v4, "Exception in GET ICCID"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setCardState(Lcom/android/internal/telephony/IccCardStatus$CardState;)V

    .line 463
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 465
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 466
    const-string v4, "============================================================="

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET ICCID DONE. ICCID of card["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 468
    const-string v4, "============================================================="

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCID Read Done for card : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_3
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method private handleIccChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    .line 306
    const/4 v4, 0x0

    .line 307
    .local v4, iccIdsAvailable:Z
    const/4 v3, 0x0

    .line 309
    .local v3, cardStateChanged:Z
    const-string v7, "handleIccChanged: ENTER"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 311
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 312
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 313
    .local v1, cardIndex:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-boolean v7, v7, v8

    if-nez v7, :cond_0

    .line 314
    const-string v7, "handleIccChanged: radio not available - EXIT"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 365
    .end local v1           #cardIndex:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 317
    .restart local v1       #cardIndex:Ljava/lang/Integer;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccController:Lcom/android/internal/telephony/UiccController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/UiccController;->getUiccCards()[Lcom/android/internal/telephony/UiccCard;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v6, v7, v8

    .line 318
    .local v6, uiccCard:Lcom/android/internal/telephony/UiccCard;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    .line 320
    .local v0, card:Lcom/android/internal/telephony/UiccCard;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new uiccCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old card = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 325
    if-eqz v0, :cond_5

    .line 326
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    .line 327
    .local v5, oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setUiccCard(Lcom/android/internal/telephony/UiccCard;)V

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: oldCardState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 331
    if-eqz v6, :cond_4

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: new uiccCard.getCardState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    if-eq v7, v5, :cond_2

    .line 338
    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v7, v8, :cond_1

    .line 339
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 340
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 342
    :cond_1
    const/4 v3, 0x1

    .line 353
    .end local v5           #oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 354
    .local v2, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: cardStateChanged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " card info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v7, v8, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 359
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->updateIccIds(I)Z

    .line 364
    .end local v0           #card:Lcom/android/internal/telephony/UiccCard;
    .end local v1           #cardIndex:Ljava/lang/Integer;
    .end local v2           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v6           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_3
    :goto_2
    const-string v7, "handleIccChanged: EXIT"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    .restart local v0       #card:Lcom/android/internal/telephony/UiccCard;
    .restart local v1       #cardIndex:Ljava/lang/Integer;
    .restart local v5       #oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .restart local v6       #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_4
    const-string v7, "handleIccChanged: new uiccCard is NULL"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 346
    const/4 v3, 0x1

    goto :goto_1

    .line 348
    .end local v5           #oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_5
    if-nez v0, :cond_2

    .line 349
    const/4 v3, 0x1

    .line 350
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-direct {v9, p0, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 360
    .restart local v2       #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    :cond_6
    if-eqz v3, :cond_3

    .line 361
    const-string v7, "ICC STATUS CHANGED"

    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isIccIdAvailable(I)Z
    .locals 3
    .parameter "cardIndex"

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 372
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 740
    const-string v0, "CardSubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 744
    const-string v0, "CardSubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method private notifyAllCardsInfoAvailable()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 634
    return-void
.end method

.method private notifyCardInfoAvailable(I)V
    .locals 1
    .parameter "cardIndex"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 643
    return-void
.end method

.method private notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V
    .locals 3
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 639
    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 15
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus: cardIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " reason = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 491
    const/4 v5, 0x0

    .line 492
    .local v5, cardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 493
    .local v2, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    const/4 v10, 0x0

    .line 494
    .local v10, uiccCard:Lcom/android/internal/telephony/UiccCard;
    const/4 v4, 0x0

    .line 495
    .local v4, cardRemoved:Z
    const/4 v3, 0x0

    .line 497
    .local v3, cardInserted:Z
    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v10

    .line 501
    :cond_0
    if-eqz v10, :cond_1

    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    if-nez v12, :cond_7

    .line 502
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus(): mRadioOn["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 503
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus(): NO Card!!!!! at index : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 504
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_2

    .line 506
    const/4 v4, 0x1

    .line 508
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput-object v14, v12, v13

    .line 587
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 588
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoAvailable(I)V

    .line 590
    :cond_4
    if-eqz v4, :cond_5

    .line 591
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 596
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->isValidCards()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-boolean v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_6

    .line 597
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 598
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyAllCardsInfoAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_6
    monitor-exit p0

    return-void

    .line 510
    :cond_7
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    .line 512
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus(): cardIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cardInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 515
    const/4 v7, 0x0

    .line 516
    .local v7, numApps:I
    sget-object v12, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v5, v12, :cond_8

    .line 517
    invoke-virtual {v10}, Lcom/android/internal/telephony/UiccCard;->getNumApplications()I

    move-result v7

    .line 519
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus(): Number of apps : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 522
    sget-object v12, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v5, v12, :cond_d

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d

    if-lez v7, :cond_d

    .line 524
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus(): mCardSubData["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 529
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    if-eq v12, v13, :cond_3

    .line 533
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onUpdateUiccStatus(): New card, update card info at index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 536
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-direct {v14, v7}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    aput-object v14, v12, v13

    .line 538
    const/4 v1, 0x0

    .local v1, appIndex:I
    :goto_1
    if-ge v1, v7, :cond_c

    .line 539
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v6, v12, v1

    .line 540
    .local v6, cardSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v11

    .line 543
    .local v11, uiccCardApplication:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 547
    invoke-virtual {v11}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 548
    invoke-virtual {v11}, Lcom/android/internal/telephony/UiccCardApplication;->getAppLabel()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 549
    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 551
    invoke-virtual {v11}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v9

    .line 552
    .local v9, type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v8

    .line 554
    .local v8, subAppType:Ljava/lang/String;
    const-string v12, "UNKNOWN"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 555
    iput-object v8, v6, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 564
    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v12, v13, :cond_a

    .line 565
    const-string v12, "**********************************************************************************"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 567
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppState of the UiccCardApplication @ cardIndex:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " appIndex:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is APPSTATE_READY!!!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 569
    const-string v12, "Android expectes APPSTATE_DETECTED before selecting the subscriptions!!!!!"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 571
    const-string v12, "WARNING!!! Please configure the NV items properly to select the subscriptions from UI"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 573
    const-string v12, "*************************************************************************************"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 577
    :cond_a
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->fillAppIndex(Lcom/android/internal/telephony/msim/Subscription;I)V

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 557
    :cond_b
    const/4 v12, 0x0

    iput-object v12, v6, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 558
    const-string/jumbo v12, "onUpdateUiccStatus(): UNKNOWN APP"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 489
    .end local v1           #appIndex:I
    .end local v2           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v3           #cardInserted:Z
    .end local v4           #cardRemoved:Z
    .end local v5           #cardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .end local v6           #cardSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v7           #numApps:I
    .end local v8           #subAppType:Ljava/lang/String;
    .end local v9           #type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .end local v10           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    .end local v11           #uiccCardApplication:Lcom/android/internal/telephony/UiccCardApplication;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 579
    .restart local v1       #appIndex:I
    .restart local v2       #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .restart local v3       #cardInserted:Z
    .restart local v4       #cardRemoved:Z
    .restart local v5       #cardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .restart local v7       #numApps:I
    .restart local v10       #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 582
    .end local v1           #appIndex:I
    :cond_d
    :try_start_2
    iget-object v12, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput-object v14, v12, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private processRadioOn(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 291
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 293
    .local v0, cardIndex:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRadioOn on cardIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRadioUnavailable(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 275
    .local v0, cardIndex:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRadioUnavailable on cardIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 279
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->resetCardInfo(I)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 284
    iput-boolean v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x2

    .line 255
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 256
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccRefreshResponse;

    .line 258
    .local v1, state:Lcom/android/internal/telephony/IccRefreshResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 259
    .local v0, slot:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processSimRefresh: slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refreshResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 262
    iget v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->resetCardInfo(I)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 270
    .end local v0           #slot:Ljava/lang/Integer;
    .end local v1           #state:Lcom/android/internal/telephony/IccRefreshResponse;
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string/jumbo v2, "processSimRefresh received without input"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetCardInfo(I)V
    .locals 3
    .parameter "cardIndex"

    .prologue
    const/4 v2, 0x0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetCardInfo(): cardIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aput-object v2, v0, p1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_1
    return-void
.end method

.method private updateIccIds(I)Z
    .locals 9
    .parameter "cardIndex"

    .prologue
    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, readStarted:Z
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 398
    .local v1, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v6

    .line 400
    .local v6, uiccCard:Lcom/android/internal/telephony/UiccCard;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateIccIds: cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cardInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 405
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->isReadIccIdInProgress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, strCardIndex:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 411
    .local v4, response:Landroid/os/Message;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 412
    .local v0, cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    .line 414
    .local v2, fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v2, :cond_0

    .line 415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateIccIds: get ICCID for cardInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 417
    const/16 v7, 0x2fe2

    invoke-virtual {v2, v7, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 418
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 419
    const/4 v3, 0x1

    .line 424
    .end local v0           #cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v2           #fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    .end local v4           #response:Landroid/os/Message;
    .end local v5           #strCardIndex:Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    .line 476
    iget v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 477
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sendMessage(Landroid/os/Message;)Z

    .line 482
    return-void
.end method


# virtual methods
.method public getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 1
    .parameter "cardIndex"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 219
    :pswitch_0
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 220
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->processRadioUnavailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "EVENT_RADIO_ON"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->processRadioOn(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 229
    :pswitch_2
    const-string v0, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 234
    :pswitch_3
    const-string v0, "EVENT_READ_ICCID_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->handleGetIccIdDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 239
    :pswitch_4
    const-string v0, "EVENT_UPDATE_UICC_STATUS"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 240
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_5
    const-string v0, "EVENT_SIM_REFRESH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isAllCardsUpdated()Z
    .locals 5

    .prologue
    .line 700
    const/4 v0, 0x0

    .local v0, cardIndex:I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 701
    iget-object v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 702
    .local v1, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v2, v3, v0

    .line 708
    .local v2, cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 714
    :cond_1
    const/4 v3, 0x0

    .line 717
    .end local v1           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v2           #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :goto_1
    return v3

    .line 700
    .restart local v1       #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .restart local v2       #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    .end local v1           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v2           #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isCardAbsentOrError(I)Z
    .locals 3
    .parameter "cardIndex"

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 695
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCardInfoAvailable(I)Z
    .locals 4
    .parameter "cardIndex"

    .prologue
    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 722
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v1, v2, p1

    .line 728
    .local v1, cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 734
    :cond_1
    const/4 v2, 0x0

    .line 736
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isValidCards()Z
    .locals 4

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 684
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 687
    :cond_1
    const/4 v2, 0x0

    .line 690
    .end local v0           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 646
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    .local v0, r:Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 652
    monitor-exit v2

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "cardIndex"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 663
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 664
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 666
    monitor-exit v2

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "cardIndex"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 656
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 659
    monitor-exit v2

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
