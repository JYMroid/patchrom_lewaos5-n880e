.class Llewa/laml/elements/AdvancedSlider$StartPoint;
.super Llewa/laml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 1088
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    .line 1089
    const-string v0, "StartPoint"

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 1090
    return-void
.end method


# virtual methods
.method protected onStateChange(Llewa/laml/elements/AdvancedSlider$State;Llewa/laml/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 1093
    sget-object v0, Llewa/laml/elements/AdvancedSlider$1;->$SwitchMap$lewa$laml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Llewa/laml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->onStateChange(Llewa/laml/elements/AdvancedSlider$State;Llewa/laml/elements/AdvancedSlider$State;)V

    .line 1108
    return-void

    .line 1095
    :pswitch_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v0}, Llewa/laml/elements/AdvancedSlider;->access$1100(Llewa/laml/elements/AdvancedSlider;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :pswitch_2
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->mPressedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :pswitch_3
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$StartPoint;->mNormalSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
