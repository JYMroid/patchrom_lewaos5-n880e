.class public Lcom/android/phone/LewaPhoneWrapper;
.super Ljava/lang/Object;
.source "LewaPhoneWrapper.java"


# static fields
.field private static final DBG:I = 0x0

.field static GEMINI_SIM_1:I = 0x0

.field static GEMINI_SIM_2:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "LewaPhoneWrapper"

.field static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field static final PROPERTY_OPERATOR_ALPHA_2:Ljava/lang/String; = "gsm.operator.alpha.2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_1:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/LewaPhoneWrapper;->GEMINI_SIM_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCallForceSpeakerON()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public static getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 80
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, rawNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, formattedNumber:Ljava/lang/String;
    :goto_0
    const v3, 0x7f070253

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, titleFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 85
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v2           #titleFormat:Ljava/lang/String;
    :cond_0
    const v3, 0x7f070050

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method static getInCallScreenInstance()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    return-object v0
.end method

.method static getPendingMmiCodesGeminiSize(Lcom/android/internal/telephony/Phone;I)I
    .locals 1
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method static getStateGemini(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method static getSubscriptionByCall(Lcom/android/internal/telephony/Call;)I
    .locals 1
    .parameter "call"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method static hasActivefgEccCall(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 95
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "cm"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/LewaPhoneWrapper;->hasActivefgEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public static holdAndActiveFromDifPhone(Lcom/android/internal/telephony/CallManager;)Z
    .locals 7
    .parameter "cm"

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, isDiffrentPhone:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, array:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v1, 0x0

    .line 130
    .local v1, found:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 132
    .local v4, p:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 134
    if-nez v1, :cond_1

    .line 136
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v3, 0x1

    .line 144
    .end local v4           #p:Lcom/android/internal/telephony/Phone;
    :cond_2
    return v3
.end method

.method static isCallRecording(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 207
    .local v0, isRecording:Z
    const/4 v1, 0x0

    return v1
.end method

.method public static isDMLocked()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 221
    .local v0, locked:Z
    return v0
.end method

.method static isDualSIMSupport()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method static isEccCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 103
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 114
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 228
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 234
    return-void
.end method

.method static okToShowSwapButton(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .parameter "cm"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 156
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 158
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/phone/LewaPhoneWrapper;->holdAndActiveFromDifPhone(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    :cond_1
    const/4 v2, 0x1

    .line 163
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 172
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 175
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 176
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_1

    .line 185
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1
    move v2, v3

    .line 176
    goto :goto_0

    .line 178
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    if-eq v1, v2, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_4

    invoke-static {p0}, Lcom/android/phone/LewaPhoneWrapper;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 190
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
