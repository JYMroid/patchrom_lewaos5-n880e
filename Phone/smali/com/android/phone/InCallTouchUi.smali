.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# static fields
.field private static final ANSWER_CALL_ID:I = 0x0

.field private static final DBG:Z = false

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final ENABLE_PING_ON_RING_EVENTS:Z = false

.field private static final INCOMING_CALL_WIDGET_PING:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "InCallTouchUi"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final SEND_SMS_ID:I = 0x1


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewStub;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIncomingCallWidgetIsFadingOut:Z

.field private mIncomingCallWidgetShouldBeReset:Z

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mShowInCallControlsDuringHidingAnimation:Z

.field private mSwapButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 119
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    return p1
.end method

.method private dumpBottomButtonState()V
    .locals 2

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - dialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - speaker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - cdmaMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - manageConferenceButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method private static getButtonState(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .parameter "view"

    .prologue
    .line 649
    if-nez p0, :cond_0

    .line 650
    const-string v1, "(null)"

    .line 661
    .end local p0
    :goto_0
    return-object v1

    .line 652
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VISIBLE"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    instance-of v1, p0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p0, Landroid/widget/ImageButton;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 653
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const-string v1, "INVISIBLE"

    goto :goto_1

    :cond_3
    const-string v1, "GONE"

    goto :goto_1

    .line 657
    :cond_4
    instance-of v1, p0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p0

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p0, Landroid/widget/CompoundButton;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private handleAudioButtonClick()V
    .locals 2

    .prologue
    .line 783
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 784
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    if-eqz v1, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    const-string v1, "hideIncomingCallWidget()"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    .line 1086
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1087
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1088
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1089
    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1315
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupExtraButtons()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 622
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 623
    const-string v0, "InCallTouchUi"

    const-string v1, "CDMA Merge button is null even after ViewStub being inflated."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 630
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    goto :goto_0
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 799
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 801
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f100003

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 803
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 804
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 808
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 810
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 817
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f090157

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 818
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 824
    const v7, 0x7f090158

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 825
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f090159

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 826
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 827
    .local v5, usingHeadset:Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 828
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 829
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 830
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 835
    const v7, 0x7f09015a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 836
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 840
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 845
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 846
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 827
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter "ringingCall"

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x0

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIncomingCallWidget(). widget visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1133
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1134
    .local v1, animator:Landroid/view/ViewPropertyAnimator;
    if-eqz v1, :cond_0

    .line 1135
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1137
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1143
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1145
    .local v0, allowRespondViaSms:Z
    if-eqz v0, :cond_3

    const v2, 0x7f080008

    .line 1151
    .local v2, targetResourceId:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1152
    if-eqz v0, :cond_4

    .line 1155
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1156
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1158
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 1170
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1172
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    if-eqz v3, :cond_2

    .line 1177
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 1178
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1181
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1193
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1194
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1201
    return-void

    .line 1145
    .end local v2           #targetResourceId:I
    :cond_3
    const v2, 0x7f08000b

    goto :goto_0

    .line 1162
    .restart local v2       #targetResourceId:I
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1163
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1165
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_1
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 14
    .parameter "inCallControlState"

    .prologue
    const/4 v9, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x0

    .line 687
    const/4 v8, 0x0

    .line 690
    .local v8, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 693
    .local v5, showMoreIndicator:Z
    const/4 v7, 0x0

    .line 694
    .local v7, showSpeakerOnIcon:Z
    const/4 v6, 0x0

    .line 695
    .local v6, showSpeakerOffIcon:Z
    const/4 v4, 0x0

    .line 696
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 698
    .local v3, showBluetoothIcon:Z
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v12, :cond_2

    .line 701
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 708
    const/4 v5, 0x1

    .line 709
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v9, :cond_0

    .line 710
    const/4 v3, 0x1

    .line 750
    :goto_0
    const/4 v0, 0x0

    .line 751
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 753
    .local v1, VISIBLE:I
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 756
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const v9, 0x7f09014e

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v8, :cond_5

    move v9, v11

    :goto_1
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 759
    const v9, 0x7f09014f

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v5, :cond_6

    move v9, v11

    :goto_2
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 762
    const v9, 0x7f09014a

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v3, :cond_7

    move v9, v11

    :goto_3
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 765
    const v9, 0x7f09014b

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v4, :cond_8

    :goto_4
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 773
    return-void

    .line 711
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v9, :cond_1

    .line 712
    const/4 v7, 0x1

    goto :goto_0

    .line 714
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 720
    :cond_2
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v12, :cond_4

    .line 723
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 727
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v13, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v12, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 730
    const/4 v8, 0x1

    .line 732
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 733
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v12, :cond_3

    move v6, v9

    :goto_5
    goto :goto_0

    :cond_3
    move v6, v10

    goto :goto_5

    .line 739
    :cond_4
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 740
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 743
    const/4 v8, 0x1

    .line 744
    const/4 v6, 0x1

    goto :goto_0

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move v9, v10

    .line 756
    goto :goto_1

    :cond_6
    move v9, v10

    .line 759
    goto :goto_2

    :cond_7
    move v9, v10

    .line 762
    goto :goto_3

    :cond_8
    move v11, v10

    .line 765
    goto :goto_4
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 427
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 441
    .local v1, phoneType:I
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 452
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v4, :cond_6

    .line 453
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 454
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 455
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 482
    :goto_0
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_1

    .line 483
    if-eq v1, v3, :cond_0

    if-ne v1, v7, :cond_b

    .line 490
    :cond_0
    const-string v4, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 506
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 507
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 510
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 511
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 514
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 520
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v4, :cond_c

    .line 521
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 522
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 523
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 524
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 552
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 553
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v4, :cond_2

    .line 559
    const-string v4, "InCallTouchUi"

    const-string v7, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    if-ne v1, v8, :cond_3

    .line 563
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_3

    .line 569
    const-string v4, "InCallTouchUi"

    const-string v7, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_3
    if-ne v1, v8, :cond_f

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_f

    move v2, v3

    .line 587
    .local v2, showCdmaMerge:Z
    :goto_2
    if-nez v2, :cond_4

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v4, :cond_10

    .line 589
    .local v3, showExtraButtonRow:Z
    :cond_4
    :goto_3
    if-eqz v3, :cond_13

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v4, :cond_13

    .line 591
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 595
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v4, :cond_5

    .line 596
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->setupExtraButtons()V

    .line 598
    :cond_5
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-eqz v2, :cond_11

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 599
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v4, :cond_12

    .line 600
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 601
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 613
    :goto_5
    return-void

    .line 456
    .end local v2           #showCdmaMerge:Z
    .end local v3           #showExtraButtonRow:Z
    :cond_6
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_a

    .line 457
    if-ne v1, v8, :cond_7

    .line 461
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 462
    :cond_7
    if-eq v1, v3, :cond_8

    if-ne v1, v7, :cond_9

    .line 464
    :cond_8
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 465
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 466
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 468
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

    .line 478
    :cond_a
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 479
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 480
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 492
    :cond_b
    if-eq v1, v8, :cond_1

    .line 497
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

    .line 525
    :cond_c
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_d

    .line 526
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 527
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 528
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 540
    :cond_d
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v4, :cond_e

    .line 541
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 542
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 543
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 544
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 545
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 547
    :cond_e
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 548
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 549
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    move v2, v5

    .line 585
    goto/16 :goto_2

    .restart local v2       #showCdmaMerge:Z
    :cond_10
    move v3, v5

    .line 587
    goto/16 :goto_3

    .restart local v3       #showExtraButtonRow:Z
    :cond_11
    move v4, v6

    .line 598
    goto/16 :goto_4

    .line 603
    :cond_12
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 606
    :cond_13
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_5
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 860
    :cond_0
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 950
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 953
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 959
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 961
    return v0
.end method

.method public isCheckedForKeyboard()Z
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 366
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 386
    const-string v1, "InCallTouchUi"

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

    .line 389
    :goto_0
    return-void

    .line 378
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 382
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x7f09006c -> :sswitch_0
        0x7f09006f -> :sswitch_0
        0x7f090088 -> :sswitch_0
        0x7f090089 -> :sswitch_0
        0x7f09008a -> :sswitch_1
        0x7f09008b -> :sswitch_0
        0x7f09008c -> :sswitch_0
        0x7f09008d -> :sswitch_0
        0x7f09008f -> :sswitch_0
        0x7f090090 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 922
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 159
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 160
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 163
    const v1, 0x7f090085

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 168
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 171
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 176
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 179
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 182
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 185
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 188
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    .line 210
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 211
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 972
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1214
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 1220
    packed-switch p2, :pswitch_data_0

    .line 1227
    const-string v2, "InCallTouchUi"

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

    .line 1229
    const/4 v1, 0x0

    .line 1230
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1236
    .local v0, hintColorResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1238
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_0
    return-void

    .line 1223
    :pswitch_0
    const/4 v1, 0x0

    .line 1224
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1225
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 1220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1251
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 396
    .local v2, id:I
    packed-switch v2, :pswitch_data_0

    .line 417
    :pswitch_0
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick() with unexpected View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    return v3

    .line 404
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 405
    .local v1, description:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 410
    .local v0, cheatSheet:Landroid/widget/Toast;
    const/16 v4, 0x51

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 412
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    .end local v0           #cheatSheet:Landroid/widget/Toast;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x7f090089
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 887
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 888
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :goto_0
    return v3

    .line 892
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 906
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x7f090157
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 977
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 988
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 989
    const-string v0, "InCallTouchUi"

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

    .line 1064
    :goto_0
    return-void

    .line 1000
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1001
    packed-switch p2, :pswitch_data_0

    .line 1051
    const-string v0, "InCallTouchUi"

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

    .line 1059
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1004
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1015
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1044
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 876
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 878
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 149
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1266
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-nez v0, :cond_2

    .line 1273
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1280
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 1307
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v11, 0x0

    .line 219
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 220
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 227
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v5, 0x0

    .line 228
    .local v5, showIncomingCallControls:Z
    const/4 v4, 0x0

    .line 230
    .local v4, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 231
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 238
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 246
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 248
    const/4 v5, 0x1

    .line 260
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 261
    .local v1, now:J
    iget-wide v7, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-gez v7, :cond_3

    .line 262
    const-string v7, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 263
    const/4 v5, 0x0

    .line 278
    .end local v1           #now:J
    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 279
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 268
    const/4 v4, 0x1

    goto :goto_1

    .line 282
    :cond_5
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-eqz v7, :cond_6

    .line 287
    const/4 v4, 0x1

    .line 293
    :cond_6
    if-eqz v4, :cond_8

    .line 295
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 296
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :goto_2
    if-eqz v5, :cond_9

    .line 304
    invoke-direct {p0, v3}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 313
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v7, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 331
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_7

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    .line 338
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto :goto_0

    .line 299
    :cond_8
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 320
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
