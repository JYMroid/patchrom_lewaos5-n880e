.class public Lcom/baidu/themeanimation/element/TimeElement;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "TimeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
    }
.end annotation


# static fields
.field private static final CENTER:I = 0x1

.field private static final LEFT:I = 0x0

.field private static final RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeElement"


# instance fields
.field private mAlign:I

.field private mAlignV:I

.field private mSrc:Ljava/lang/String;

.field private mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TimeElement;->setSrc(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TimeElement;->setAlign(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 94
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    .line 102
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-direct {v0, p0, p1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;-><init>(Lcom/baidu/themeanimation/element/TimeElement;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TimeElement;->setView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mAlign:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public setAlign(I)V
    .locals 1
    .parameter "align"

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mAlign:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mAlign:I

    .line 78
    :cond_0
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 2
    .parameter "align"

    .prologue
    .line 81
    iget v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mAlign:I

    .line 82
    .local v0, sAlign:I
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const/4 v0, 0x1

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TimeElement;->setAlign(I)V

    .line 90
    return-void

    .line 84
    :cond_1
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mSrc:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setX(I)V
    .locals 5
    .parameter "posX"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->setX(I)V

    .line 44
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    .line 45
    .local v0, view:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->adjustPosition()V

    .line 49
    :cond_0
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".actual_w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 50
    return-void
.end method

.method public setY(I)V
    .locals 4
    .parameter "posY"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->setY(I)V

    .line 59
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 60
    return-void
.end method
