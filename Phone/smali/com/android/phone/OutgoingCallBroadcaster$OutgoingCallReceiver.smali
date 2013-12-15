.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "OutgoingCallReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doReceive: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    const-string v10, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 135
    .local v1, alreadyCalled:Z
    if-eqz v1, :cond_2

    .line 136
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v9, "CALL already placed -- returning."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 154
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 155
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_8

    move v0, v8

    .line 157
    .local v0, activateState:Z
    :goto_1
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_9

    move v3, v8

    .line 160
    .local v3, dialogState:Z
    :goto_2
    const/4 v4, 0x0

    .line 167
    .local v4, isOtaCallActive:Z
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v8, v9, :cond_3

    iget-object v8, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v8, v9, :cond_4

    .line 171
    :cond_3
    const/4 v4, 0x1

    .line 174
    :cond_4
    if-nez v0, :cond_5

    if-eqz v3, :cond_a

    .line 180
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 181
    :cond_6
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 182
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 191
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v4           #isOtaCallActive:Z
    :cond_7
    if-nez v5, :cond_b

    .line 192
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v9, "CALL cancelled (null number), returning..."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v0, v9

    .line 155
    goto :goto_1

    .restart local v0       #activateState:Z
    :cond_9
    move v3, v9

    .line 157
    goto :goto_2

    .line 183
    .restart local v3       #dialogState:Z
    .restart local v4       #isOtaCallActive:Z
    :cond_a
    if-eqz v4, :cond_7

    .line 186
    const-string v8, "OutgoingCallReceiver"

    const-string v9, "OTASP call is active: disallowing a new outgoing call."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v4           #isOtaCallActive:Z
    :cond_b
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_c

    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 197
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v9, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_c
    invoke-static {v5, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 204
    const-string v8, "OutgoingCallReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot modify outgoing call to emergency number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :cond_d
    const-string v8, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, originalUri:Ljava/lang/String;
    if-nez v6, :cond_e

    .line 211
    const-string v8, "OutgoingCallReceiver"

    const-string v9, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :cond_e
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 222
    .local v7, uri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "OutgoingCallReceiver"

    const-string v9, "doReceive: proceeding with call..."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_f
    iget-object v8, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v8, p1, p2, v7, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallReceiver"

    const-string v1, "OutgoingCallReceiver is going to finish the Activity itself."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 124
    return-void
.end method
