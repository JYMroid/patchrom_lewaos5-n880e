.class Lcom/android/phone/LewaBlocker$1;
.super Ljava/lang/Object;
.source "LewaBlocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaBlocker;->checkUpdatelist()V
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
    .line 914
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$1;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/phone/LewaBlocker$1;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mUpdateManager:Lcom/tencent/tmsecure/module/update/UpdateManager;
    invoke-static {v0}, Lcom/android/phone/LewaBlocker;->access$700(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Lcom/android/phone/LewaBlocker$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaBlocker$1$1;-><init>(Lcom/android/phone/LewaBlocker$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/LewaBlocker$1;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LewaBlocker;->access$500(Lcom/android/phone/LewaBlocker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 938
    return-void
.end method
