.class Lcom/android/phone/LewaBlocker$2;
.super Ljava/lang/Object;
.source "LewaBlocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaBlocker;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaBlocker;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v0}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mUpdateManager:Lcom/tencent/tmsecure/module/update/UpdateManager;
    invoke-static {v0}, Lcom/android/phone/LewaBlocker;->access$700(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    new-instance v2, Lcom/android/phone/LewaBlocker$2$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaBlocker$2$1;-><init>(Lcom/android/phone/LewaBlocker$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    .line 985
    iget-object v0, p0, Lcom/android/phone/LewaBlocker$2;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LewaBlocker;->access$500(Lcom/android/phone/LewaBlocker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
