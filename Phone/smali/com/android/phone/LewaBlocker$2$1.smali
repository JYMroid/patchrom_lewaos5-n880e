.class Lcom/android/phone/LewaBlocker$2$1;
.super Ljava/lang/Object;
.source "LewaBlocker.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaBlocker$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LewaBlocker$2;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaBlocker$2;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$2$1;->this$1:Lcom/android/phone/LewaBlocker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 957
    iget-object v1, p0, Lcom/android/phone/LewaBlocker$2$1;->this$1:Lcom/android/phone/LewaBlocker$2;

    iget-object v1, v1, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$500(Lcom/android/phone/LewaBlocker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 959
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 960
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 961
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 962
    return-void
.end method

.method public onUpdateCanceled()V
    .locals 0

    .prologue
    .line 983
    return-void
.end method

.method public onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 967
    iget-object v1, p0, Lcom/android/phone/LewaBlocker$2$1;->this$1:Lcom/android/phone/LewaBlocker$2;

    iget-object v1, v1, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$500(Lcom/android/phone/LewaBlocker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 969
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 970
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 971
    return-void
.end method

.method public onUpdateFinished()V
    .locals 0

    .prologue
    .line 975
    return-void
.end method

.method public onUpdateStarted()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method
