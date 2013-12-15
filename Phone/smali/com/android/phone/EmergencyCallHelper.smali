.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# static fields
.field private static final DBG:Z = false

.field private static final DISCONNECT:I = 0x3

.field public static final MAX_NUM_RETRIES:I = 0x6

.field private static final RETRY_TIMEOUT:I = 0x4

.field private static final SERVICE_STATE_CHANGED:I = 0x2

.field private static final START_SEQUENCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmergencyCallHelper"

.field public static final TIME_BETWEEN_RETRIES:J = 0x1388L

.field public static final WAKE_LOCK_TIMEOUT:J = 0x493e0L


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 1
    .parameter "callController"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    .line 80
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 81
    return-void
.end method

.method private cancelRetryTimer()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 505
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 480
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 481
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForDisconnect()V

    .line 482
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 485
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 496
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 541
    const-string v0, "EmergencyCallHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 251
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 252
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 256
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    .line 275
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_0
.end method

.method private onRetryTimeout()V
    .locals 3

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 282
    .local v0, phoneState:Lcom/android/internal/telephony/Phone$State;
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 295
    .local v1, serviceState:I
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 329
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 309
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 311
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 328
    :goto_1
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 323
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 199
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 211
    .local v1, state:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 214
    .local v0, okToCall:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 222
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 224
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 228
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 241
    :cond_1
    return-void

    .line 211
    .end local v0           #okToCall:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeEmergencyCall()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForDisconnect()V

    .line 389
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v6

    .line 400
    .local v6, callStatus:I
    packed-switch v6, :pswitch_data_0

    .line 409
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v7, 0x0

    .line 414
    .local v7, success:Z
    :goto_0
    if-eqz v7, :cond_0

    .line 428
    :goto_1
    return-void

    .line 402
    .end local v7           #success:Z
    :pswitch_0
    const/4 v7, 0x1

    .line 403
    .restart local v7       #success:Z
    goto :goto_0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private powerOnRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForServiceStateChanged()V

    .line 348
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private registerForDisconnect()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 528
    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 440
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 441
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 445
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 449
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    goto :goto_0
.end method

.method private startRetryTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 499
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 500
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/EmergencyCallHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    return-void
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 156
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 160
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 161
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 174
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 182
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 186
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 189
    return-void
.end method

.method private unregisterForDisconnect()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 532
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 533
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 520
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 521
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
