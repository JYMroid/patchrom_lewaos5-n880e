.class public Lcom/android/internal/telephony/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccController"

.field private static mInstance:Lcom/android/internal/telephony/UiccController;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mUiccCards:[Lcom/android/internal/telephony/UiccCard;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/internal/telephony/UiccCard;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    .line 52
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 189
    const-string v2, "Creating UiccController"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/UiccController;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 193
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    .local v1, index:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v1           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private declared-synchronized disposeCard(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    const-string v0, "Disposing card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->dispose()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .parameter "msg"

    .prologue
    .line 202
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 209
    .local v1, index:Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 210
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 211
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #index:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 219
    .restart local v1       #index:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 212
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 213
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 214
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 215
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1           #index:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1       #index:Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/UiccController;
    .locals 3

    .prologue
    .line 73
    const-class v1, Lcom/android/internal/telephony/UiccController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 76
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 245
    const-string v0, "RIL_UiccController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public static declared-synchronized make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccController;
    .locals 4
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 63
    const-class v2, Lcom/android/internal/telephony/UiccController;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "UiccController.make() should only be called once"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 66
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v0, v1, [Lcom/android/internal/telephony/CommandsInterface;

    .line 67
    .local v0, arrayCi:[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 68
    new-instance v1, Lcom/android/internal/telephony/UiccController;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;

    .line 69
    sget-object v1, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method public static declared-synchronized make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccController;
    .locals 3
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 55
    const-class v1, Lcom/android/internal/telephony/UiccController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 58
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/UiccController;->mInstance:Lcom/android/internal/telephony/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .parameter "ar"
    .parameter "index"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "RIL_UiccController"

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardStatus;

    .line 232
    .local v0, status:Lcom/android/internal/telephony/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 233
    const-string v1, "Creating a new card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;I)V

    aput-object v3, v1, v2

    .line 240
    :goto_1
    const-string v1, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    .end local v0           #status:Lcom/android/internal/telephony/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 236
    .restart local v0       #status:Lcom/android/internal/telephony/IccCardStatus;
    :cond_1
    :try_start_2
    const-string v1, "Update already existing card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getIccFileHandler(I)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter "family"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccController;->getIccFileHandler(II)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/IccFileHandler;
    .locals 2
    .parameter "slotId"
    .parameter "family"

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 131
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/IccRecords;
    .locals 1
    .parameter "family"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/IccRecords;
    .locals 2
    .parameter "slotId"
    .parameter "family"

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 118
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 121
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getUiccCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUiccCard(I)Lcom/android/internal/telephony/UiccCard;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 84
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1
    .parameter "family"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 2
    .parameter "slotId"
    .parameter "family"

    .prologue
    .line 102
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v1, p1

    .line 104
    .local v0, c:Lcom/android/internal/telephony/UiccCard;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    .line 108
    .end local v0           #c:Lcom/android/internal/telephony/UiccCard;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getUiccCards()[Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    .local v1, index:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 154
    :cond_0
    const-string v2, "RIL_UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 174
    const-string v2, "RIL_UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unknown Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatuson index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 165
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE on index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 167
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 170
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "EVENT_RADIO_UNAVAILABLE "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccController;->log(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccController;->disposeCard(I)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 143
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 144
    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 147
    return-void
.end method
