.class public Lcom/android/phone/CallCard;
.super Landroid/widget/LinearLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$2;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field private static final MESSAGE_DELAY:I = 0x1f4

.field private static final MESSAGE_SHOW_UNKNOWN_PHOTO:I = 0x65

.field private static final TOKEN_DO_NOTHING:I = 0x1

.field private static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoDimEffect:Landroid/view/View;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mProviderAddress:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/ViewGroup;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mSecondaryCallInfo:Landroid/view/ViewStub;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private mSecondaryInfoContainer:Landroid/view/ViewGroup;

.field private mTextColorCallTypeSip:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 185
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 188
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1724
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1725
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1726
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1728
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1729
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1731
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 449
    if-nez p2, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 459
    .local v18, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 512
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 518
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 629
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 634
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 464
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_1

    .line 472
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 478
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 485
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 492
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 501
    :pswitch_5
    const-string v2, "CallCard"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 524
    :cond_2
    const/4 v7, 0x0

    .line 525
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 526
    .local v16, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 527
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 535
    :goto_3
    if-nez v7, :cond_6

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 542
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 528
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 530
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 532
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 549
    .local v10, presentation:I
    const/16 v17, 0x1

    .line 550
    .local v17, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 551
    .local v14, o:Ljava/lang/Object;
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_a

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 560
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 561
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 562
    .local v15, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 563
    .local v20, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v19

    .line 564
    .local v19, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 565
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_b

    move-object v2, v14

    .line 566
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 571
    :cond_7
    :goto_5
    if-eqz v3, :cond_9

    .line 572
    if-eqz v20, :cond_8

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 575
    const/16 v17, 0x1

    .line 577
    :cond_8
    if-eqz v19, :cond_9

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 580
    const/16 v17, 0x1

    .line 585
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v19           #updatedCnapName:Ljava/lang/String;
    .end local v20           #updatedNumber:Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_d

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 589
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_c

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 555
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_4

    .line 567
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v19       #updatedCnapName:Ljava/lang/String;
    .restart local v20       #updatedNumber:Ljava/lang/String;
    :cond_b
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_7

    move-object v3, v14

    .line 568
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_5

    .line 589
    .end local v15           #obj:Ljava/lang/Object;
    .end local v19           #updatedCnapName:Ljava/lang/String;
    .end local v20           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    .line 596
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_e

    move-object v9, v14

    .line 597
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 599
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 600
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 601
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 606
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 607
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_f

    .line 608
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 613
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 615
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #o:Ljava/lang/Object;
    :cond_f
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "cm"
    .parameter "call"

    .prologue
    const/4 v9, 0x2

    const v11, 0x7f020109

    const/16 v10, 0x8

    .line 943
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 944
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1056
    :goto_0
    return-void

    .line 948
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 949
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1053
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 957
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 959
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 961
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070075

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v8, 0x7f020105

    invoke-static {v7, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 987
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v7}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v7, p2, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 970
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-boolean v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_3

    .line 981
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v7, v8}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_1

    .line 983
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 994
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 995
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 997
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 998
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 1003
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070252

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1046
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v7, v10}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1009
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1010
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v7, v0, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1016
    .restart local v4       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1018
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1019
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1020
    .local v2, forceGenericPhoto:Z
    if-eqz v3, :cond_5

    iget v7, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v8, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v7, v8, :cond_5

    .line 1022
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1024
    const/4 v2, 0x1

    .line 1026
    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    if-nez v2, :cond_6

    iget-boolean v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_6

    .line 1035
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_2

    .line 1037
    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 1042
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #forceGenericPhoto:Z
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #name:Ljava/lang/String;
    :cond_7
    const-string v7, "CallCard"

    const-string v8, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    .line 949
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 1087
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1090
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1094
    const v2, 0x7f07024f

    .line 1167
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1097
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1103
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1163
    const v2, 0x7f07024f

    .restart local v2       #resID:I
    goto :goto_0

    .line 1105
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f070055

    .line 1106
    .restart local v2       #resID:I
    goto :goto_0

    .line 1109
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f070056

    .line 1110
    .restart local v2       #resID:I
    goto :goto_0

    .line 1113
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f070057

    .line 1114
    .restart local v2       #resID:I
    goto :goto_0

    .line 1117
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f070058

    .line 1118
    .restart local v2       #resID:I
    goto :goto_0

    .line 1121
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f070059

    .line 1122
    .restart local v2       #resID:I
    goto :goto_0

    .line 1125
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f07005a

    .line 1126
    .restart local v2       #resID:I
    goto :goto_0

    .line 1129
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f07005c

    .line 1130
    .restart local v2       #resID:I
    goto :goto_0

    .line 1133
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f07005b

    .line 1134
    .restart local v2       #resID:I
    goto :goto_0

    .line 1138
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f07005d

    .line 1139
    .restart local v2       #resID:I
    goto :goto_0

    .line 1142
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f07005e

    .line 1143
    .restart local v2       #resID:I
    goto :goto_0

    .line 1146
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f07005f

    .line 1147
    .restart local v2       #resID:I
    goto :goto_0

    .line 1150
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f070060

    .line 1151
    .restart local v2       #resID:I
    goto :goto_0

    .line 1154
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f070061

    .line 1155
    .restart local v2       #resID:I
    goto :goto_0

    .line 1159
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f070074

    .line 1160
    .restart local v2       #resID:I
    goto :goto_0

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 1610
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1612
    .local v1, rawNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1613
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, formattedNumber:Ljava/lang/String;
    :goto_0
    const v3, 0x7f070253

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1618
    .local v2, titleFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1615
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v2           #titleFormat:Ljava/lang/String;
    :cond_0
    const v3, 0x7f070050

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1739
    const-string v0, "CallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1569
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1570
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1575
    :goto_0
    const/4 v0, 0x1

    .line 1577
    :goto_1
    return v0

    .line 1573
    :cond_0
    const v0, 0x7f020109

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1577
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1582
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1583
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 1586
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1587
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1591
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1592
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1594
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1596
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1597
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1598
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1603
    :goto_0
    return-void

    .line 1600
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1601
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1062
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1065
    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1068
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1069
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1074
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const v2, 0x7f07024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 424
    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 425
    return-void
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 316
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 326
    .local v2, ringing:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/LewaInCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 327
    .local v1, reservedVerticalSpace:I
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 329
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 332
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    return-void

    .line 316
    .end local v0           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #reservedVerticalSpace:I
    .end local v2           #ringing:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    .line 745
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 746
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 747
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 748
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 750
    .local v6, phoneType:I
    const/4 v1, 0x0

    .line 751
    .local v1, callStateLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 753
    .local v0, bluetoothIconId:I
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 799
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 806
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_8

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 810
    const v9, 0x7f070236

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 818
    invoke-direct {p0, v2, v5}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 821
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v9, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 832
    .local v3, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_9

    :cond_3
    const/4 v7, 0x1

    .line 835
    .local v7, skipAnimation:Z
    :goto_2
    const/4 v4, 0x0

    .line 836
    .local v4, layoutTransition:Landroid/animation/LayoutTransition;
    if-eqz v7, :cond_4

    .line 838
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 839
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 842
    :cond_4
    iget-boolean v9, v3, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v9, :cond_a

    .line 843
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 844
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    const v10, 0x7f0702d3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->requestRemoveProviderInfoWithDelay()V

    .line 853
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 854
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    if-eqz v0, :cond_b

    .line 859
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 860
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v11, 0x40a0

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 868
    :goto_4
    if-eqz v7, :cond_5

    .line 870
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 874
    :cond_5
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 897
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 904
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_7

    .line 905
    :cond_6
    const-wide/16 v9, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 910
    :cond_7
    :goto_5
    return-void

    .line 764
    .end local v3           #inCallUiState:Lcom/android/phone/InCallUiState;
    .end local v4           #layoutTransition:Landroid/animation/LayoutTransition;
    .end local v7           #skipAnimation:Z
    :pswitch_2
    const v9, 0x7f070250

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 765
    goto/16 :goto_0

    .line 769
    :pswitch_3
    const v9, 0x7f070236

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 770
    goto/16 :goto_0

    .line 774
    :pswitch_4
    const v9, 0x7f07024d

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 779
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 780
    const v0, 0x7f0200ad

    goto/16 :goto_0

    .line 791
    :pswitch_5
    const v9, 0x7f070251

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    goto/16 :goto_0

    .line 795
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 796
    goto/16 :goto_0

    .line 811
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 812
    const v9, 0x7f070237

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 832
    .restart local v3       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 850
    .restart local v4       #layoutTransition:Landroid/animation/LayoutTransition;
    .restart local v7       #skipAnimation:Z
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 863
    :cond_b
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 866
    :cond_c
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 878
    :pswitch_7
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    goto :goto_5

    .line 887
    :pswitch_8
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_7

    .line 888
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 874
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 1632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1633
    .local v0, phoneType:I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1634
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1635
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1636
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1644
    :goto_1
    return-void

    .end local v0           #phoneType:I
    :cond_0
    move v0, v1

    .line 1632
    goto :goto_0

    .line 1642
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    const/16 v3, 0x8

    .line 1386
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1387
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020106

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1395
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f070252

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1408
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1414
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1430
    return-void

    .line 1396
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1402
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020105

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1403
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f07024c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1405
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 1186
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v5, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1187
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1191
    const/4 v1, 0x0

    .line 1192
    .local v1, displayNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1193
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1197
    .local v4, personUri:Landroid/net/Uri;
    if-eqz p1, :cond_9

    .line 1220
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1221
    .local v3, number:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1222
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1225
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1231
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1234
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, displayName:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1295
    .end local v3           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1296
    iget-object v5, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v6, 0x7f070252

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1300
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1312
    if-eqz p3, :cond_b

    if-eqz p1, :cond_2

    iget-boolean v5, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v5, :cond_b

    .line 1313
    :cond_2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1314
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1351
    :cond_3
    :goto_3
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_e

    .line 1352
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    invoke-static {v5}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1357
    :goto_4
    if-eqz v1, :cond_f

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1358
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    :goto_5
    if-eqz v2, :cond_10

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1365
    iget-object v5, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v5, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1372
    :goto_6
    invoke-direct {p0, p4}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1374
    return-void

    .line 1236
    .end local v0           #displayName:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_4
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v5, :cond_5

    .line 1240
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 1242
    .end local v0           #displayName:Ljava/lang/String;
    :cond_5
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1244
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1245
    .restart local v0       #displayName:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1246
    move-object v1, v3

    goto/16 :goto_0

    .line 1256
    .end local v0           #displayName:Ljava/lang/String;
    :cond_6
    move-object v0, v3

    .line 1260
    .restart local v0       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1264
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 1273
    .end local v0           #displayName:Ljava/lang/String;
    :cond_7
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v5, :cond_8

    .line 1277
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1281
    .end local v0           #displayName:Ljava/lang/String;
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1282
    .restart local v0       #displayName:Ljava/lang/String;
    move-object v1, v3

    .line 1283
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 1292
    .end local v0           #displayName:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1298
    :cond_a
    iget-object v5, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1315
    :cond_b
    if-eqz p1, :cond_c

    iget v5, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v5, :cond_c

    .line 1316
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v6, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v5, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1317
    :cond_c
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v5, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1318
    if-nez v4, :cond_d

    .line 1319
    const-string v5, "CallCard"

    const-string v6, "personPri is null. Just use Unknown picture."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v6, 0x7f020109

    invoke-static {v5, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1321
    :cond_d
    iget-object v5, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1330
    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1333
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1335
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1338
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {v7, v8, p1, p4}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v5, v6, v4, p0, v7}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1343
    iget-object v5, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    iget-object v5, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1354
    :cond_e
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 1361
    :cond_f
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1368
    :cond_10
    iget-object v5, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    return-void
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 343
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 345
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 353
    move-object v1, v0

    .line 356
    const/4 v0, 0x0

    .line 359
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 361
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 363
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 364
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 365
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 374
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 376
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 439
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 440
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    .line 1444
    const/4 v6, 0x0

    .line 1448
    .local v6, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1449
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1489
    const/4 v2, 0x0

    .line 1491
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v3, 0x0

    .line 1492
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1493
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_5

    .line 1494
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1502
    :goto_0
    if-eqz v3, :cond_0

    .line 1503
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1504
    .local v4, o:Ljava/lang/Object;
    instance-of v9, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_8

    move-object v2, v4

    .line 1505
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 1512
    .end local v4           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1513
    iget v6, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1524
    :cond_1
    if-nez v6, :cond_a

    .line 1525
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1526
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_2

    .line 1528
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v7

    .line 1529
    .local v7, photoUri:Landroid/net/Uri;
    if-nez v7, :cond_9

    .line 1530
    const-string v9, "CallCard"

    const-string v10, "photoUri became null. Show default avatar icon"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v10, 0x7f020109

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1543
    :goto_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1555
    .end local v2           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    .end local v7           #photoUri:Landroid/net/Uri;
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 1557
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1559
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1561
    :cond_3
    :goto_4
    return-void

    .line 1454
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1457
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2

    .line 1458
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1459
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v9, :cond_2

    .line 1461
    :cond_4
    const v6, 0x7f020104

    goto :goto_3

    .line 1495
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v2       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_5
    const/4 v9, 0x1

    if-eq v5, v9, :cond_6

    const/4 v9, 0x3

    if-ne v5, v9, :cond_7

    .line 1497
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1499
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1506
    .restart local v4       #o:Ljava/lang/Object;
    :cond_8
    instance-of v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_0

    .line 1507
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 1536
    .restart local v7       #photoUri:Landroid/net/Uri;
    :cond_9
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1538
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1539
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v2, v13}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v10, v7, p0, v11}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 1548
    .end local v7           #photoUri:Landroid/net/Uri;
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1549
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_4

    .line 1449
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 390
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 397
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1702
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1704
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1720
    :cond_0
    :goto_0
    return v2

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1709
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1710
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1711
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1712
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1714
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1715
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1717
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1683
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1685
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 215
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 216
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 217
    const v0, 0x7f0900ba

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 219
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    .line 220
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    .line 221
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f09009c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 230
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 231
    const v0, 0x7f0900b9

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    .line 233
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 241
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 701
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 708
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 713
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 715
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 716
    .local v0, asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 717
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 718
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 720
    .local v1, call:Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 721
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 722
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 726
    if-eqz p2, :cond_2

    .line 727
    invoke-static {v3, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 734
    :goto_1
    if-nez p1, :cond_0

    .line 735
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 737
    :cond_0
    return-void

    .line 711
    .end local v0           #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_1
    const-string v4, "CallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    .restart local v0       #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_2
    if-eqz p3, :cond_3

    .line 729
    invoke-static {v3, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 731
    :cond_3
    const v4, 0x7f020109

    invoke-static {v3, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 655
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_6

    move-object v4, p2

    .line 660
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 661
    .local v4, call:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 662
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 663
    .local v7, phoneType:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 664
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 671
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 674
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 675
    .local v2, presentation:I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 682
    :cond_0
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    .line 683
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #presentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 687
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 693
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 665
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 667
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 669
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    .restart local v2       #presentation:I
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 689
    .end local v2           #presentation:I
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    :cond_6
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 691
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 203
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 196
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 1692
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 1693
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 1694
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1084
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 207
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 919
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 920
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 923
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 253
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 254
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 255
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 258
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 265
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 309
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 280
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v4, :cond_3

    .line 292
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 306
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
