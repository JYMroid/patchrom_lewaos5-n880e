.class Lcom/android/phone/PhoneApp$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2152
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2153
    .local v9, body:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2155
    .local v18, number:Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2156
    .local v10, bundle:Landroid/os/Bundle;
    const-string v2, "pdus"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 2158
    .local v19, pdus:[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2159
    .local v6, simId:I
    move-object/from16 v0, v19

    array-length v2, v0

    new-array v0, v2, [Landroid/telephony/SmsMessage;

    move-object/from16 v16, v0

    .line 2161
    .local v16, message:[Landroid/telephony/SmsMessage;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v2, v0

    if-ge v13, v2, :cond_0

    .line 2162
    aget-object v2, v19, v13

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v2

    aput-object v2, v16, v13

    .line 2161
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2165
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    move-object/from16 v8, v16

    .local v8, arr$:[Landroid/telephony/SmsMessage;
    array-length v15, v8

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_1

    aget-object v11, v8, v14

    .line 2167
    .local v11, currentMessage:Landroid/telephony/SmsMessage;
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2169
    .end local v11           #currentMessage:Landroid/telephony/SmsMessage;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v7

    .line 2170
    .local v7, serviceCenter:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/phone/LewaBlocker;->interceptSwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2171
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phone/LewaBlocker;->isBlockMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp$2;->setResultCode(I)V

    .line 2174
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/phone/LewaBlocker;->interceptMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2175
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/phone/LewaBlocker;->interceptNotifySwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2176
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.provider.lewa.intercept.notification"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v17, notifiyIntent:Landroid/content/Intent;
    const-string v2, "smsCount"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2178
    const-string v2, "number"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2179
    const-string v2, "smsBody"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2180
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    .end local v6           #simId:I
    .end local v7           #serviceCenter:Ljava/lang/String;
    .end local v8           #arr$:[Landroid/telephony/SmsMessage;
    .end local v9           #body:Ljava/lang/StringBuilder;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v13           #i:I
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #message:[Landroid/telephony/SmsMessage;
    .end local v17           #notifiyIntent:Landroid/content/Intent;
    .end local v18           #number:Ljava/lang/StringBuilder;
    .end local v19           #pdus:[Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 2184
    :catch_0
    move-exception v12

    .line 2185
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
