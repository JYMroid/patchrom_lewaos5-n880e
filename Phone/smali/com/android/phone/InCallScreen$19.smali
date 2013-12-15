.class Lcom/android/phone/InCallScreen$19;
.super Ljava/lang/Thread;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->getCallerIdResultByReceiver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$numberarg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5048
    iput-object p1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$19;->val$numberarg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5052
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    invoke-static {v3, v4}, Llewa/util/LocationUtil;->getSpecialPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5054
    .local v2, phoneInfo:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5055
    new-instance v1, Lcom/android/phone/InCallScreen$YellowPageInfo;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {v1, v3}, Lcom/android/phone/InCallScreen$YellowPageInfo;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5056
    .local v1, info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    iput-object v2, v1, Lcom/android/phone/InCallScreen$YellowPageInfo;->phoneInfo:Ljava/lang/String;

    .line 5057
    iget-object v3, p0, Lcom/android/phone/InCallScreen$19;->val$numberarg:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/phone/InCallScreen$YellowPageInfo;->number:Ljava/lang/String;

    .line 5058
    iget-object v3, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x4c5

    invoke-static {v4, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5064
    .end local v1           #info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    .end local v2           #phoneInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5060
    :catch_0
    move-exception v0

    .line 5061
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "shenqi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
