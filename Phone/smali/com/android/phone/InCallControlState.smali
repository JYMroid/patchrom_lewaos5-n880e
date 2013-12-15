.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "InCallControlState"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canShowSwap:Z

.field public canSwap:Z

.field public contactsEnabled:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public moreVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 94
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 95
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 268
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "InCallControlState:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canEndCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public update()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 102
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    .line 113
    .local v10, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 114
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 115
    .local v5, hasHoldingCall:Z
    if-eqz v2, :cond_7

    .line 116
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 117
    .local v3, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_6

    move v4, v11

    .line 126
    .local v4, hasActiveForegroundCall:Z
    :goto_0
    sget-object v13, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v13, :cond_0

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_8

    .line 127
    :cond_0
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->contactsEnabled:Z

    .line 133
    :goto_1
    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    if-eq v13, v14, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 137
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 138
    iget-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v13, :cond_9

    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v13

    if-nez v13, :cond_9

    move v13, v11

    :goto_2
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 153
    :goto_3
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 160
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 163
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/LewaPhoneWrapper;->okToShowSwapButton(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    .line 164
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 165
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 168
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 169
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 170
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 178
    :goto_4
    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v13, :cond_e

    move v13, v11

    :goto_5
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 179
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 186
    if-eqz v2, :cond_f

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 191
    .local v1, c:Lcom/android/internal/telephony/Connection;
    :goto_6
    const/4 v7, 0x0

    .line 192
    .local v7, isEmergencyCall:Z
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    .line 195
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 196
    .local v6, isECM:Z
    if-nez v7, :cond_2

    if-eqz v6, :cond_10

    .line 197
    :cond_2
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 198
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 206
    :goto_7
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 210
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 213
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 215
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 219
    if-eqz v5, :cond_11

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_11

    move v13, v11

    :goto_8
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 222
    if-eqz v4, :cond_12

    if-nez v5, :cond_12

    move v8, v11

    .line 223
    .local v8, okToHold:Z
    :goto_9
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 224
    .local v9, okToUnhold:Z
    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    move v12, v11

    :cond_4
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 245
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_5
    :goto_a
    return-void

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #hasActiveForegroundCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_6
    move v4, v12

    .line 117
    goto/16 :goto_0

    .line 119
    .end local v3           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 120
    .restart local v3       #fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v4, 0x0

    .restart local v4       #hasActiveForegroundCall:Z
    goto/16 :goto_0

    .line 129
    :cond_8
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->contactsEnabled:Z

    goto/16 :goto_1

    :cond_9
    move v13, v12

    .line 138
    goto/16 :goto_2

    .line 140
    :cond_a
    if-eqz v5, :cond_c

    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 143
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 144
    iget-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v13, :cond_b

    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v13

    if-nez v13, :cond_b

    move v13, v11

    :goto_b
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3

    :cond_b
    move v13, v12

    goto :goto_b

    .line 148
    :cond_c
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 149
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3

    .line 172
    :cond_d
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 173
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_4

    :cond_e
    move v13, v12

    .line 178
    goto/16 :goto_5

    .line 189
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    goto/16 :goto_6

    .line 200
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_10
    iput-boolean v4, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 201
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_7

    :cond_11
    move v13, v12

    .line 219
    goto :goto_8

    :cond_12
    move v8, v12

    .line 222
    goto :goto_9

    .line 225
    :cond_13
    if-eqz v5, :cond_14

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_14

    .line 230
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 231
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 233
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 234
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 235
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_a

    .line 239
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_14
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 240
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 241
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_a
.end method
