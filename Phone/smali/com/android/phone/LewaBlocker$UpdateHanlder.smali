.class Lcom/android/phone/LewaBlocker$UpdateHanlder;
.super Landroid/os/Handler;
.source "LewaBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaBlocker;


# direct methods
.method private constructor <init>(Lcom/android/phone/LewaBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/LewaBlocker;Lcom/android/phone/LewaBlocker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/android/phone/LewaBlocker$UpdateHanlder;-><init>(Lcom/android/phone/LewaBlocker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 996
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1054
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 998
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$800(Lcom/android/phone/LewaBlocker;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 999
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-virtual {v3}, Lcom/android/phone/LewaBlocker;->updateData()V

    goto :goto_0

    .line 1002
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "update_intercept_dialog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->hasNetworkError:Z
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$900(Lcom/android/phone/LewaBlocker;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1004
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$800(Lcom/android/phone/LewaBlocker;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-virtual {v3}, Lcom/android/phone/LewaBlocker;->updateData()V

    goto :goto_0

    .line 1008
    :cond_2
    const-string v3, "type"

    const-string v4, "endCheck"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1011
    const-string v3, "needToUpdate"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1012
    const-string v3, "checkresultmessage"

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v4}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    :goto_1
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1014
    :cond_3
    const-string v3, "needToUpdate"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1020
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    const-string v4, "\u7248\u672c\uff1a"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v3, 0x3

    .line 1021
    .local v2, offset:I
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, database_version:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lewa_tencent_database_version"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1025
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lewa_tencent_last_update_time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1027
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$800(Lcom/android/phone/LewaBlocker;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1030
    new-instance v1, Landroid/content/Intent;

    const-string v3, "update_intercept_dialog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "type"

    const-string v4, "endUpdate"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1039
    .end local v0           #database_version:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #offset:I
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$800(Lcom/android/phone/LewaBlocker;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1042
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #setter for: Lcom/android/phone/LewaBlocker;->hasNetworkError:Z
    invoke-static {v3, v6}, Lcom/android/phone/LewaBlocker;->access$902(Lcom/android/phone/LewaBlocker;Z)Z

    .line 1043
    new-instance v1, Landroid/content/Intent;

    const-string v3, "update_intercept_dialog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1044
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "type"

    const-string v4, "networkerror"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1048
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$800(Lcom/android/phone/LewaBlocker;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$UpdateHanlder;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070551

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
