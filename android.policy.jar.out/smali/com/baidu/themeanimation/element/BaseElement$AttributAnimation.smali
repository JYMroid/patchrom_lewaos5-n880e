.class Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;
.super Landroid/view/animation/Animation;
.source "BaseElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/BaseElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttributAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/element/BaseElement;


# direct methods
.method private constructor <init>(Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    #getter for: Lcom/baidu/themeanimation/element/BaseElement;->mAngle:I
    invoke-static {v0}, Lcom/baidu/themeanimation/element/BaseElement;->access$000(Lcom/baidu/themeanimation/element/BaseElement;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    #getter for: Lcom/baidu/themeanimation/element/BaseElement;->mAngle:I
    invoke-static {v1}, Lcom/baidu/themeanimation/element/BaseElement;->access$000(Lcom/baidu/themeanimation/element/BaseElement;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/BaseElement;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 57
    :cond_0
    return-void
.end method
