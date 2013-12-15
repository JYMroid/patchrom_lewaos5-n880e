.class public Lcom/android/phone/LewaCallCard;
.super Landroid/widget/LinearLayout;
.source "LewaCallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/lewa/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LewaCallCard$3;,
        Lcom/android/phone/LewaCallCard$LewaOnTickListener;,
        Lcom/android/phone/LewaCallCard$Fade;,
        Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;,
        Lcom/android/phone/LewaCallCard$AsyncQueryLocation;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final INCOMING_CALL_CIRCLE_ANIM_WIDGET_PING:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "LewaCallCard"

.field public static final RECORD_FILE_EXTEND_3GPP_TAG:Ljava/lang/String; = ".3gpp"

.field public static final RECORD_FILE_EXTEND_AMR_TAG:Ljava/lang/String; = ".amr"

.field public static final RECORD_FILE_EXTEND_MP3_TAG:Ljava/lang/String; = ".mp3"

.field public static final RECORD_FILE_SAVE_DIRECTORY:Ljava/lang/String; = "/Lewa/Voice_Recorder/"

.field private static mLCforUserData:Z

.field private static mLocaleChanged:Z


# instance fields
.field private callCardALL:Landroid/view/View;

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field private mCallCardContainer:Landroid/widget/RelativeLayout;

.field protected mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field protected mCallTime:Lcom/android/phone/CallTime;

.field private mCarrierAndLocation:Landroid/widget/TextView;

.field private mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedType:Landroid/widget/TextView;

.field final mHandler:Landroid/os/Handler;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallTouchUi:Lcom/android/phone/LewaInCallTouchUi;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mIpPrefixStr:[Ljava/lang/String;

.field private mLabel:Landroid/widget/TextView;

.field private mLabelNumberContainer:Landroid/view/View;

.field private mName:Landroid/widget/TextView;

.field private mNote:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberStr:Ljava/lang/String;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

.field protected mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryLabel:Landroid/widget/TextView;

.field private mSecondaryPhoneNumber:Landroid/widget/TextView;

.field private mSimColorMap:[I

.field private mSimInfo:Llewa/telephony/LewaSimInfo;

.field private mSmallPhoto:Landroid/widget/ImageView;

.field private mSmallPhotoContainer:Landroid/view/View;

.field private mSmallPhotoVisibling:Z

.field private mTextColorCallTypeSip:I

.field private mUppertitleTtip:Ljava/lang/String;

.field private mYellowPage:Landroid/widget/TextView;

.field private mYellowPageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberForCompare:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 196
    sput-boolean v0, Lcom/android/phone/LewaCallCard;->mLocaleChanged:Z

    .line 197
    sput-boolean v0, Lcom/android/phone/LewaCallCard;->mLCforUserData:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mYellowPageCache:Ljava/util/HashMap;

    .line 157
    iput-object v2, p0, Lcom/android/phone/LewaCallCard;->mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    .line 158
    iput-object v2, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumberStr:Ljava/lang/String;

    .line 162
    iput-boolean v3, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoVisibling:Z

    .line 199
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mSimColorMap:[I

    .line 210
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "17951"

    aput-object v2, v1, v3

    const-string v2, "12593"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "17911"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "17909"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "17908"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "10193"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mIpPrefixStr:[Ljava/lang/String;

    .line 226
    new-instance v1, Lcom/android/phone/LewaCallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/LewaCallCard$1;-><init>(Lcom/android/phone/LewaCallCard;)V

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mHandler:Landroid/os/Handler;

    .line 249
    const-string v1, "LewaCallCard constructor..."

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 255
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04002b

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 260
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 263
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/LewaCallCard$LewaOnTickListener;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaCallCard$LewaOnTickListener;-><init>(Lcom/android/phone/LewaCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 267
    new-instance v1, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    .line 269
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/LewaCallCard;->mDensity:F

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/LewaCallCard;->mCallBannerSidePadding:I

    .line 271
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/LewaCallCard;->mCallBannerTopBottomPadding:I

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/LewaCallCard;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mUppertitleTtip:Ljava/lang/String;

    .line 274
    return-void

    .line 199
    :array_0
    .array-data 0x4
        0xe8t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/LewaCallCard;)Lcom/lewa/widget/CircleAnimView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LewaCallCard;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LewaCallCard;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/phone/LewaCallCard;->updateCarrierAndLocation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LewaCallCard;)Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/LewaCallCard;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-static {p0, p1, p2}, Lcom/android/phone/LewaCallCard;->showSmallCachedImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    return v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 2321
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2322
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2323
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2325
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2326
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2328
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus(call "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 547
    if-nez p2, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 555
    .local v18, state:Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - call.state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 557
    sget-object v2, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 610
    const-string v2, "LewaCallCard"

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

    .line 617
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->updateSimInfo(Lcom/android/internal/telephony/Call;)V

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 647
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 764
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 769
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/LewaCallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/LewaCallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/LewaCallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 561
    :pswitch_0
    const-string v2, "displayMainCallStatus: start periodicUpdateTimer"

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_1

    .line 570
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 576
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 583
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 590
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 599
    :pswitch_5
    const-string v2, "LewaCallCard"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 653
    :cond_2
    const/4 v7, 0x0

    .line 654
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 655
    .local v16, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 656
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 664
    :goto_3
    if-nez v7, :cond_6

    .line 665
    const-string v2, "displayMainCallStatus: connection is null, using default values."

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 671
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/LewaCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 657
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 659
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 661
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

    .line 673
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - CONN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 678
    .local v10, presentation:I
    const/16 v17, 0x1

    .line 679
    .local v17, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 680
    .local v14, o:Ljava/lang/Object;
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_b

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 689
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 690
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 691
    .local v15, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 692
    .local v20, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v19

    .line 693
    .local v19, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 694
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_c

    move-object v2, v14

    .line 695
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 700
    :cond_7
    :goto_5
    if-eqz v3, :cond_9

    .line 701
    if-eqz v20, :cond_8

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 704
    const/16 v17, 0x1

    .line 706
    :cond_8
    if-eqz v19, :cond_9

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 709
    const/16 v17, 0x1

    .line 714
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v19           #updatedCnapName:Ljava/lang/String;
    .end local v20           #updatedNumber:Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_e

    .line 715
    const-string v2, "- displayMainCallStatus: starting CallerInfo query..."

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 716
    sget-boolean v2, Lcom/android/phone/LewaCallCard;->mLCforUserData:Z

    if-eqz v2, :cond_a

    .line 717
    const-string v2, "- displayMainCallStatus: the language changed to clear userdata"

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 719
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/LewaCallCard;->mLCforUserData:Z

    .line 722
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 724
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_d

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/LewaCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 684
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto/16 :goto_4

    .line 696
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v19       #updatedCnapName:Ljava/lang/String;
    .restart local v20       #updatedNumber:Ljava/lang/String;
    :cond_c
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_7

    move-object v3, v14

    .line 697
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_5

    .line 724
    .end local v15           #obj:Ljava/lang/Object;
    .end local v19           #updatedCnapName:Ljava/lang/String;
    .end local v20           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    .line 730
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_e
    const-string v2, "- displayMainCallStatus: using data we already have..."

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 731
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    move-object v9, v14

    .line 732
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 734
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 735
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 736
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 741
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/LewaCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 742
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_f
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_10

    .line 743
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 744
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 748
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/LewaCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 750
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #o:Ljava/lang/Object;
    :cond_10
    const-string v2, "LewaCallCard"

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

    .line 557
    nop

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

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayOnHoldCallStatus(call ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1191
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1192
    :cond_0
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1361
    :goto_0
    return-void

    .line 1196
    :cond_1
    const/4 v7, 0x0

    .line 1197
    .local v7, showSecondaryCallInfo:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1198
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1347
    :pswitch_0
    const/4 v7, 0x0

    .line 1348
    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v7, :cond_d

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaCallCard;->setCallCardSmallPhotoVisib(Lcom/android/internal/telephony/CallManager;)V

    .line 1353
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 1360
    :cond_3
    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v7, :cond_e

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1222
    :pswitch_1
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1223
    const-string v9, "==> conference call."

    invoke-static {v9}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1224
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070075

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1226
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1273
    :cond_4
    :goto_4
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/LewaInCallTouchUi;->isCheckedForKeyboard()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isMoreShow()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/LewaInCallTouchUi;->isAudioOptionsShow()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1275
    const/4 v7, 0x1

    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaCallCard;->setCallCardSmallPhotoVisib(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 1232
    :cond_5
    const-string v9, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-static {v9}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v9, p2, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1235
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget-boolean v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v9, :cond_4

    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1257
    .local v6, phoneType:I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_6

    .line 1258
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1266
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    goto :goto_4

    .line 1259
    :cond_6
    const/4 v9, 0x1

    if-eq v6, v9, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_8

    .line 1261
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_5

    .line 1263
    :cond_8
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1284
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v6           #phoneType:I
    :pswitch_2
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 1285
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1286
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_a

    .line 1291
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070252

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/LewaInCallTouchUi;->isCheckedForKeyboard()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isMoreShow()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/LewaInCallTouchUi;->isAudioOptionsShow()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1331
    const/4 v7, 0x1

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaCallCard;->setCallCardSmallPhotoVisib(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_2

    .line 1297
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1298
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v9, v0, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1304
    .restart local v4       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1306
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1307
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1308
    .local v2, forceGenericPhoto:Z
    if-eqz v3, :cond_b

    iget v9, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v10, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v9, v10, :cond_b

    .line 1310
    iget v9, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-direct {p0, v9}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v5

    .line 1311
    const/4 v2, 0x1

    .line 1313
    :cond_b
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    if-nez v2, :cond_9

    iget-boolean v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v9, :cond_9

    goto :goto_6

    .line 1338
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #forceGenericPhoto:Z
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #name:Ljava/lang/String;
    :cond_c
    const-string v9, "LewaCallCard"

    const-string v10, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v7, 0x0

    .line 1341
    goto/16 :goto_2

    .line 1348
    :cond_d
    const/16 v9, 0x8

    goto/16 :goto_1

    .line 1360
    :cond_e
    const/16 v9, 0x8

    goto/16 :goto_3

    .line 1198
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
    .line 1374
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1377
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1378
    const-string v3, "getCallFailedString: connection is null, using default values."

    invoke-static {v3}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1381
    const v2, 0x7f07024f

    .line 1454
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1384
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1390
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1450
    const v2, 0x7f07024f

    .restart local v2       #resID:I
    goto :goto_0

    .line 1392
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f070055

    .line 1393
    .restart local v2       #resID:I
    goto :goto_0

    .line 1396
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f070056

    .line 1397
    .restart local v2       #resID:I
    goto :goto_0

    .line 1400
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f070057

    .line 1401
    .restart local v2       #resID:I
    goto :goto_0

    .line 1404
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f070058

    .line 1405
    .restart local v2       #resID:I
    goto :goto_0

    .line 1408
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f070059

    .line 1409
    .restart local v2       #resID:I
    goto :goto_0

    .line 1412
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f07005a

    .line 1413
    .restart local v2       #resID:I
    goto :goto_0

    .line 1416
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f07005c

    .line 1417
    .restart local v2       #resID:I
    goto :goto_0

    .line 1420
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f07005b

    .line 1421
    .restart local v2       #resID:I
    goto :goto_0

    .line 1425
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f07005d

    .line 1426
    .restart local v2       #resID:I
    goto :goto_0

    .line 1429
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f07005e

    .line 1430
    .restart local v2       #resID:I
    goto :goto_0

    .line 1433
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f07005f

    .line 1434
    .restart local v2       #resID:I
    goto :goto_0

    .line 1437
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f070060

    .line 1438
    .restart local v2       #resID:I
    goto :goto_0

    .line 1441
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f070061

    .line 1442
    .restart local v2       #resID:I
    goto :goto_0

    .line 1446
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f070074

    .line 1447
    .restart local v2       #resID:I
    goto :goto_0

    .line 1390
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

.method private getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;
    .locals 3
    .parameter "cause"

    .prologue
    .line 2867
    if-nez p1, :cond_0

    .line 2868
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2871
    const v0, 0x7f07024f

    .line 2937
    .local v0, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2873
    .end local v0           #resID:I
    :cond_0
    sget-object v1, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2933
    const v0, 0x7f07024f

    .restart local v0       #resID:I
    goto :goto_0

    .line 2875
    .end local v0           #resID:I
    :pswitch_0
    const v0, 0x7f070055

    .line 2876
    .restart local v0       #resID:I
    goto :goto_0

    .line 2879
    .end local v0           #resID:I
    :pswitch_1
    const v0, 0x7f070056

    .line 2880
    .restart local v0       #resID:I
    goto :goto_0

    .line 2883
    .end local v0           #resID:I
    :pswitch_2
    const v0, 0x7f070057

    .line 2884
    .restart local v0       #resID:I
    goto :goto_0

    .line 2887
    .end local v0           #resID:I
    :pswitch_3
    const v0, 0x7f070058

    .line 2888
    .restart local v0       #resID:I
    goto :goto_0

    .line 2891
    .end local v0           #resID:I
    :pswitch_4
    const v0, 0x7f070059

    .line 2892
    .restart local v0       #resID:I
    goto :goto_0

    .line 2895
    .end local v0           #resID:I
    :pswitch_5
    const v0, 0x7f07005a

    .line 2896
    .restart local v0       #resID:I
    goto :goto_0

    .line 2899
    .end local v0           #resID:I
    :pswitch_6
    const v0, 0x7f07005c

    .line 2900
    .restart local v0       #resID:I
    goto :goto_0

    .line 2903
    .end local v0           #resID:I
    :pswitch_7
    const v0, 0x7f07005b

    .line 2904
    .restart local v0       #resID:I
    goto :goto_0

    .line 2908
    .end local v0           #resID:I
    :pswitch_8
    const v0, 0x7f07005d

    .line 2909
    .restart local v0       #resID:I
    goto :goto_0

    .line 2912
    .end local v0           #resID:I
    :pswitch_9
    const v0, 0x7f07005e

    .line 2913
    .restart local v0       #resID:I
    goto :goto_0

    .line 2916
    .end local v0           #resID:I
    :pswitch_a
    const v0, 0x7f07005f

    .line 2917
    .restart local v0       #resID:I
    goto :goto_0

    .line 2920
    .end local v0           #resID:I
    :pswitch_b
    const v0, 0x7f070060

    .line 2921
    .restart local v0       #resID:I
    goto :goto_0

    .line 2924
    .end local v0           #resID:I
    :pswitch_c
    const v0, 0x7f070061

    .line 2925
    .restart local v0       #resID:I
    goto :goto_0

    .line 2929
    .end local v0           #resID:I
    :pswitch_d
    const v0, 0x7f070074

    .line 2930
    .restart local v0       #resID:I
    goto :goto_0

    .line 2873
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

.method public static getCurrentTimestamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3013
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3014
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3015
    const-string v1, "-%tY%tm%td%tH%tM%tS"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1870
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1874
    :cond_0
    :goto_0
    return-object v0

    .line 1871
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1872
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getSmallPhoto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v5, 0x0

    .line 2148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2150
    .local v7, res:Landroid/content/res/Resources;
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2151
    .local v1, name:Ljava/lang/String;
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2153
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const v0, 0x7f0d0058

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f020102

    invoke-static {p0, v6, v0, v2, v5}, Lcom/lewa/widget/ContactSmartPhotoUtils;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2166
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 2157
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2158
    :cond_1
    const v0, 0x7f0a0011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v0, 0x7f0d0057

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v0, 0x7f0d0059

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lewa/widget/ContactSmartPhotoUtils;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2163
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 2166
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2601
    const-string v0, "LewaCallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    return-void
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "vg"
    .parameter "margin"

    .prologue
    .line 2189
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2192
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2193
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2194
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2195
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 2074
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 2075
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2076
    const-string v0, "showCachedImage: using the cachedPhoto!"

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2083
    :goto_0
    const/4 v0, 0x1

    .line 2086
    :goto_1
    return v0

    .line 2080
    :cond_0
    const-string v0, "showCachedImage: using transparent!"

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2081
    const v0, 0x7f0a0002

    invoke-static {p0, v0}, Lcom/android/phone/LewaCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 2085
    :cond_1
    const-string v0, "showCachedImage: return false!"

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2086
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 2171
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2173
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 2177
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2179
    return-void
.end method

.method private static final showSmallCachedImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "view"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    .line 2090
    if-eqz p2, :cond_2

    .line 2091
    const-string v3, "showCachedImage: using the smallCachedPhoto!"

    invoke-static {v3}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2092
    iget-wide v3, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2093
    invoke-static {p0, p2}, Lcom/android/phone/LewaCallCard;->getSmallPhoto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2094
    const/16 v3, 0x8

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 2104
    .local v0, bg:[I
    iget-wide v3, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    long-to-int v3, v3

    rem-int/lit8 v3, v3, 0x8

    aget v1, v0, v3

    .line 2105
    .local v1, bgSrcId:I
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2112
    .end local v0           #bg:[I
    .end local v1           #bgSrcId:I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2113
    const/4 v2, 0x1

    .line 2116
    :goto_1
    return v2

    .line 2106
    :cond_0
    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 2107
    invoke-static {p0, p2}, Lcom/android/phone/LewaCallCard;->getSmallPhoto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2109
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2110
    const v3, 0x7f02007b

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2115
    :cond_2
    const-string v3, "showCachedImage: return false!"

    invoke-static {v3}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2094
    :array_0
    .array-data 0x4
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private showhideSmallPhotoRingAnim(Z)V
    .locals 6
    .parameter "isRinging"

    .prologue
    const/16 v5, 0x65

    .line 2120
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mSmallPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 2121
    if-eqz p1, :cond_1

    .line 2122
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2123
    new-instance v2, Lcom/lewa/widget/CircleAnimView;

    iget-object v3, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v2, v3}, Lcom/lewa/widget/CircleAnimView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    .line 2124
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2126
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2128
    .local v0, height:I
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/lewa/widget/CircleAnimView;->setPosition(FF)V

    .line 2129
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView;->showAnim()V

    .line 2130
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView;->invalidate()V

    .line 2131
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCallCardContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2133
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/LewaCallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2145
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    if-eqz v2, :cond_0

    .line 2138
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    invoke-virtual {v2}, Lcom/lewa/widget/CircleAnimView;->stopAnim()V

    .line 2139
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lewa/widget/CircleAnimView;->setVisibility(I)V

    .line 2140
    iget-object v2, p0, Lcom/android/phone/LewaCallCard;->mCallCardContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2141
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;

    goto :goto_0
.end method

.method private updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "call"
    .parameter "callBanner"

    .prologue
    .line 2380
    invoke-static {}, Lcom/android/phone/LewaPhoneWrapper;->isDualSIMSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2381
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2382
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2383
    .local v1, phoneType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2385
    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    .line 2386
    const v2, 0x7f0200f0

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2399
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    .end local v1           #phoneType:I
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/phone/LewaCallCard;->mCallBannerSidePadding:I

    iget v3, p0, Lcom/android/phone/LewaCallCard;->mCallBannerTopBottomPadding:I

    iget v4, p0, Lcom/android/phone/LewaCallCard;->mCallBannerSidePadding:I

    iget v5, p0, Lcom/android/phone/LewaCallCard;->mCallBannerTopBottomPadding:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2400
    return-void

    .line 2397
    :cond_1
    const v2, 0x7f0200eb

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "call"
    .parameter "callBanner"

    .prologue
    .line 2944
    const-string v1, "displayFakeCallStatus..."

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2945
    invoke-static {}, Lcom/android/phone/LewaPhoneWrapper;->isDualSIMSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2946
    iget v0, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 2947
    .local v0, phoneType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2948
    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 2949
    const v1, 0x7f0200f0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2962
    .end local v0           #phoneType:I
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/phone/LewaCallCard;->mCallBannerSidePadding:I

    iget v2, p0, Lcom/android/phone/LewaCallCard;->mCallBannerTopBottomPadding:I

    iget v3, p0, Lcom/android/phone/LewaCallCard;->mCallBannerSidePadding:I

    iget v4, p0, Lcom/android/phone/LewaCallCard;->mCallBannerTopBottomPadding:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2963
    return-void

    .line 2960
    :cond_1
    const v1, 0x7f0200eb

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 426
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v4, :cond_0

    const/4 v2, 0x1

    .line 427
    .local v2, ringing:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallInfoLayout()...  ringing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/LewaInCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 437
    .local v1, reservedVerticalSpace:I
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 439
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> callInfoLp.bottomMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    return-void

    .end local v0           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #reservedVerticalSpace:I
    .end local v2           #ringing:Z
    :cond_0
    move v2, v3

    .line 426
    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 23
    .parameter "call"

    .prologue
    .line 901
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateCallStateWidgets(call "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 903
    .local v18, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 904
    .local v9, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .line 905
    .local v15, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 907
    .local v16, phoneType:I
    const/4 v6, 0x0

    .line 908
    .local v6, callStateLabel:Ljava/lang/String;
    const/4 v5, 0x0

    .line 909
    .local v5, callStateDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 914
    .local v4, bluetoothIconId:I
    sget-object v19, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-object v19, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 915
    :cond_0
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->showhideSmallPhotoRingAnim(Z)V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->seCallCardSmallPhotoVISIBLE()V

    .line 920
    :goto_0
    sget-object v19, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1013
    const-string v19, "LewaCallCard"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_1
    :goto_1
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1020
    sget-object v19, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1024
    const v19, 0x7f070236

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1029
    :cond_2
    :goto_2
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1032
    invoke-static {v9, v15}, Lcom/android/phone/LewaPhoneWrapper;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v6

    .line 1035
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "==> callStateLabel: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\', bluetoothIconId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1039
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1044
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->updateTitleBg()V

    .line 1081
    :cond_4
    :goto_3
    sget-object v19, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_1

    .line 1107
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mElapsedType:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mLabelNumberContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :goto_4
    return-void

    .line 918
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->showhideSmallPhotoRingAnim(Z)V

    goto/16 :goto_0

    .line 927
    :pswitch_1
    const-string v19, "LewaCallCard"

    const-string v20, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 938
    :pswitch_2
    const-string v19, "displayMainCallStatus: start periodicUpdateTimer"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 942
    :pswitch_3
    const v19, 0x7f070250

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 943
    goto/16 :goto_1

    .line 947
    :pswitch_4
    const v19, 0x7f070236

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 948
    goto/16 :goto_1

    .line 952
    :pswitch_5
    const/4 v7, 0x0

    .line 954
    .local v7, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v8, 0x0

    .line 955
    .local v8, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    .line 956
    .local v17, phoneTypee:I
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 957
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 965
    :goto_5
    if-eqz v8, :cond_6

    .line 966
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 967
    .local v14, o:Ljava/lang/Object;
    instance-of v0, v14, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object v7, v14

    .line 968
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .line 975
    .end local v14           #o:Ljava/lang/Object;
    :cond_6
    :goto_6
    if-eqz v7, :cond_b

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->note:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mNote:Landroid/widget/TextView;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->note:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mNote:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/android/phone/LewaPhoneWrapper;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 985
    const v19, 0x7f070254

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 992
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 993
    const v4, 0x7f0200ad

    goto/16 :goto_1

    .line 958
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 960
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_5

    .line 962
    :cond_9
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unexpected phone type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 969
    .restart local v14       #o:Ljava/lang/Object;
    :cond_a
    instance-of v0, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 970
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v7, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_6

    .line 979
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mNote:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 987
    :cond_c
    const v19, 0x7f07024d

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 1005
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #conn:Lcom/android/internal/telephony/Connection;
    .end local v17           #phoneTypee:I
    :pswitch_6
    const v19, 0x7f070251

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1006
    goto/16 :goto_1

    .line 1009
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/LewaCallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v6

    .line 1010
    goto/16 :goto_1

    .line 1025
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1026
    const v19, 0x7f070237

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1061
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d005d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1071
    if-eqz v4, :cond_4

    goto/16 :goto_3

    .line 1084
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mElapsedType:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mLabelNumberContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    invoke-static/range {p1 .. p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v10

    .line 1088
    .local v10, duration:J
    const-wide/16 v19, 0x3e8

    div-long v19, v10, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LewaCallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_4

    .line 1097
    .end local v10           #duration:J
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v12

    .line 1098
    .local v12, duration2:J
    const-wide/16 v19, 0x3e8

    div-long v19, v12, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LewaCallCard;->updateElapsedTimeWidget(J)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mElapsedType:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mLabelNumberContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 920
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 1081
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 2208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2220
    .local v0, phoneType:I
    :goto_0
    return-void

    .line 2208
    .end local v0           #phoneType:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCarrierAndLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "CarrierText"
    .parameter "LocationText"

    .prologue
    .line 2249
    const/4 v0, 0x0

    .line 2250
    .local v0, typeAddress:Ljava/lang/String;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2252
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mCarrierAndLocation:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2253
    sget-object v1, Llewa/util/LocationUtil;->PHONE_TYPE_FIXED_LINE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2255
    move-object v0, p2

    .line 2269
    :goto_0
    if-eqz v0, :cond_0

    .line 2271
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mCarrierAndLocation:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2273
    :cond_0
    return-void

    .line 2259
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2262
    :cond_2
    if-eqz p2, :cond_3

    .line 2264
    move-object v0, p2

    goto :goto_0

    .line 2267
    :cond_3
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mCarrierAndLocation:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 1885
    const-string v1, "updateDisplayForConference()..."

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1888
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1897
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f070252

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1913
    :goto_0
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1919
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1920
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1921
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mCarrierAndLocation:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1924
    invoke-direct {p0, p1}, Lcom/android/phone/LewaCallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1925
    invoke-direct {p0, v4, v4, v4}, Lcom/android/phone/LewaCallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 1936
    return-void

    .line 1899
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1906
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1907
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1908
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f07024c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1910
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
    .locals 22
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 1649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\npresentation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isTemporary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1658
    const/4 v13, 0x0

    .line 1659
    .local v13, displayNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1660
    .local v15, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1661
    .local v10, personUri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 1662
    .local v19, socialStatusText:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1663
    .local v18, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    .line 1665
    .local v20, state:Lcom/android/internal/telephony/Call$State;
    if-eqz p1, :cond_10

    .line 1681
    sget-boolean v4, Lcom/android/phone/LewaCallCard;->mLocaleChanged:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1682
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x9040003

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1686
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/phone/LewaCallCard;->mLocaleChanged:Z

    .line 1697
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1699
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/LewaCallCard;->stripIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumberStr:Ljava/lang/String;

    .line 1701
    if-eqz v16, :cond_2

    const-string v4, "sip:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1702
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1705
    :cond_2
    if-eqz v16, :cond_3

    .line 1706
    invoke-static {}, Lcom/android/phone/LewaHyphonManager;->getInstance()Lcom/android/phone/LewaHyphonManager;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/phone/LewaHyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1708
    :cond_3
    const-string v4, "shenqi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPhoneNumberStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumberStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->numberForCompare:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->numberForCompare:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1711
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mCarrierAndLocation:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    new-instance v4, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;-><init>(Lcom/android/phone/LewaCallCard;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumberStr:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1713
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/LewaCallCard;->numberForCompare:Ljava/lang/String;

    .line 1716
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1722
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1725
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .line 1726
    .local v12, displayName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> no name *or* number! displayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1779
    :goto_0
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got personUri: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', based on info.person_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1786
    .end local v16           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    const v5, 0x7f070252

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1791
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1803
    if-eqz p3, :cond_12

    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v4, :cond_12

    .line 1804
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1815
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1820
    .local v17, pref:Landroid/content/SharedPreferences;
    const-string v4, "yellow_page_cfg_key"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1822
    .local v14, isYellowPageOn:Z
    if-eqz v14, :cond_9

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1823
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_15

    .line 1825
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1828
    .local v21, yellowInfo:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1847
    .end local v21           #yellowInfo:Ljava/lang/String;
    :cond_9
    :goto_4
    if-eqz v13, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1859
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1863
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1864
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/LewaCallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 1865
    return-void

    .line 1727
    .end local v12           #displayName:Ljava/lang/String;
    .end local v14           #isYellowPageOn:Z
    .end local v17           #pref:Landroid/content/SharedPreferences;
    .restart local v16       #number:Ljava/lang/String;
    :cond_a
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v4, :cond_b

    .line 1731
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .line 1732
    .restart local v12       #displayName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    .end local v12           #displayName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1735
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1736
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1737
    move-object/from16 v13, v16

    .line 1738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> cnapName available: displayName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', displayNumber \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1747
    .end local v12           #displayName:Ljava/lang/String;
    :cond_c
    move-object/from16 v12, v16

    .line 1751
    .restart local v12       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1755
    const/4 v13, 0x0

    .line 1758
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', displayNumber \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1764
    .end local v12           #displayName:Ljava/lang/String;
    :cond_e
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v4, :cond_f

    .line 1768
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .line 1769
    .restart local v12       #displayName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1772
    .end local v12           #displayName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1773
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v13, v16

    .line 1774
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', displayNumber \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1783
    .end local v12           #displayName:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1789
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1805
    :cond_12
    if-eqz p1, :cond_13

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v4, :cond_13

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v4, v5}, Lcom/android/phone/LewaCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1807
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/phone/LewaCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1810
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    const v11, 0x7f0a0002

    move-object/from16 v4, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v11}, Lcom/lewa/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/lewa/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_3

    .line 1839
    .restart local v14       #isYellowPageOn:Z
    .restart local v17       #pref:Landroid/content/SharedPreferences;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v12}, Lcom/android/phone/InCallScreen;->getCallerIdResultByReceiver(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1842
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mYellowPageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_4

    .line 1851
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 16
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"
    .parameter "nameView"
    .parameter "isOnHold"
    .parameter "numberView"
    .parameter "labelView"
    .parameter "photoView"

    .prologue
    .line 2607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDisplayForPerson("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\npresentation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isTemporary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2612
    if-nez p7, :cond_0

    .line 2613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2619
    :cond_0
    const/4 v11, 0x0

    .line 2620
    .local v11, displayNumber:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2621
    .local v12, label:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2622
    .local v8, personUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 2623
    .local v15, socialStatusText:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2625
    .local v14, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_c

    .line 2641
    sget-boolean v2, Lcom/android/phone/LewaCallCard;->mLocaleChanged:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2642
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2643
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x9040003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2646
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/LewaCallCard;->mLocaleChanged:Z

    .line 2658
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2659
    .local v13, number:Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v2, "sip:"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2660
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2662
    :cond_3
    invoke-static {}, Lcom/android/phone/LewaHyphonManager;->getInstance()Lcom/android/phone/LewaHyphonManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/phone/LewaHyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2664
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2670
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2674
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v10

    .line 2675
    .local v10, displayName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> no name *or* number! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2736
    :goto_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- got personUri: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', based on info.person_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2743
    .end local v13           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2744
    const v2, 0x7f070252

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2748
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2763
    if-nez p7, :cond_5

    .line 2764
    if-eqz p3, :cond_e

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v2, :cond_e

    .line 2765
    :cond_4
    const/4 v2, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2776
    :cond_5
    :goto_3
    if-eqz v11, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2777
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2778
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2783
    :goto_4
    if-eqz v12, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2784
    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2785
    const/4 v2, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2793
    :goto_5
    return-void

    .line 2676
    .end local v10           #displayName:Ljava/lang/String;
    .restart local v13       #number:Ljava/lang/String;
    :cond_6
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v2, :cond_7

    .line 2682
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v10

    .line 2683
    .restart local v10       #displayName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2684
    .end local v10           #displayName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2686
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2687
    .restart local v10       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2688
    move-object v11, v13

    .line 2689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> cnapName available: displayName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', displayNumber \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2698
    .end local v10           #displayName:Ljava/lang/String;
    :cond_8
    move-object v10, v13

    .line 2703
    .restart local v10       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2709
    const/4 v11, 0x0

    .line 2712
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', displayNumber \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2719
    .end local v10           #displayName:Ljava/lang/String;
    :cond_a
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v2, :cond_b

    .line 2725
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v10

    .line 2726
    .restart local v10       #displayName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2729
    .end local v10           #displayName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2730
    .restart local v10       #displayName:Ljava/lang/String;
    move-object v11, v13

    .line 2731
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 2732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', displayNumber \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2740
    .end local v10           #displayName:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/LewaCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 2746
    :cond_d
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2766
    :cond_e
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v2, :cond_f

    .line 2767
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move-object/from16 v0, p10

    invoke-static {v0, v2}, Lcom/android/phone/LewaCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2768
    :cond_f
    move-object/from16 v0, p10

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/LewaCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2771
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0a0002

    move-object/from16 v2, p1

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v7, p10

    invoke-static/range {v2 .. v9}, Lcom/lewa/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/lewa/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_3

    .line 2780
    :cond_10
    const/16 v2, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2787
    :cond_11
    const/16 v2, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    .line 449
    const-string v5, "updateForegroundCall()..."

    invoke-static {v5}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 453
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 456
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 457
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 465
    const-string v5, "updateForegroundCall: no active call, show holding call"

    invoke-static {v5}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 472
    move-object v1, v0

    .line 475
    const/4 v0, 0x0

    .line 478
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/phone/LewaCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 480
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 482
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 483
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 484
    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 487
    invoke-direct {p0, p1, v1}, Lcom/android/phone/LewaCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 491
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 493
    :cond_4
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 495
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 527
    const-string v1, "updateNoCall()..."

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v1, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 531
    .local v0, fakeCall:Lcom/android/phone/InCallUiState$FakeCall;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/phone/LewaCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 536
    invoke-direct {p0, p1, v2}, Lcom/android/phone/LewaCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "call"

    .prologue
    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 1949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePhotoForCallState("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1950
    const/4 v4, 0x0

    .line 1954
    .local v4, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1955
    .local v5, state:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/phone/LewaCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    .line 2000
    const/4 v0, 0x0

    .line 2002
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 2003
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2004
    .local v3, phoneType:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    .line 2005
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2013
    :goto_0
    if-eqz v1, :cond_0

    .line 2014
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2015
    .local v2, o:Ljava/lang/Object;
    instance-of v6, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_8

    move-object v0, v2

    .line 2016
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2023
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2024
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2038
    :cond_1
    if-nez v4, :cond_9

    .line 2039
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2040
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Lcom/android/phone/LewaCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 2042
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v0, v6, v7, v8, v9}, Lcom/lewa/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 2044
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6, v9}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2054
    :cond_2
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2055
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/LewaCallCard;->mSmallPhoto:Landroid/widget/ImageView;

    invoke-static {v6, v7, v0}, Lcom/android/phone/LewaCallCard;->showSmallCachedImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    .line 2060
    :cond_3
    if-eqz v4, :cond_4

    .line 2061
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- overrriding photo image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2062
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v6, v4}, Lcom/android/phone/LewaCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2064
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6, v10}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2066
    :cond_4
    :goto_2
    return-void

    .line 2006
    :cond_5
    const/4 v6, 0x1

    if-eq v3, v6, :cond_6

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    .line 2008
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2010
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2017
    .restart local v2       #o:Ljava/lang/Object;
    :cond_8
    instance-of v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v6, :cond_0

    .line 2018
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 2049
    :cond_9
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v6, v4}, Lcom/android/phone/LewaCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2050
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mPhotoTracker:Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6, v9}, Lcom/lewa/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_2
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 504
    const-string v1, "updateRingingCall()..."

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 509
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 515
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/LewaCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 516
    return-void
.end method

.method private updateSimInfo(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    const/4 v4, -0x1

    .line 2331
    invoke-static {}, Lcom/android/phone/LewaPhoneWrapper;->isDualSIMSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2332
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 2333
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const/4 v1, -0x1

    .line 2335
    .local v1, slot:I
    invoke-static {p1}, Lcom/android/phone/LewaPhoneWrapper;->getSubscriptionByCall(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 2336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimInfo, getSubscriptionByCall, slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2338
    if-ne v1, v4, :cond_0

    .line 2339
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getStateGemini(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_3

    .line 2340
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    .line 2346
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_2

    .line 2347
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getPendingMmiCodesGeminiSize(Lcom/android/internal/telephony/Phone;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 2348
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    .line 2358
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimIndicator, running mmi, slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2377
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    .end local v1           #slot:I
    :cond_2
    return-void

    .line 2341
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v1       #slot:I
    :cond_3
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getStateGemini(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 2342
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    goto :goto_0

    .line 2349
    :cond_4
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getPendingMmiCodesGeminiSize(Lcom/android/internal/telephony/Phone;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2350
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    goto :goto_1
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    .line 2243
    return-void
.end method

.method private updateTitleBg()V
    .locals 0

    .prologue
    .line 2998
    return-void
.end method


# virtual methods
.method protected cancelTimer(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 3082
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2309
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2310
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2311
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2312
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2314
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2315
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LewaCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2317
    const/4 v0, 0x1

    return v0
.end method

.method displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V
    .locals 2
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 2799
    if-nez p1, :cond_0

    .line 2801
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2861
    :goto_0
    return-void

    .line 2805
    :cond_0
    const-string v0, "displayFakeCallStatus..."

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 2807
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2810
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2811
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v1}, Lcom/android/phone/LewaCallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2844
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2845
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2848
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2858
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2859
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0a0002

    invoke-static {v0, v1}, Lcom/android/phone/LewaCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2860
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LewaCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method protected doUpdate(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 3101
    return-void
.end method

.method getCallCardAll()Landroid/view/View;
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    return-object v0
.end method

.method getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 1
    .parameter "call"

    .prologue
    .line 2966
    if-nez p1, :cond_0

    .line 2967
    const/4 v0, 0x0

    .line 2981
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecordFullFileName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 3023
    const/4 v0, 0x0

    .line 3024
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3025
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3026
    const/16 v1, 0x5c

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3028
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3031
    const-string v1, "[:\"<>*?|]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting filename from hint filename.length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 3033
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_0

    .line 3034
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 3035
    const/16 v1, 0x46

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3044
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3045
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3046
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3053
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Lewa/Voice_Recorder/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/LewaCallCard;->getCurrentTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3037
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3048
    :cond_3
    const-string v0, "unknown"

    goto :goto_1
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2289
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2290
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2291
    return-void
.end method

.method protected inflate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3067
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3068
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3072
    return-void
.end method

.method onDTMFAction(Z)V
    .locals 2
    .parameter "hasDigits"

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1480
    return-void

    .line 1479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LewaCallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 298
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallCardContainer:Landroid/widget/RelativeLayout;

    .line 300
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 301
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 302
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f09009c

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mElapsedType:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    .line 306
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mNote:Landroid/widget/TextView;

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LewaCallCard;->mTextColorCallTypeSip:I

    .line 313
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhoto:Landroid/widget/ImageView;

    .line 315
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    .line 316
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mName:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 318
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mLabel:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mCarrierAndLocation:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mLabelNumberContainer:Landroid/view/View;

    .line 323
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mSecondaryLabel:Landroid/widget/TextView;

    .line 327
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 835
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mPhoneNumberStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/InCallScreen;->tripNonDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 837
    .local v12, number:Ljava/lang/String;
    if-eqz p2, :cond_3

    move-object/from16 v9, p2

    .line 838
    check-cast v9, Lcom/android/internal/telephony/Call;

    .line 839
    .local v9, call:Lcom/android/internal/telephony/Call;
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/phone/LewaCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 841
    const/4 v10, 0x0

    .line 843
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x0

    .line 844
    .local v11, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    .line 845
    .local v14, phoneType:I
    const/4 v1, 0x2

    if-ne v14, v1, :cond_5

    .line 846
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 854
    :goto_0
    if-eqz v11, :cond_0

    .line 855
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v13

    .line 856
    .local v13, o:Ljava/lang/Object;
    instance-of v1, v13, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_8

    move-object v10, v13

    .line 857
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 864
    .end local v13           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v10, :cond_3

    .line 865
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    const/4 v11, 0x0

    .line 867
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    .line 868
    const/4 v1, 0x2

    if-ne v14, v1, :cond_9

    .line 869
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 874
    :cond_1
    :goto_2
    if-eqz v11, :cond_2

    .line 875
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/LewaCallCard;->stripIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/InCallScreen;->tripNonDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 878
    :cond_2
    new-instance v1, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2, v10, v9}, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;-><init>(Lcom/android/phone/LewaCallCard;Landroid/content/ContentResolver;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    iput-object v1, p0, Lcom/android/phone/LewaCallCard;->mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    .line 883
    .end local v9           #call:Lcom/android/internal/telephony/Call;
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #conn:Lcom/android/internal/telephony/Connection;
    .end local v14           #phoneType:I
    :cond_3
    if-nez p4, :cond_4

    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    if-eqz v1, :cond_4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 884
    iget-object v1, p0, Lcom/android/phone/LewaCallCard;->mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    const/4 v3, 0x0

    const-string v2, "content://com.lewa.providers.location/special_phone"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "logo"

    aput-object v6, v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number=\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_4
    return-void

    .line 847
    .restart local v9       #call:Lcom/android/internal/telephony/Call;
    .restart local v10       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v11       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v14       #phoneType:I
    :cond_5
    const/4 v1, 0x1

    if-eq v14, v1, :cond_6

    const/4 v1, 0x3

    if-ne v14, v1, :cond_7

    .line 849
    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    goto/16 :goto_0

    .line 851
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 858
    .restart local v13       #o:Ljava/lang/Object;
    :cond_8
    instance-of v1, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    .line 859
    check-cast v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v13           #o:Ljava/lang/Object;
    iget-object v10, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 870
    :cond_9
    const/4 v1, 0x1

    if-eq v14, v1, :cond_a

    const/4 v1, 0x3

    if-ne v14, v1, :cond_1

    .line 872
    :cond_a
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    goto/16 :goto_2
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 789
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_6

    .line 793
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    move-object v4, p2

    .line 794
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 795
    .local v4, call:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 796
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 797
    .local v7, phoneType:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 798
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 805
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 808
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 809
    .local v2, presentation:I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onQueryComplete: presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 816
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    .line 817
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #presentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/LewaCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 821
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/phone/LewaCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 827
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 799
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 801
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 803
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

    .line 819
    .restart local v2       #presentation:I
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/LewaCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 823
    .end local v2           #presentation:I
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    :cond_6
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 824
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 825
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/LewaCallCard;->updateElapsedTimeWidget(J)V

    .line 290
    return-void
.end method

.method printStackTrace()V
    .locals 1

    .prologue
    .line 1562
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1563
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1564
    return-void
.end method

.method public resetTitleBg()V
    .locals 0

    .prologue
    .line 3003
    return-void
.end method

.method public seCallCardINVISIBLE()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    :cond_0
    return-void
.end method

.method public seCallCardSmallPhotoINVISIBLE()V
    .locals 3

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoVisibling:Z

    if-eqz v0, :cond_1

    .line 1557
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/LewaCallCard;->showHideCallPhotoAnim(ZJ)V

    .line 1559
    :cond_1
    return-void
.end method

.method public seCallCardSmallPhotoVISIBLE()V
    .locals 3

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1550
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/LewaCallCard;->showHideCallPhotoAnim(ZJ)V

    .line 1552
    :cond_0
    return-void
.end method

.method public seCallCardVISIBLE()V
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    :cond_0
    return-void
.end method

.method public setCallCardSmallPhotoVisib(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter "cm"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1483
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1484
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1485
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1486
    const-string v6, "LewaCallCard"

    const-string v7, "Small photo --- conference call do nothing."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_0
    return-void

    .line 1489
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1490
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_1

    .line 1491
    const-string v8, "updateForegroundCall: no active call, show holding call"

    invoke-static {v8}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1498
    move-object v2, v0

    .line 1501
    const/4 v0, 0x0

    .line 1504
    :cond_1
    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1505
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1506
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1507
    .local v5, state:Lcom/android/internal/telephony/Call$State;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v8, :cond_7

    .line 1508
    const/4 v4, 0x0

    .line 1509
    .local v4, showSecondaryCallInfo:Z
    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/LewaInCallTouchUi;->isCheckedForKeyboard()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isMoreShow()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/LewaInCallTouchUi;->isAudioOptionsShow()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1512
    const/4 v4, 0x1

    .line 1514
    :cond_2
    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1515
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->seCallCardSmallPhotoINVISIBLE()V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 1514
    goto :goto_1

    .line 1518
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v4           #showSecondaryCallInfo:Z
    .end local v5           #state:Lcom/android/internal/telephony/Call$State;
    :cond_4
    if-eqz v0, :cond_7

    .line 1519
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1520
    .restart local v5       #state:Lcom/android/internal/telephony/Call$State;
    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v8, :cond_7

    .line 1521
    const/4 v4, 0x0

    .line 1522
    .restart local v4       #showSecondaryCallInfo:Z
    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/LewaInCallTouchUi;->isCheckedForKeyboard()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isMoreShow()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/LewaInCallTouchUi;->isAudioOptionsShow()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1524
    const/4 v4, 0x1

    .line 1526
    :cond_5
    iget-object v8, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1527
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->seCallCardSmallPhotoINVISIBLE()V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    .line 1526
    goto :goto_2

    .line 1532
    .end local v4           #showSecondaryCallInfo:Z
    .end local v5           #state:Lcom/android/internal/telephony/Call$State;
    :cond_7
    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/LewaInCallTouchUi;->isCheckedForKeyboard()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isMoreShow()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/LewaInCallTouchUi;->isAudioOptionsShow()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/LewaCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 1535
    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1537
    const-string v6, "LewaCallCard"

    const-string v7, "ring call show small photo."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1540
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->seCallCardSmallPhotoINVISIBLE()V

    goto/16 :goto_0

    .line 1543
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->seCallCardSmallPhotoVISIBLE()V

    goto/16 :goto_0
.end method

.method public setCallCardVisib()V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mInCallTouchUi:Lcom/android/phone/LewaInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/LewaInCallTouchUi;->isCheckedForKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->seCallCardINVISIBLE()V

    .line 1464
    :goto_0
    return-void

    .line 1462
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->seCallCardVISIBLE()V

    goto :goto_0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter "inCallScreen"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 283
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/phone/LewaCallCard;->mInCallTouchUi:Lcom/android/phone/LewaInCallTouchUi;

    .line 284
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/LewaInCallTouchUi;

    move-result-object v0

    goto :goto_0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;Lcom/android/phone/LewaInCallTouchUi;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "inCallTouchUI"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 278
    iput-object p2, p0, Lcom/android/phone/LewaCallCard;->mInCallTouchUi:Lcom/android/phone/LewaInCallTouchUi;

    .line 279
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 2298
    iput p1, p0, Lcom/android/phone/LewaCallCard;->mIncomingCallWidgetHintTextResId:I

    .line 2299
    iput p2, p0, Lcom/android/phone/LewaCallCard;->mIncomingCallWidgetHintColorResId:I

    .line 2300
    return-void
.end method

.method public setPhotoInvisible()V
    .locals 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3108
    :cond_0
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 1371
    return-void
.end method

.method showHideCallPhotoAnim(ZJ)V
    .locals 12
    .parameter "isShow"
    .parameter "delay"

    .prologue
    .line 1567
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    if-nez v9, :cond_1

    .line 1568
    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    :goto_1
    return-void

    .line 1568
    :cond_0
    const/4 v9, 0x4

    goto :goto_0

    .line 1572
    :cond_1
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1573
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_2

    .line 1574
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1577
    :cond_2
    iget-object v9, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1578
    if-eqz v0, :cond_3

    .line 1579
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1582
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    .local v4, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-virtual {p0}, Lcom/android/phone/LewaCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1589
    .local v3, height:I
    if-eqz p1, :cond_4

    .line 1590
    neg-int v9, v3

    int-to-float v7, v9

    .line 1591
    .local v7, startPos:F
    const/4 v1, 0x0

    .line 1592
    .local v1, endPos:F
    const v8, 0x3f19999a

    .line 1593
    .local v8, startScale:F
    const/high16 v2, 0x3f80

    .line 1601
    .local v2, endScale:F
    :goto_2
    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v7, v10, v11

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v10, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1604
    .local v6, showHideAnimPhoto:Landroid/animation/ObjectAnimator;
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    iget-object v10, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v10, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1609
    .local v5, showHideAnimInfo:Landroid/animation/ObjectAnimator;
    new-instance v9, Lcom/android/phone/LewaCallCard$2;

    invoke-direct {v9, p0, p1}, Lcom/android/phone/LewaCallCard$2;-><init>(Lcom/android/phone/LewaCallCard;Z)V

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1627
    iput-boolean p1, p0, Lcom/android/phone/LewaCallCard;->mSmallPhotoVisibling:Z

    .line 1628
    const-wide/16 v9, 0xfa

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1629
    invoke-virtual {v6, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1630
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 1631
    const-wide/16 v9, 0xfa

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1632
    invoke-virtual {v5, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1633
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 1595
    .end local v1           #endPos:F
    .end local v2           #endScale:F
    .end local v5           #showHideAnimInfo:Landroid/animation/ObjectAnimator;
    .end local v6           #showHideAnimPhoto:Landroid/animation/ObjectAnimator;
    .end local v7           #startPos:F
    .end local v8           #startScale:F
    :cond_4
    const/4 v7, 0x0

    .line 1596
    .restart local v7       #startPos:F
    neg-int v9, v3

    int-to-float v1, v9

    .line 1597
    .restart local v1       #endPos:F
    const/high16 v8, 0x3f80

    .line 1598
    .restart local v8       #startScale:F
    const v2, 0x3f19999a

    .restart local v2       #endScale:F
    goto/16 :goto_2
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 3077
    return-void
.end method

.method public stripIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 2484
    if-nez p1, :cond_0

    move-object v3, p1

    .line 2494
    .end local p1
    .local v3, number:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2488
    .end local v3           #number:Ljava/lang/String;
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mIpPrefixStr:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 2489
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2490
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local v4           #prefix:Ljava/lang/String;
    :cond_1
    move-object v3, p1

    .line 2494
    .end local p1
    .restart local v3       #number:Ljava/lang/String;
    goto :goto_0

    .line 2488
    .end local v3           #number:Ljava/lang/String;
    .restart local v4       #prefix:Ljava/lang/String;
    .restart local p1
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method updateElapsedTimeWidget(J)V
    .locals 16
    .parameter "timeElapsed"

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1133
    .local v4, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    .line 1135
    .local v8, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v12, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v12, :cond_1

    const-wide/16 v12, 0x2

    cmp-long v12, p1, v12

    if-gez v12, :cond_1

    .line 1136
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1137
    .local v10, vtcall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 1138
    .local v11, vtconn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1139
    .local v5, cstate:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1140
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v12, "button_vibrate_outgoing"

    const/4 v13, 0x1

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1141
    .local v9, vibOutgoing:Z
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v12, :cond_1

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    if-nez v12, :cond_1

    instance-of v12, v11, Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v12, :cond_1

    .line 1143
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    .line 1144
    .local v2, callDurationMsec:J
    instance-of v12, v11, Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v12, :cond_2

    const/16 v6, 0x4b0

    .line 1146
    .local v6, minTimetocheck:I
    :goto_0
    int-to-long v12, v6

    cmp-long v12, v2, v12

    if-gez v12, :cond_1

    .line 1147
    if-eqz v9, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LewaCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/phone/PhoneApp;->vibrate(III)V

    .line 1152
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v12, :cond_1

    .line 1153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallScreen;->doSpeacialNumberAutoShowDialPad(Ljava/lang/String;)V

    .line 1159
    .end local v2           #callDurationMsec:J
    .end local v5           #cstate:Lcom/android/internal/telephony/Call$State;
    .end local v6           #minTimetocheck:I
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v9           #vibOutgoing:Z
    .end local v10           #vtcall:Lcom/android/internal/telephony/Call;
    .end local v11           #vtconn:Lcom/android/internal/telephony/Connection;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateElapsedTimeWidget: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 1160
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-nez v12, :cond_3

    .line 1161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mElapsedType:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    :goto_1
    return-void

    .line 1144
    .restart local v2       #callDurationMsec:J
    .restart local v5       #cstate:Lcom/android/internal/telephony/Call$State;
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    .restart local v9       #vibOutgoing:Z
    .restart local v10       #vtcall:Lcom/android/internal/telephony/Call;
    .restart local v11       #vtconn:Lcom/android/internal/telephony/Connection;
    :cond_2
    const/16 v6, 0xc8

    goto :goto_0

    .line 1164
    .end local v2           #callDurationMsec:J
    .end local v5           #cstate:Lcom/android/internal/telephony/Call$State;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v9           #vibOutgoing:Z
    .end local v10           #vtcall:Lcom/android/internal/telephony/Call;
    .end local v11           #vtconn:Lcom/android/internal/telephony/Connection;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mElapsedType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/LewaCallCard;->mUppertitleTtip:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/LewaCallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static/range {p1 .. p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 1121
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1122
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/LewaCallCard;->updateElapsedTimeWidget(J)V

    .line 1125
    return-void
.end method

.method public updateForLanguageChange()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 333
    sput-boolean v0, Lcom/android/phone/LewaCallCard;->mLocaleChanged:Z

    .line 334
    sput-boolean v0, Lcom/android/phone/LewaCallCard;->mLCforUserData:Z

    .line 335
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "cm"

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/LewaCallCard;->log(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 347
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 348
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 349
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 352
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->mNote:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->mYellowPage:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 358
    iget-object v5, p0, Lcom/android/phone/LewaCallCard;->callCardALL:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/phone/LewaCallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 369
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 378
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    .line 381
    .local v3, skipUpdateRingingCall:Z
    :cond_3
    if-eqz v3, :cond_4

    .line 382
    invoke-direct {p0, p1}, Lcom/android/phone/LewaCallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 419
    .end local v3           #skipUpdateRingingCall:Z
    :goto_0
    return-void

    .line 389
    .restart local v3       #skipUpdateRingingCall:Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/LewaCallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 390
    .end local v3           #skipUpdateRingingCall:Z
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_7

    .line 400
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/LewaCallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 417
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/phone/LewaCallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method

.method updateYellowPageInfos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "yellowPageInfo"

    .prologue
    .line 3112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/android/phone/LewaCallCard;->mYellowPageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    :cond_0
    return-void
.end method
