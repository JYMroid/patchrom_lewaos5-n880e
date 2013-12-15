.class Lcom/android/phone/LewaHyphonManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "LewaHyphonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaHyphonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaHyphonManager;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaHyphonManager;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/LewaHyphonManager$1;->this$0:Lcom/android/phone/LewaHyphonManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/phone/LewaHyphonManager$1;->this$0:Lcom/android/phone/LewaHyphonManager;

    const-string v1, "STATE_IN_SERVICE re-detect country iso"

    invoke-virtual {v0, v1}, Lcom/android/phone/LewaHyphonManager;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/phone/LewaHyphonManager$1;->this$0:Lcom/android/phone/LewaHyphonManager;

    iget-object v1, p0, Lcom/android/phone/LewaHyphonManager$1;->this$0:Lcom/android/phone/LewaHyphonManager;

    invoke-virtual {v1}, Lcom/android/phone/LewaHyphonManager;->detectCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/LewaHyphonManager;->setCountryIso(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method
