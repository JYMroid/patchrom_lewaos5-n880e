.class public Lcom/baidu/themeanimation/element/TextElement;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "TextElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/TextElement$TextElementView;
    }
.end annotation


# static fields
.field private static final CENTER:I = 0x1

.field private static final LEFT:I = 0x0

.field private static final RIGHT:I = 0x2


# instance fields
.field private mColor:I

.field private mFormat:Ljava/lang/String;

.field private mMarqueeSpeed:I

.field private mParas:Ljava/lang/String;

.field private mSize:I

.field private mStartAnimationOnTextChange:Z

.field private mText:Ljava/lang/String;

.field private mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

.field private mTextExp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    .line 36
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TextElement;->setColor(I)V

    .line 37
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setSize(I)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/TextElement;->setFormat(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/TextElement;->setParas(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TextElement;->setAlign(I)V

    .line 41
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setMarqueeSpeed(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 178
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    .line 186
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-direct {v0, p0, p1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;-><init>(Lcom/baidu/themeanimation/element/TextElement;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mColor:I

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMarqueeSpeed()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mMarqueeSpeed:I

    return v0
.end method

.method public getParas()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mSize:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextExp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextExp:Ljava/lang/String;

    return-object v0
.end method

.method protected onCategoryChange(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->onCategoryChange(I)V

    .line 172
    return-void
.end method

.method public setAnimationOnTextChange(Ljava/lang/String;)V
    .locals 1
    .parameter "change"

    .prologue
    .line 166
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setAnimationOnTextChange(Z)V

    .line 167
    return-void
.end method

.method public setAnimationOnTextChange(Z)V
    .locals 0
    .parameter "change"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    .line 163
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 63
    iput p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mColor:I

    .line 64
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .parameter "color"

    .prologue
    .line 68
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TextElement;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TextElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v0, "%d"

    const-string v1, "%s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public setMarqueeSpeed(I)V
    .locals 0
    .parameter "marqueeSpeed"

    .prologue
    .line 127
    iput p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mMarqueeSpeed:I

    .line 128
    return-void
.end method

.method public setMarqueeSpeed(Ljava/lang/String;)V
    .locals 1
    .parameter "marqueeSpeed"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setMarqueeSpeed(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public setParas(Ljava/lang/String;)V
    .locals 3
    .parameter "paras"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_0

    .line 110
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 111
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_2
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 79
    iput p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mSize:I

    .line 80
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1
    .parameter "size"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setSize(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mText:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->updateText(Ljava/lang/CharSequence;)V

    .line 152
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TextElement;->startAnimations()V

    .line 156
    :cond_0
    return-void
.end method

.method public setTextExp(Ljava/lang/String;)V
    .locals 2
    .parameter "textExp"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextExp:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextExp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->updateText(Ljava/lang/CharSequence;)V

    .line 48
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TextElement;->startAnimations()V

    .line 52
    :cond_0
    return-void
.end method
