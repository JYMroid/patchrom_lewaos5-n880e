.class Lcom/android/phone/LewaInCallTouchUi$2;
.super Llewa/laml/elements/ScreenElementFactory;
.source "LewaInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaInCallTouchUi;->addIncomWidget(Landroid/content/Context;)V
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
    .line 292
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi$2;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    invoke-direct {p0}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ScreenElement;
    .locals 3
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, tag:Ljava/lang/String;
    const-string v1, "InCallUnlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;

    iget-object v2, p0, Lcom/android/phone/LewaInCallTouchUi$2;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/phone/LewaInCallTouchUi$IncomAdvancedSlider;-><init>(Lcom/android/phone/LewaInCallTouchUi;Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 303
    :goto_0
    return-object v1

    .line 300
    :cond_0
    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    new-instance v1, Llewa/laml/elements/AdvancedSlider;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method
