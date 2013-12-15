.class Lcom/android/phone/LewaBlocker$1$1;
.super Ljava/lang/Object;
.source "LewaBlocker.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaBlocker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LewaBlocker$1;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaBlocker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$1$1;->this$1:Lcom/android/phone/LewaBlocker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckCanceled()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public onCheckEvent(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 920
    iget-object v1, p0, Lcom/android/phone/LewaBlocker$1$1;->this$1:Lcom/android/phone/LewaBlocker$1;

    iget-object v1, v1, Lcom/android/phone/LewaBlocker$1;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$500(Lcom/android/phone/LewaBlocker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 921
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 922
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 923
    return-void
.end method

.method public onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/phone/LewaBlocker$1$1;->this$1:Lcom/android/phone/LewaBlocker$1;

    iget-object v0, v0, Lcom/android/phone/LewaBlocker$1;->this$0:Lcom/android/phone/LewaBlocker;

    #setter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v0, p1}, Lcom/android/phone/LewaBlocker;->access$602(Lcom/android/phone/LewaBlocker;Lcom/tencent/tmsecure/module/update/CheckResult;)Lcom/tencent/tmsecure/module/update/CheckResult;

    .line 935
    return-void
.end method

.method public onCheckStarted()V
    .locals 0

    .prologue
    .line 927
    return-void
.end method
