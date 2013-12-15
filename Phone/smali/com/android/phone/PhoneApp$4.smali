.class Lcom/android/phone/PhoneApp$4;
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
    .line 2200
    iput-object p1, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.insertBlack2Cache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2204
    const-string v5, "number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2205
    .local v2, number:Ljava/lang/String;
    const-string v5, "type"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2206
    .local v3, type:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1, v2, v3}, Lcom/android/phone/LewaBlocker;->insertBlackNumber2Cache(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2248
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #type:I
    :cond_0
    :goto_0
    return-void

    .line 2207
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.insertWhite2Cache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2208
    const-string v5, "number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2209
    .restart local v2       #number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/phone/LewaBlocker;->insertWhiteNumber2Cache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2210
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.deleteBlackfromCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2211
    const-string v5, "number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2212
    .restart local v2       #number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/phone/LewaBlocker;->deleteBlackNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2213
    .end local v2           #number:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.deleteWhitefromCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2214
    const-string v5, "number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2215
    .restart local v2       #number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/phone/LewaBlocker;->deleteWhiteNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    .end local v2           #number:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.deleteAllBlackfromCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2217
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Lcom/android/phone/LewaBlocker;->removeAllNumber(Landroid/content/Context;I)V

    goto :goto_0

    .line 2218
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.deleteAllWhitefromCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2219
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/android/phone/LewaBlocker;->removeAllNumber(Landroid/content/Context;I)V

    goto :goto_0

    .line 2220
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.lewa.intercept.updateBlackInCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2221
    const-string v5, "number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2222
    .restart local v2       #number:Ljava/lang/String;
    const-string v5, "newNumberType"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2223
    .local v1, newNumberType:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1, v2, v1}, Lcom/android/phone/LewaBlocker;->updateBlackNumberInCache(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2224
    .end local v1           #newNumberType:I
    .end local v2           #number:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "check_intelligence_intercept_library"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2225
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/phone/LewaBlocker;->setAutoUpdate(Z)V

    .line 2226
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/phone/LewaBlocker;->check(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2227
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "update_intelligence_intercept_library"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2228
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/phone/LewaBlocker;->setAutoUpdate(Z)V

    .line 2229
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/LewaBlocker;->updateData()V

    goto/16 :goto_0

    .line 2230
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "auto_update_intelligence_intercept_library"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2231
    iget-object v5, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2232
    .local v0, conMan:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 2233
    .local v4, wifi:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_a

    .line 2234
    const-string v5, "chenqiang"

    const-string v6, "autoUpdate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/phone/LewaBlocker;->setAutoUpdate(Z)V

    .line 2236
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/phone/LewaBlocker;->check(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2238
    :cond_a
    const-string v5, "chenqiang"

    const-string v6, "no wifi"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
