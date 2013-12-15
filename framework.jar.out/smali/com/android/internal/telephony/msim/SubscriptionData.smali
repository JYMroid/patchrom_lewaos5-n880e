.class public Lcom/android/internal/telephony/msim/SubscriptionData;
.super Ljava/lang/Object;
.source "SubscriptionData.java"


# instance fields
.field public subscription:[Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "numSub"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v1, p1, [Lcom/android/internal/telephony/msim/Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    new-instance v2, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 3
    .parameter "from"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/msim/Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    new-instance v2, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    aput-object v2, v1, v0

    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0           #i:I
    :cond_0
    return-object p0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    array-length v0, v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscription(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;
    .locals 2
    .parameter "sub"

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, v0

    .line 88
    :goto_1
    return-object v1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 2
    .parameter "sub"

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 79
    :goto_1
    return v1

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
