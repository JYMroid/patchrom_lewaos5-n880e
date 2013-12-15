.class public final Lcom/android/internal/telephony/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RuimRecords$1;,
        Lcom/android/internal/telephony/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/RuimRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ESNME_DONE:I = 0x22

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_RUIMID_DONE:I = 0x20

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private mRecordsRequired:Z

.field private m_ota_commited:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/telephony/RuimRecords;->m_ota_commited:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/telephony/RuimRecords;->mRecordsRequired:Z

    .line 69
    iput-object v3, p0, Lcom/android/internal/telephony/RuimRecords;->mEFpl:[B

    .line 70
    iput-object v3, p0, Lcom/android/internal/telephony/RuimRecords;->mEFli:[B

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/telephony/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 97
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 99
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 102
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->resetRecords()V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RuimRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/RuimRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/RuimRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/RuimRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/RuimRecords;[B)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RuimRecords;->decodeImsi([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private decodeImsi([B)Ljava/lang/String;
    .locals 14
    .parameter "data"

    .prologue
    .line 215
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v7, v9, v10

    .line 216
    .local v7, mcc_data:I
    const/4 v9, 0x3

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/RuimRecords;->decodeImsiDigits(II)I

    move-result v6

    .line 217
    .local v6, mcc:I
    const/4 v9, 0x6

    aget-byte v9, p1, v9

    and-int/lit8 v3, v9, 0x7f

    .line 218
    .local v3, digits_11_12_data:I
    const/4 v9, 0x2

    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/RuimRecords;->decodeImsiDigits(II)I

    move-result v2

    .line 221
    .local v2, digits_11_12:I
    const/4 v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v9, v10

    .line 222
    .local v4, first3digits:I
    const/4 v9, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x6

    .line 223
    .local v8, second3digits:I
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v1, v9, 0xf

    .line 224
    .local v1, digit7:I
    const/16 v9, 0x9

    if-le v1, v9, :cond_0

    const/4 v1, 0x0

    .line 225
    :cond_0
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 227
    .local v5, last3digits:I
    const/4 v9, 0x3

    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/RuimRecords;->decodeImsiDigits(II)I

    move-result v4

    .line 228
    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/RuimRecords;->decodeImsiDigits(II)I

    move-result v8

    .line 229
    const/4 v9, 0x3

    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/RuimRecords;->decodeImsiDigits(II)I

    move-result v5

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private decodeImsiDigits(II)I
    .locals 4
    .parameter "digits"
    .parameter "length"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, constant:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 194
    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v0, v3, 0x1

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    add-int/2addr p1, v0

    .line 199
    const/4 v2, 0x0

    const/4 v1, 0x1

    .local v1, denominator:I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 200
    div-int v3, p1, v1

    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_1

    mul-int/lit8 v3, v1, 0xa

    sub-int/2addr p1, v3

    .line 201
    :cond_1
    mul-int/lit8 v1, v1, 0xa

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    :cond_2
    return p1
.end method

.method private fetchRuimRecords()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 717
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/RuimRecords;->mRecordsRequired:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords: Abort fetching records recordsRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " required = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RuimRecords;->mRecordsRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 774
    :goto_0
    return-void

    .line 726
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 732
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f31

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 736
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 740
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/RuimRecords$EfPlLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 744
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f3a

    new-instance v2, Lcom/android/internal/telephony/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 748
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f41

    new-instance v2, Lcom/android/internal/telephony/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 752
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f44

    new-instance v2, Lcom/android/internal/telephony/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 756
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    new-instance v2, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 760
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f28

    new-instance v2, Lcom/android/internal/telephony/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 764
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f5a

    const/4 v2, 0x4

    new-instance v3, Lcom/android/internal/telephony/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 770
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 11
    .parameter "languages"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, bestMatch:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, locales:[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v5, :cond_2

    :cond_0
    move-object v4, v6

    .line 624
    :cond_1
    :goto_0
    return-object v4

    .line 609
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_5

    .line 611
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x2

    const-string v8, "ISO-8859-1"

    invoke-direct {v4, p1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 612
    .local v4, lang:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_4

    .line 613
    aget-object v7, v5, v3

    if-eqz v7, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    aget-object v7, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 612
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 618
    :cond_4
    if-eqz v0, :cond_6

    .end local v3           #j:I
    .end local v4           #lang:Ljava/lang/String;
    :cond_5
    move-object v4, v6

    .line 624
    goto :goto_0

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Failed to parse SIM language records"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 609
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 4
    .parameter "refreshResponse"

    .prologue
    .line 826
    if-nez p1, :cond_1

    .line 827
    const-string v1, "handleRuimRefresh received without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    :cond_2
    iget v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v1, :pswitch_data_0

    .line 865
    const-string v1, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :pswitch_0
    const-string v1, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 841
    invoke-direct {p0}, Lcom/android/internal/telephony/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 844
    :pswitch_1
    const-string v1, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 846
    invoke-direct {p0}, Lcom/android/internal/telephony/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 849
    :pswitch_2
    const-string v1, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 852
    .local v0, skipRadioPowerOff:Z
    if-nez v0, :cond_0

    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x3

    .line 454
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 455
    .local v0, data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 458
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 459
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 460
    .local v1, prlId:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 462
    .end local v1           #prlId:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private setLocaleFromCsim()V
    .locals 5

    .prologue
    .line 628
    const/4 v2, 0x0

    .line 630
    .local v2, prefLang:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords;->mEFli:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 632
    if-nez v2, :cond_0

    .line 633
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords;->mEFpl:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 636
    :cond_0
    if-eqz v2, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, imsi:Ljava/lang/String;
    const/4 v0, 0x0

    .line 640
    .local v0, country:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 641
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting locale to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 645
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #imsi:Ljava/lang/String;
    :goto_0
    return-void

    .line 647
    :cond_2
    const-string v3, "No suitable CSIM selected locale"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "val"

    .prologue
    .line 902
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_0
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->resetRecords()V

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 121
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/android/internal/telephony/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 261
    :goto_0
    return-object v1

    .line 251
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 2

    .prologue
    .line 821
    const-string v0, "CDMA"

    const-string v1, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x4

    .line 471
    const/4 v7, 0x0

    .line 473
    .local v7, isRecordLoadResponse:Z
    iget-object v10, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] while being destroyed. Ignoring."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->loge(Ljava/lang/String;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    :try_start_0
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 589
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 597
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 481
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->onReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 591
    :catch_0
    move-exception v5

    .line 593
    .local v5, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v10, "CDMA"

    const-string v11, "Exception parsing RUIM record"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    if-eqz v7, :cond_0

    goto :goto_2

    .line 485
    .end local v5           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v10, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 596
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->onRecordLoaded()V

    .line 596
    :cond_3
    throw v10

    .line 490
    :sswitch_2
    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 491
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 492
    .local v8, localTemp:[Ljava/lang/String;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    .line 496
    const/4 v10, 0x0

    aget-object v10, v8, v10

    iput-object v10, p0, Lcom/android/internal/telephony/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 497
    const/4 v10, 0x3

    aget-object v10, v8, v10

    iput-object v10, p0, Lcom/android/internal/telephony/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 498
    const/4 v10, 0x4

    aget-object v10, v8, v10

    iput-object v10, p0, Lcom/android/internal/telephony/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MIN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 505
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v8           #localTemp:[Ljava/lang/String;
    :sswitch_3
    const/4 v7, 0x1

    .line 507
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 508
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v2, v0

    .line 510
    .local v2, data:[B
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    .line 514
    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 516
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iccid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :sswitch_4
    const/4 v7, 0x1

    .line 522
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 523
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v2, v0

    .line 525
    .restart local v2       #data:[B
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    .line 529
    const/4 v10, 0x0

    aget-byte v3, v2, v10

    .line 530
    .local v3, esnbytesnum:I
    if-lez v3, :cond_5

    const/16 v10, 0x8

    if-ge v3, v10, :cond_5

    .line 531
    new-array v4, v3, [B

    .line 532
    .local v4, esnmebytes:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v3, :cond_4

    sub-int v10, v3, v6

    aget-byte v10, v2, v10

    aput-byte v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 533
    :cond_4
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/IccRecords;->mEsnme:Ljava/lang/String;

    .line 536
    .end local v4           #esnmebytes:[B
    .end local v6           #i:I
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "esnbytesnum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mEsnme:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/IccRecords;->mEsnme:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 540
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v3           #esnbytesnum:I
    :sswitch_5
    const/4 v7, 0x1

    .line 541
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 542
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v2, v0

    .line 544
    .restart local v2       #data:[B
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    .line 548
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    if-ne v10, v11, :cond_6

    .line 549
    const/4 v10, 0x4

    new-array v9, v10, [B

    .line 550
    .local v9, ruimiddata:[B
    const/4 v10, 0x0

    const/4 v11, 0x4

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 551
    const/4 v10, 0x1

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 552
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 553
    const/4 v10, 0x3

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 554
    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/IccRecords;->ruimid:Ljava/lang/String;

    .line 559
    .end local v9           #ruimiddata:[B
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ruimid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/IccRecords;->ruimid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 556
    :cond_6
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/IccRecords;->ruimid:Ljava/lang/String;

    goto :goto_4

    .line 562
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 563
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_2

    .line 564
    const-string v10, "CDMA"

    const-string v11, "RuimRecords update failed"

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 572
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Event not supported: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 577
    :sswitch_8
    const-string v10, "Event EVENT_GET_SST_DONE Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :sswitch_9
    const/4 v7, 0x0

    .line 582
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 583
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    .line 584
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/IccRefreshResponse;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0xe -> :sswitch_6
        0x11 -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x1f -> :sswitch_9
        0x20 -> :sswitch_5
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 795
    const-string/jumbo v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v2, :cond_2

    move v0, v1

    .line 800
    goto :goto_0

    .line 803
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 805
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 891
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 896
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 668
    const-string/jumbo v1, "record load complete"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, operator:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords: onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 675
    if-eqz v0, :cond_0

    .line 676
    const-string v1, "gsm.sim.operator.numeric"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 680
    const-string v1, "gsm.sim.operator.iso-country"

    iget-object v2, p0, Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/RuimRecords;->setLocaleFromCsim()V

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 687
    return-void
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/android/internal/telephony/RuimRecords;->fetchRuimRecords()V

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 694
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 658
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/RuimRecords;->onAllRecordsLoaded()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 661
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->loge(Ljava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/RuimRecords;->fetchRuimRecords()V

    .line 188
    :cond_0
    return-void
.end method

.method recordsRequired()V
    .locals 1

    .prologue
    .line 701
    const-string/jumbo v0, "recordsRequired"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/RuimRecords;->mRecordsRequired:Z

    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/RuimRecords;->fetchRuimRecords()V

    .line 706
    return-void
.end method

.method protected resetRecords()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 130
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->ruimid:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 146
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 169
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string/jumbo v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 171
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 172
    const-string/jumbo v0, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RuimRecords;->loge(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setVoiceMessageWaiting(IILandroid/os/Message;)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"
    .parameter "onComplete"

    .prologue
    .line 814
    const-string v0, "CDMA"

    const-string v1, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method
