.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 9
    .parameter "dialog"

    .prologue
    .line 291
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "RespondViaSmsCancelListener.onCancel()..."

    #calls: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 295
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 296
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_1

    .line 299
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 328
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 321
    .local v2, now:J
    const-wide/16 v0, 0x0

    .line 322
    .local v0, delay:J
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mShowPopupTime:J
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$500(Lcom/android/phone/RespondViaSmsManager;)J

    move-result-wide v5

    const-wide/16 v7, 0xc8

    add-long/2addr v5, v7

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 323
    const-string v5, "sms popup cancel: Too soon after last action; not drawing!"

    #calls: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 324
    const-wide/16 v0, 0xc8

    .line 326
    :cond_2
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreenDelay(ZJ)V

    goto :goto_0
.end method
