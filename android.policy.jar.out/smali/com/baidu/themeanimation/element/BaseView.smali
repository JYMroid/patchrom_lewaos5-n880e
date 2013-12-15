.class public Lcom/baidu/themeanimation/element/BaseView;
.super Landroid/view/View;
.source "BaseView.java"


# static fields
.field private static mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;


# instance fields
.field private mElement:Lcom/baidu/themeanimation/element/BaseElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/element/BaseView;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 0
    .parameter "context"
    .parameter "element"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/baidu/themeanimation/element/BaseView;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    .line 19
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 35
    .local v0, values:[F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 26
    sget-object v0, Lcom/baidu/themeanimation/element/BaseView;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseView;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 27
    sget-object v0, Lcom/baidu/themeanimation/element/BaseView;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/themeanimation/element/BaseView;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 28
    return-void
.end method
