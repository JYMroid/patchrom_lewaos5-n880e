.class Lcom/android/phone/PhoneApp$6;
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
    .line 2267
    iput-object p1, p0, Lcom/android/phone/PhoneApp$6;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.lewa.intercept.deleteFromBlacklist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2271
    const-string v2, "numberlist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2272
    .local v0, numberlist:[Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2273
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2274
    const-string v1, "1"

    .line 2276
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/phone/LewaBlocker;->deleteFromBlackOrWhiteList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    .end local v0           #numberlist:[Ljava/lang/String;
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2277
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.lewa.intercept.deleteFromWhitelist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2278
    const-string v2, "numberlist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2279
    .restart local v0       #numberlist:[Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2280
    .restart local v1       #type:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2281
    const-string v1, "2"

    .line 2283
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1500()Lcom/android/phone/LewaBlocker;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/phone/LewaBlocker;->deleteFromBlackOrWhiteList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
