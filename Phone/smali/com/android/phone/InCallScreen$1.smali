.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 327
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-boolean v2, v2, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    .line 328
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler: ignoring message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; we\'re destroyed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-boolean v2, v2, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_2

    .line 332
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler: handling message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while not in foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 340
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 488
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler: unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :sswitch_0
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xbs MSG_GET_YELLOW_PAGE_RESULT YellowPageInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/phone/InCallScreen$YellowPageInfo;

    if-eqz v2, :cond_0

    .line 345
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/InCallScreen$YellowPageInfo;

    .line 346
    .local v1, info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mCallerIdResultListener:Lcom/android/phone/InCallScreen$ICallerIdResultListener;

    invoke-interface {v2, v1}, Lcom/android/phone/InCallScreen$ICallerIdResultListener;->onResultData(Lcom/android/phone/InCallScreen$YellowPageInfo;)V

    goto :goto_0

    .line 353
    .end local v1           #info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 357
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v3, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 361
    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v3, v2}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 373
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 379
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/LewaInCallTouchUi;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/LewaInCallTouchUi;->refreshAudioModePopup()V

    goto/16 :goto_0

    .line 390
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 398
    :sswitch_6
    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    #calls: Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v3, v2}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_0

    .line 402
    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-char v4, v4

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 406
    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 410
    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 414
    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 423
    :sswitch_b
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 433
    :sswitch_c
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 437
    :sswitch_d
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 438
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 441
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 445
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 450
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_e
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 456
    :sswitch_f
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 462
    :sswitch_10
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 463
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 464
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 465
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$1402(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 470
    :sswitch_11
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v5, v2, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 471
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/LewaCallCard;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/LewaCallCard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/LewaCallCard;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/LewaCallCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/LewaCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 476
    :sswitch_12
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 480
    :sswitch_13
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 484
    :sswitch_14
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_1
        0x70 -> :sswitch_b
        0x72 -> :sswitch_c
        0x73 -> :sswitch_d
        0x76 -> :sswitch_e
        0x77 -> :sswitch_f
        0x78 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_13
        0x7c -> :sswitch_14
        0x4c5 -> :sswitch_0
    .end sparse-switch
.end method
