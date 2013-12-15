.class Lcom/android/phone/PhoneApp$5;
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
    .line 2251
    iput-object p1, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.lewa.intercept.addToBlacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2255
    const-string v3, "numberlist"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2256
    .local v1, numberlist:[Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, name:Ljava/lang/String;
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2258
    .local v2, type:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0, v2}, Lcom/android/phone/LewaBlocker;->addToBlackList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 2264
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #numberlist:[Ljava/lang/String;
    .end local v2           #type:I
    :cond_0
    :goto_0
    return-void

    .line 2259
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.lewa.intercept.addToWhitelist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2260
    const-string v3, "numberlist"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2261
    .restart local v1       #numberlist:[Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2262
    .restart local v0       #name:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lcom/android/phone/LewaBlocker;->addToWhiteList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
