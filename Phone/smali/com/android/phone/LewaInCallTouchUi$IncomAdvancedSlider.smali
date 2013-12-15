.class Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;
.super Llewa/laml/elements/AdvancedSlider;
.source "LewaInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomAdvancedSlider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaInCallTouchUi;


# direct methods
.method public constructor <init>(Lcom/android/phone/LewaInCallTouchUi;Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    .line 1675
    invoke-direct {p0, p2, p3}, Llewa/laml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 1676
    return-void
.end method


# virtual methods
.method public onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 1679
    if-nez p2, :cond_1

    const-string v0, ""

    .line 1680
    .local v0, action:Ljava/lang/String;
    :goto_0
    const/4 v2, -0x1

    .line 1682
    .local v2, whichHandle:I
    const-string v3, "lewa.intent.action.rejectsms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1683
    const/4 v2, 0x1

    .line 1690
    :cond_0
    :goto_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1691
    iget-object v3, p0, Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/LewaInCallTouchUi;->access$500(Lcom/android/phone/LewaInCallTouchUi;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1692
    .local v1, message:Landroid/os/Message;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1693
    iget-object v3, p0, Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/LewaInCallTouchUi;->access$500(Lcom/android/phone/LewaInCallTouchUi;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1694
    const/4 v3, 0x1

    .line 1697
    .end local v1           #message:Landroid/os/Message;
    :goto_2
    return v3

    .line 1679
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #whichHandle:I
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1684
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #whichHandle:I
    :cond_2
    const-string v3, "lewa.intent.action.answer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1685
    const/4 v2, 0x0

    goto :goto_1

    .line 1686
    :cond_3
    const-string v3, "lewa.intent.action.end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1687
    const/4 v2, 0x2

    goto :goto_1

    .line 1697
    :cond_4
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    goto :goto_2
.end method
