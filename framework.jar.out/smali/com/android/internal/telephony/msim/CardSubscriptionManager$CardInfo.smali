.class Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
.super Ljava/lang/Object;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/CardSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardInfo"
.end annotation


# instance fields
.field private mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field private mIccId:Ljava/lang/String;

.field private mReadIccIdInProgress:Z

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field final synthetic this$0:Lcom/android/internal/telephony/msim/CardSubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V
    .locals 2
    .parameter
    .parameter "uiccCard"

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->this$0:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 84
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    .line 86
    return-void

    .line 82
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0
.end method


# virtual methods
.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    return-object v0
.end method

.method public isReadIccIdInProgress()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    return v0
.end method

.method public setCardState(Lcom/android/internal/telephony/IccCardStatus$CardState;)V
    .locals 0
    .parameter "cardState"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 109
    return-void
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 0
    .parameter "iccId"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setReadIccIdInProgress(Z)V
    .locals 0
    .parameter "read"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    .line 121
    return-void
.end method

.method public setUiccCard(Lcom/android/internal/telephony/UiccCard;)V
    .locals 4
    .parameter "uiccCard"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 103
    iput-boolean v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mUiccCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReadIccIdInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
