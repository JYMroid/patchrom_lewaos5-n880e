.class Lcom/android/phone/LewaCallCard$1;
.super Landroid/os/Handler;
.source "LewaCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaCallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/LewaCallCard$1;->this$0:Lcom/android/phone/LewaCallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/LewaCallCard$1;->this$0:Lcom/android/phone/LewaCallCard;

    #getter for: Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;
    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->access$000(Lcom/android/phone/LewaCallCard;)Lcom/lewa/widget/CircleAnimView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/phone/LewaCallCard$1;->this$0:Lcom/android/phone/LewaCallCard;

    #getter for: Lcom/android/phone/LewaCallCard;->mCircleAnimView:Lcom/lewa/widget/CircleAnimView;
    invoke-static {v0}, Lcom/android/phone/LewaCallCard;->access$000(Lcom/android/phone/LewaCallCard;)Lcom/lewa/widget/CircleAnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/widget/CircleAnimView;->showAnim()V

    .line 236
    iget-object v0, p0, Lcom/android/phone/LewaCallCard$1;->this$0:Lcom/android/phone/LewaCallCard;

    iget-object v0, v0, Lcom/android/phone/LewaCallCard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/LewaCallCard$1;->this$0:Lcom/android/phone/LewaCallCard;

    iget-object v1, v1, Lcom/android/phone/LewaCallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
