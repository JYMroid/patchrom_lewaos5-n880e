.class public Lcom/android/phone/LewaInCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "LewaInCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;,
        Lcom/android/phone/LewaInCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field private static final ANSWER_CALL_ID:I = 0x0

.field private static final DBG:Z = true

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final ENABLE_PING_ON_RING_EVENTS:Z = false

.field private static final INCOMING_CALL_ACTION_DURATION:I = 0x1f4

.field private static final INCOMING_CALL_TRIGGER:I = 0x6f

.field private static final INCOMING_CALL_WIDGET_PING:I = 0x65

.field private static final IN_CALL_CONTROL_TRANSITION_DELAY_TIME:I = 0x64

.field private static final IN_CALL_CONTROL_TRANSITION_SHAKE_TIME:I = 0x1e

.field private static final IN_CALL_CONTROL_TRANSITION_TIME:I = 0x82

.field private static final IN_CALL_WIDGET_TRANSITION_TIME:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "LewaInCallTouchUi"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x532L

.field private static final SEND_SMS_ID:I = 0x1

.field private static final USE_INCALL_STYLE:Z = true


# instance fields
.field private mAddButton:Landroid/widget/CompoundButton;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioButtonText:Ljava/lang/String;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mAudioOptionsView:Landroid/view/View;

.field private mAudioOptoinBT:Landroid/widget/CompoundButton;

.field private mAudioOptoinBTView:Landroid/view/View;

.field private mAudioOptoinHandset:Landroid/widget/CompoundButton;

.field private mAudioOptoinHandsetView:Landroid/view/View;

.field private mAudioOptoinSpeaker:Landroid/widget/CompoundButton;

.field private mAudioOptoinSpeakerView:Landroid/view/View;

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mContactButton:Landroid/widget/CompoundButton;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field protected mHasPermanentMenuKey:Z

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomAdvancedView:Llewa/laml/AdvancedView;

.field private mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

.field private mIncomingMenuButton:Landroid/widget/ImageButton;

.field private mLastIncomingCallActionTime:J

.field private mLastIncomingCallActionType:I

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/CompoundButton;

.field private mMoreButton:Landroid/widget/CompoundButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mRecordTip:Landroid/widget/TextView;

.field private mRoot:Llewa/laml/ScreenElementRoot;

.field private mShowInCallControlsDuringHidingAnimation:Z

.field private mShowIncomingCallControls:Z

.field private mSwapButton:Landroid/widget/CompoundButton;

.field private tLayoutMore:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowIncomingCallControls:Z

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    .line 152
    iput-boolean v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioModePopupVisible:Z

    .line 171
    new-instance v1, Lcom/android/phone/LewaInCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/LewaInCallTouchUi$1;-><init>(Lcom/android/phone/LewaInCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 1714
    iput-boolean v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mHasPermanentMenuKey:Z

    .line 200
    const-string v1, "LewaInCallTouchUi constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 202
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

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04002c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 211
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LewaInCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LewaInCallTouchUi;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/LewaInCallTouchUi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/LewaInCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/LewaInCallTouchUi;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/LewaInCallTouchUi;)Llewa/laml/AdvancedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/LewaInCallTouchUi;Llewa/laml/AdvancedView;)Llewa/laml/AdvancedView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/LewaInCallTouchUi;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addIncomWidget(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 288
    new-instance v1, Lcom/lewa/screenengine/IncallScreenResourceLoader;

    invoke-direct {v1, p1}, Lcom/lewa/screenengine/IncallScreenResourceLoader;-><init>(Landroid/content/Context;)V

    .line 289
    .local v1, res:Lcom/lewa/screenengine/IncallScreenResourceLoader;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/lewa/screenengine/IncallScreenResourceLoader;->setLocal(Ljava/util/Locale;)Llewa/laml/ResourceLoader;

    .line 290
    new-instance v0, Llewa/laml/LifecycleResourceManager;

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Llewa/laml/LifecycleResourceManager;-><init>(Llewa/laml/ResourceLoader;JJ)V

    .line 292
    .local v0, mResourceMgr:Llewa/laml/LifecycleResourceManager;
    new-instance v6, Llewa/laml/ScreenContext;

    new-instance v2, Lcom/android/phone/LewaInCallTouchUi$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaInCallTouchUi$2;-><init>(Lcom/android/phone/LewaInCallTouchUi;)V

    invoke-direct {v6, p1, v0, v2}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;)V

    .line 306
    .local v6, mScreenContext:Llewa/laml/ScreenContext;
    new-instance v2, Llewa/laml/ScreenElementRoot;

    invoke-direct {v2, v6}, Llewa/laml/ScreenElementRoot;-><init>(Llewa/laml/ScreenContext;)V

    iput-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 307
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->load()Z

    .line 308
    return-void
.end method

.method private getCallSlot(Lcom/android/internal/telephony/Call;)I
    .locals 5
    .parameter "call"

    .prologue
    const/4 v4, -0x1

    .line 1408
    const/4 v1, -0x1

    .line 1409
    .local v1, slot:I
    invoke-static {p1}, Lcom/android/phone/LewaPhoneWrapper;->getSubscriptionByCall(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 1410
    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/android/phone/LewaPhoneWrapper;->isDualSIMSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1413
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getStateGemini(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 1414
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    .line 1419
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_1

    .line 1420
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getPendingMmiCodesGeminiSize(Lcom/android/internal/telephony/Phone;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1421
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    .line 1428
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_1
    return v1

    .line 1415
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getStateGemini(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 1416
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    goto :goto_0

    .line 1422
    :cond_3
    sget v2, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    invoke-static {v0, v2}, Lcom/android/phone/LewaPhoneWrapper;->getPendingMmiCodesGeminiSize(Lcom/android/internal/telephony/Phone;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1423
    sget v1, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    goto :goto_1
.end method

.method private hideIncomingCallWidget()V
    .locals 4

    .prologue
    .line 1247
    const-string v2, "hideIncomingCallWidget()..."

    invoke-direct {p0, v2}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1249
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    invoke-virtual {v2}, Llewa/laml/AdvancedView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    invoke-virtual {v2}, Llewa/laml/AdvancedView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    .line 1265
    .local v1, targetView:Landroid/view/View;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1266
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1267
    new-instance v2, Lcom/android/phone/LewaInCallTouchUi$4;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/LewaInCallTouchUi$4;-><init>(Lcom/android/phone/LewaInCallTouchUi;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1298
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initAudioOpions()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinBT:Landroid/widget/CompoundButton;

    .line 247
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinHandset:Landroid/widget/CompoundButton;

    .line 248
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinSpeaker:Landroid/widget/CompoundButton;

    .line 250
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinBTView:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinBTView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinHandsetView:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinHandsetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinSpeakerView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinSpeakerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method private initMoreButton()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    .line 264
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mContactButton:Landroid/widget/CompoundButton;

    .line 267
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mContactButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 273
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    .line 276
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    .line 279
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    .line 282
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mRecordTip:Landroid/widget/TextView;

    .line 285
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1706
    const-string v0, "LewaInCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return-void
.end method

.method private showAudioOptions(Z)V
    .locals 4
    .parameter "isShow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 978
    if-nez p1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 996
    :goto_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 997
    return-void

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 982
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 984
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinSpeaker:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 985
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinBT:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 986
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinHandset:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 988
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinBT:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 990
    :cond_1
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v1, :cond_2

    .line 991
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinSpeaker:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptoinHandset:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"

    .prologue
    .line 1305
    const-string v1, "showIncomingCallWidget()..."

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1308
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    if-nez v1, :cond_0

    .line 1309
    new-instance v1, Llewa/laml/AdvancedView;

    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/LewaInCallTouchUi;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v2, v3}, Llewa/laml/AdvancedView;-><init>(Landroid/content/Context;Llewa/laml/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    .line 1310
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    invoke-virtual {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->addView(Landroid/view/View;)V

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llewa/laml/AdvancedView;->setVisibility(I)V

    .line 1313
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    invoke-virtual {v1}, Llewa/laml/AdvancedView;->onResume()V

    .line 1315
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;

    invoke-virtual {v1}, Llewa/laml/AdvancedView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1316
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_1

    .line 1317
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1320
    :cond_1
    return-void
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 7
    .parameter "inCallControlState"

    .prologue
    const v5, 0x7f02001d

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 918
    const-string v4, "updateAudioButton()..."

    invoke-direct {p0, v4}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 920
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 921
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 923
    .local v0, audioDrawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v4, :cond_2

    .line 924
    const-string v4, "- updateAudioButton: \'popup menu action button\' mode..."

    invoke-direct {p0, v4}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 926
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 928
    iget-boolean v2, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v2, :cond_0

    .line 929
    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    .line 930
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 931
    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 953
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 955
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/CompoundButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 956
    return-void

    .line 932
    :cond_0
    iget-boolean v2, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v2, :cond_1

    .line 933
    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    .line 934
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 937
    :cond_1
    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    .line 938
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 939
    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 947
    :cond_2
    const v4, 0x7f070289

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    .line 948
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 950
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    return-void
.end method

.method getAudioOptionsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    return-object v0
.end method

.method getLayoutMore()Landroid/view/View;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    return-object v0
.end method

.method public getTouchUiHeight()I
    .locals 4

    .prologue
    const v3, 0x7f0d001b

    .line 1071
    const/4 v0, 0x0

    .line 1074
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1077
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1079
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 1082
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1092
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1094
    return v0

    .line 1084
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method handleAudioButtonClick(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 967
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 968
    const-string v1, "- handleAudioButtonClick: \'popup menu\' mode..."

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 969
    invoke-direct {p0, p1}, Lcom/android/phone/LewaInCallTouchUi;->showAudioOptions(Z)V

    .line 975
    :goto_0
    return-void

    .line 971
    :cond_0
    const-string v1, "- handleAudioButtonClick: \'speaker toggle\' mode..."

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    .line 973
    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    goto :goto_0
.end method

.method handleAudioOptoins(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1027
    packed-switch p1, :pswitch_data_0

    .line 1046
    :goto_0
    :pswitch_0
    return-void

    .line 1029
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 1044
    :goto_1
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 1045
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    goto :goto_0

    .line 1033
    .end local v0           #inCallControlState:Lcom/android/phone/InCallControlState;
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_1

    .line 1037
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_1

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x7f090076
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hideIncomingCall()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/lewa/widget/IncomWidgetView;->setAlpha(F)V

    .line 1577
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lewa/widget/IncomWidgetView;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v0}, Lcom/lewa/widget/IncomWidgetView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1580
    :cond_0
    return-void
.end method

.method public isAudioOptionsShow()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->isFadingOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckedForKeyboard()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckedForMoreBtns()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMoreShow()Z
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 613
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 615
    sparse-switch v0, :sswitch_data_0

    .line 653
    const-string v1, "LewaInCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void

    .line 631
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 637
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->handleAudioOptoins(I)V

    goto :goto_0

    .line 646
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x7f09006c -> :sswitch_0
        0x7f09006f -> :sswitch_0
        0x7f090076 -> :sswitch_1
        0x7f090078 -> :sswitch_1
        0x7f09007a -> :sswitch_1
        0x7f090088 -> :sswitch_0
        0x7f090089 -> :sswitch_0
        0x7f09008a -> :sswitch_0
        0x7f09008b -> :sswitch_0
        0x7f09008c -> :sswitch_0
        0x7f09008d -> :sswitch_0
        0x7f09008f -> :sswitch_0
        0x7f090090 -> :sswitch_0
        0x7f0900a6 -> :sswitch_2
        0x7f0900a9 -> :sswitch_0
        0x7f0900b8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const v4, 0x7f090090

    const v3, 0x7f09008f

    const/16 v2, 0x8

    .line 317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LewaInCallTouchUi onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHasPermanentMenuKey:Z

    .line 324
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/IncomWidgetView;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    .line 325
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v0, p0}, Lcom/lewa/widget/IncomWidgetView;->setOnTriggerListener(Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;)V

    .line 328
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 330
    invoke-direct {p0}, Lcom/android/phone/LewaInCallTouchUi;->initMoreButton()V

    .line 331
    invoke-direct {p0}, Lcom/android/phone/LewaInCallTouchUi;->initAudioOpions()V

    .line 343
    iget-boolean v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    .line 345
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    .line 349
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_1
    :goto_0
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    .line 377
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 383
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 385
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 387
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 389
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 391
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    .line 393
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 414
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 416
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 420
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 425
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->addIncomWidget(Landroid/content/Context;)V

    .line 445
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    .line 360
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    .line 368
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1104
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1441
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 1447
    packed-switch p2, :pswitch_data_0

    .line 1465
    const-string v2, "LewaInCallTouchUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/4 v1, 0x0

    .line 1468
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1474
    .local v0, hintColorResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1476
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_0
    return-void

    .line 1450
    :pswitch_0
    const/4 v1, 0x0

    .line 1451
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1452
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 1447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1489
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1108
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0}, Lcom/android/phone/LewaInCallTouchUi;->hideIncomingCallWidget()V

    .line 1124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1125
    iput p2, p0, Lcom/android/phone/LewaInCallTouchUi;->mLastIncomingCallActionType:I

    .line 1133
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1134
    const-string v0, "LewaInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :goto_0
    return-void

    .line 1138
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1157
    const-string v0, "LewaInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1140
    :pswitch_0
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1143
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1147
    :pswitch_1
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1152
    :pswitch_2
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioOptionsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->showAudioOptions(Z)V

    .line 1023
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 216
    return-void
.end method

.method setLayoutMoreVisible(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    :cond_0
    return-void

    .line 1564
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method showHideControlAnim(Landroid/view/View;IIJJ)V
    .locals 7
    .parameter "object"
    .parameter "startHeight"
    .parameter "endHeight"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 1207
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1208
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1212
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .local v1, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, p2

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, p3

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1217
    .local v2, showHideAnim:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/phone/LewaInCallTouchUi$3;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/LewaInCallTouchUi$3;-><init>(Lcom/android/phone/LewaInCallTouchUi;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1236
    invoke-virtual {v2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1237
    invoke-virtual {v2, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1238
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40b0

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1239
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1241
    return-void
.end method

.method showIncallControlAnim()V
    .locals 13

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1168
    .local v2, endHeight:I
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1169
    .local v12, shakeHeight:I
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v11, v2, v0

    .line 1171
    .local v11, height:I
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const-wide/16 v4, 0x82

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1180
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    const-wide/16 v7, 0x82

    const-wide/16 v9, 0x64

    move-object v3, p0

    move v5, v11

    move v6, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1182
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    const-wide/16 v7, 0x1e

    const-wide/16 v9, 0xe6

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1186
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const-wide/16 v7, 0x82

    const-wide/16 v9, 0xc8

    move-object v3, p0

    move v5, v11

    move v6, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1188
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    const-wide/16 v7, 0x1e

    const-wide/16 v9, 0x14a

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1192
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    const-wide/16 v7, 0x82

    const-wide/16 v9, 0x12c

    move-object v3, p0

    move v5, v11

    move v6, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1194
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    const-wide/16 v7, 0x1e

    const-wide/16 v9, 0x1ae

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1199
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    const-wide/16 v7, 0x82

    const-wide/16 v9, 0x190

    move-object v3, p0

    move v5, v11

    move v6, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1201
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    const-wide/16 v7, 0x1e

    const-wide/16 v9, 0x212

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/LewaInCallTouchUi;->showHideControlAnim(Landroid/view/View;IIJJ)V

    .line 1203
    return-void
.end method

.method public showIncomingCallControls()Z
    .locals 1

    .prologue
    .line 1570
    iget-boolean v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowIncomingCallControls:Z

    return v0
.end method

.method touchAnswerCall()V
    .locals 1

    .prologue
    .line 691
    invoke-static {}, Lcom/android/phone/LewaPhoneWrapper;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 692
    .local v0, ics:Lcom/android/phone/InCallScreen;
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answerVTCall()V

    .line 693
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerPing: mIncomingCallWidget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1548
    :goto_0
    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    if-nez v0, :cond_1

    .line 1511
    const-string v0, "LewaInCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1515
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- triggerPing: mIncomingCallWidget visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v1}, Lcom/lewa/widget/IncomWidgetView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v0}, Lcom/lewa/widget/IncomWidgetView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    const-string v0, "- triggerPing: mIncomingCallWidget no longer visible; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1525
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingCallWidget:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v0}, Lcom/lewa/widget/IncomWidgetView;->ping()V

    .line 1545
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x532

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 700
    invoke-static {}, Lcom/android/phone/LewaPhoneWrapper;->isDMLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->updateInCallControlsDuringDMLocked()V

    .line 901
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 718
    .local v1, phoneType:I
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 722
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v3, 0x0

    .line 734
    .local v3, showExtraButtonRow:Z
    iget-boolean v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    if-eqz v5, :cond_2

    .line 735
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_6

    .line 736
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 737
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 738
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 766
    :goto_1
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_2

    .line 767
    if-eq v1, v2, :cond_1

    if-ne v1, v6, :cond_b

    .line 774
    :cond_1
    const-string v5, "LewaInCallTouchUi"

    const-string v6, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->moreVisible:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 794
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 798
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 799
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 802
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 803
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 806
    invoke-direct {p0, v0}, Lcom/android/phone/LewaInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 807
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v5, :cond_3

    .line 808
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->isAudioOptionsShow()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 815
    :cond_3
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_d

    .line 816
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 817
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 818
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 819
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 851
    :goto_3
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_4

    .line 857
    const-string v5, "LewaInCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_4
    if-ne v1, v8, :cond_10

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_10

    .line 865
    .local v2, showCdmaMerge:Z
    :goto_4
    if-eqz v2, :cond_11

    .line 866
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 867
    const/4 v3, 0x1

    .line 871
    :goto_5
    if-ne v1, v8, :cond_5

    .line 872
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_5

    .line 878
    const-string v5, "LewaInCallTouchUi"

    const-string v6, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_5
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v5, :cond_12

    .line 886
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 887
    const/4 v3, 0x1

    .line 888
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 896
    :goto_6
    if-eqz v3, :cond_13

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v5, :cond_13

    .line 897
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 739
    .end local v2           #showCdmaMerge:Z
    :cond_6
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_a

    .line 740
    if-ne v1, v8, :cond_7

    .line 745
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 746
    :cond_7
    if-eq v1, v2, :cond_8

    if-ne v1, v6, :cond_9

    .line 748
    :cond_8
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 749
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 750
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 752
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 762
    :cond_a
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 763
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 764
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 776
    :cond_b
    if-ne v1, v8, :cond_c

    .line 781
    const-string v5, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v5}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 783
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 820
    :cond_d
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_e

    .line 821
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 822
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 823
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 835
    :cond_e
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v5, :cond_f

    .line 836
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 837
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 838
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 839
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 843
    :cond_f
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 844
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 845
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 847
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    move v2, v4

    .line 863
    goto/16 :goto_4

    .line 869
    .restart local v2       #showCdmaMerge:Z
    :cond_11
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 890
    :cond_12
    iget-object v5, p0, Lcom/android/phone/LewaInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 899
    :cond_13
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method updateInCallControlsDuringDMLocked()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 660
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 667
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 682
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 683
    iget-object v4, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 684
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 686
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 687
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 688
    return-void

    :cond_3
    move v1, v3

    .line 683
    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/LewaInCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;Z)V

    .line 449
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;Z)V
    .locals 13
    .parameter "cm"
    .parameter "ignoreReAction"

    .prologue
    .line 456
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v9, :cond_1

    .line 457
    const-string v9, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    .line 462
    .local v8, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateState: current state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 464
    const/4 v7, 0x0

    .line 465
    .local v7, showIncomingCallControls:Z
    const/4 v6, 0x0

    .line 467
    .local v6, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 468
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 469
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 470
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 472
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 474
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->tLayoutMore:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mRecordTip:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v9

    if-nez v9, :cond_9

    .line 498
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 499
    const-string v9, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 500
    const/4 v7, 0x1

    .line 519
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 520
    .local v3, now:J
    if-nez p2, :cond_6

    iget v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mLastIncomingCallActionType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iget-wide v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v11, 0xc8

    add-long/2addr v9, v11

    cmp-long v9, v3, v9

    if-ltz v9, :cond_5

    :cond_4
    iget v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mLastIncomingCallActionType:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    iget-wide v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v11, 0x1f4

    add-long/2addr v9, v11

    cmp-long v9, v3, v9

    if-gez v9, :cond_6

    .line 522
    :cond_5
    const-string v9, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 523
    const/4 v7, 0x0

    .line 537
    .end local v3           #now:J
    :cond_6
    :goto_2
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    .line 538
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 508
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 509
    :cond_8
    const/4 v6, 0x1

    goto :goto_1

    .line 527
    :cond_9
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 528
    const/4 v6, 0x1

    goto :goto_2

    .line 530
    :cond_a
    const-string v9, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 542
    :cond_b
    iget-boolean v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-eqz v9, :cond_c

    .line 544
    const-string v9, "- updateState: FORCE showing in-call controls during incoming call widget being hidden with animation"

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 547
    const/4 v6, 0x1

    .line 550
    :cond_c
    if-eqz v6, :cond_f

    .line 551
    const-string v9, "- updateState: showing in-call controls..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaInCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 553
    iget-boolean v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-nez v9, :cond_d

    .line 554
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_d
    :goto_3
    if-eqz v7, :cond_11

    .line 562
    const-string v9, "- updateState: showing incoming call widget..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0, v5}, Lcom/android/phone/LewaInCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 566
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-static {p1}, Lcom/android/phone/LewaInCallMenuState;->canIncomingMenuShow(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 568
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 580
    :goto_4
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v9, v9, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 599
    :goto_5
    sget-object v9, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_e

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v9, :cond_0

    .line 606
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/LewaInCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 557
    :cond_f
    const-string v9, "- updateState: HIDING in-call controls..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 558
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 570
    :cond_10
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 582
    :cond_11
    const-string v9, "- updateState: HIDING incoming call widget..."

    invoke-direct {p0, v9}, Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Lcom/android/phone/LewaInCallTouchUi;->hideIncomingCallWidget()V

    .line 584
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 588
    iget-object v9, p0, Lcom/android/phone/LewaInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v9, v9, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_5
.end method
