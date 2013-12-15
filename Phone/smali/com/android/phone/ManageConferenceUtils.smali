.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ManageConferenceUtils"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5


# instance fields
.field private mButtonManageConferenceDone:Landroid/view/View;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 96
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 97
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/ManageConferenceUtils;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ManageConferenceUtils;)[Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 356
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method


# virtual methods
.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6
    .parameter "ci"
    .parameter "presentation"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 279
    const-string v0, ""

    .line 280
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 281
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 282
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    invoke-virtual {p5, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    :goto_1
    return-void

    .line 289
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 291
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 297
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_4
    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 323
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 330
    return-void
.end method

.method public getNumCallersInConference()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 100
    sget-boolean v3, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "initManageConferencePanel()..."

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 102
    sget-boolean v3, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f090082

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 106
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 108
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0900ab

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 110
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 111
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0900ac

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 117
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v5, 0x7f07022b

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 120
    new-array v3, v6, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 122
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 124
    .local v2, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 125
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_3
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #viewGroupIdList:[I
    :cond_4
    return-void

    .line 122
    nop

    :array_0
    .array-data 0x4
        0xb1t 0x0t 0x9t 0x7ft
        0xb2t 0x0t 0x9t 0x7ft
        0xb3t 0x0t 0x9t 0x7ft
        0xb4t 0x0t 0x9t 0x7ft
        0xb5t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 352
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 141
    :cond_0
    return-void

    .line 139
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startConferenceTime(J)V
    .locals 1
    .parameter "base"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 151
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 160
    :cond_0
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v5, 0x0

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 176
    sget-boolean v6, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 182
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 183
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 185
    .local v0, canSeparate:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4

    .line 186
    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v4, v6, :cond_3

    .line 188
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 189
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 185
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #canSeparate:Z
    .end local v4           #i:I
    :cond_2
    move v0, v5

    .line 183
    goto :goto_0

    .line 192
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_2

    .line 195
    :cond_4
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .locals 12
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    const/4 v2, 0x0

    .line 211
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateManageConferenceRow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 213
    :cond_0
    if-eqz p2, :cond_4

    .line 215
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 219
    .local v6, endButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 221
    .local v10, separateButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 223
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 225
    .local v5, numberTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    .local v4, numberTypeTextView:Landroid/widget/TextView;
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameTextView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 231
    :cond_1
    new-instance v7, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 238
    .local v7, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    if-eqz p3, :cond_3

    .line 241
    new-instance v11, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v11, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 248
    .local v11, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .end local v11           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v9, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;

    invoke-direct {v9, p0, p1}, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;-><init>(Lcom/android/phone/ManageConferenceUtils;I)V

    .line 256
    .local v9, listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p2, v9, p2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v8

    .line 259
    .local v8, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - got info from startGetCallerInfo(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 262
    :cond_2
    iget-object v1, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 268
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #endButton:Landroid/view/View;
    .end local v7           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v8           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v9           #listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    .end local v10           #separateButton:Landroid/view/View;
    :goto_1
    return-void

    .line 251
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v5       #numberTextView:Landroid/widget/TextView;
    .restart local v6       #endButton:Landroid/view/View;
    .restart local v7       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v10       #separateButton:Landroid/view/View;
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 266
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #endButton:Landroid/view/View;
    .end local v7           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v10           #separateButton:Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
