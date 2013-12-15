.class Lcom/android/phone/LewaInCallTouchUi$1;
.super Landroid/os/Handler;
.source "LewaInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi$1;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$1;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/LewaInCallTouchUi;->access$000(Lcom/android/phone/LewaInCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 178
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 190
    const-string v1, "LewaInCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$1;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const-string v2, "INCOMING_CALL_TRIGGER..."

    #calls: Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/LewaInCallTouchUi;->access$100(Lcom/android/phone/LewaInCallTouchUi;Ljava/lang/String;)V

    .line 181
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, whichHandle:I
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$1;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/LewaInCallTouchUi;->onTrigger(Landroid/view/View;I)V

    goto :goto_0

    .line 186
    .end local v0           #whichHandle:I
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$1;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const-string v2, "INCOMING_CALL_WIDGET_PING..."

    #calls: Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/LewaInCallTouchUi;->access$100(Lcom/android/phone/LewaInCallTouchUi;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$1;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    invoke-virtual {v1}, Lcom/android/phone/LewaInCallTouchUi;->triggerPing()V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x6f -> :sswitch_0
    .end sparse-switch
.end method
