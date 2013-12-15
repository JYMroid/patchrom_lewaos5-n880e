.class public Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetGlobalNetworkHandler"
.end annotation


# static fields
.field protected static final EVENT_GET_PREFERRED_NETWORK:I = 0x0

.field protected static final EVENT_SET_PREFERRED_NETWORK:I = 0x1

.field protected static final EVENT_START_SET_GLOBAL_NETWORK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SetGlobalNetwork"


# instance fields
.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mLp:Landroid/os/Looper;

.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;

.field private tryGetNetwork:I

.field private trySetNetwork:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "ci"
    .parameter "lp"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->this$0:Lcom/android/internal/telephony/UiccCard;

    .line 189
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 183
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 184
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mLp:Landroid/os/Looper;

    .line 185
    iput v0, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->tryGetNetwork:I

    .line 186
    iput v0, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->trySetNetwork:I

    .line 190
    const-string v0, "SetGlobalNetwork"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mLp:Landroid/os/Looper;

    .line 194
    return-void
.end method

.method private quit()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "SetGlobalNetwork"

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mLp:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "SetGlobalNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetGlobalNetworkHandler, received msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 219
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 220
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v5

    .line 222
    .local v1, currentNetworkType:I
    if-ne v1, v6, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->quit()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 229
    .end local v1           #currentNetworkType:I
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->tryGetNetwork:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->tryGetNetwork:I

    if-gez v2, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->quit()V

    .line 233
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 244
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->quit()V

    goto :goto_0

    .line 247
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->trySetNetwork:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->trySetNetwork:I

    if-gez v2, :cond_4

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->quit()V

    goto :goto_0

    .line 251
    :cond_4
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    goto :goto_1

    .line 252
    :catch_1
    move-exception v2

    goto :goto_2

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccCard$SetGlobalNetworkHandler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method
