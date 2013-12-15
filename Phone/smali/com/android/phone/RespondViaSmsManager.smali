.class public Lcom/android/phone/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RespondViaSmsManager$Settings;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_SENDTO_NO_CONFIRMATION:Ljava/lang/String; = "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEY_CANNED_RESPONSE_PREF_1:Ljava/lang/String; = "canned_response_pref_1"

.field private static final KEY_CANNED_RESPONSE_PREF_2:Ljava/lang/String; = "canned_response_pref_2"

.field private static final KEY_CANNED_RESPONSE_PREF_3:Ljava/lang/String; = "canned_response_pref_3"

.field private static final KEY_CANNED_RESPONSE_PREF_4:Ljava/lang/String; = "canned_response_pref_4"

.field private static final NUM_CANNED_RESPONSES:I = 0x4

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "respond_via_sms_prefs"

.field private static final TAG:Ljava/lang/String; = "RespondViaSmsManager"

.field private static final VDBG:Z


# instance fields
.field private mCannedResponses:[Ljava/lang/String;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPopup:Landroid/app/Dialog;

.field private mShowPopupTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RespondViaSmsManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/phone/RespondViaSmsManager;->mShowPopupTime:J

    return-wide v0
.end method

.method public static allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z
    .locals 7
    .parameter "context"
    .parameter "ringingCall"

    .prologue
    const/4 v3, 0x0

    .line 511
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSmsForCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 514
    :cond_0
    if-nez p1, :cond_2

    .line 515
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null ringingCall!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    :goto_0
    return v3

    .line 518
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-nez v4, :cond_3

    .line 523
    const-string v4, "RespondViaSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowRespondViaSmsForCall: ringingCall not ringing! state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 528
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_4

    .line 532
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null Connection!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, number:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- number: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 539
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 540
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: no incoming number!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 549
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: incoming \'number\' is a SIP address."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 555
    .local v2, presentation:I
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- presentation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 556
    :cond_8
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v4, :cond_9

    .line 560
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: PRESENTATION_RESTRICTED."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 577
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private static getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 367
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 369
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lewa.PIM.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 371
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :goto_0
    return-object v0

    .line 373
    :cond_0
    const-string v2, "exit_on_sent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v2, "showUI"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchSmsCompose(Ljava/lang/String;)V
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 352
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 357
    return-void
.end method

.method private loadCannedResponses()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 469
    sget-boolean v3, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "loadCannedResponses()..."

    invoke-static {v3}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v4, "respond_via_sms_prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 474
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 476
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 481
    .local v2, responses:[Ljava/lang/String;
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f070395

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 483
    const/4 v3, 0x1

    const-string v4, "canned_response_pref_2"

    const v5, 0x7f070396

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 485
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f070397

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 487
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f070398

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 489
    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 582
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method private sendText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    .line 338
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lewa.PIM.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v2, "RespondViaSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendText : number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v2, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 195
    :cond_0
    return-void
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 108
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v1, "respond_via_sms_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 113
    :cond_0
    return-void
.end method

.method public showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "ringingCall"

    .prologue
    .line 121
    sget-boolean v8, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "showRespondViaSmsPopup()..."

    invoke-static {v8}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    new-instance v3, Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, lv:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/phone/RespondViaSmsManager;->loadCannedResponses()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    .line 130
    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v4, v8, 0x1

    .line 131
    .local v4, numPopupItems:I
    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 132
    .local v7, popupItems:[Ljava/lang/String;
    add-int/lit8 v8, v4, -0x1

    iget-object v9, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070399

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 135
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x1090003

    const v10, 0x1020014

    invoke-direct {v0, v8, v9, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 140
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 150
    .local v2, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 153
    .local v5, p:Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    if-nez v5, :cond_2

    .line 160
    :cond_1
    const-string v8, "RespondViaSmsManager"

    const-string v9, "showRespondViaSmsPopup: null connection; bailing out..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, phoneNumber:Ljava/lang/String;
    new-instance v8, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;

    invoke-direct {v8, p0, v6}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;-><init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;

    invoke-direct {v9, p0}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;-><init>(Lcom/android/phone/RespondViaSmsManager;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 179
    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/phone/RespondViaSmsManager;->mShowPopupTime:J

    goto :goto_0
.end method
