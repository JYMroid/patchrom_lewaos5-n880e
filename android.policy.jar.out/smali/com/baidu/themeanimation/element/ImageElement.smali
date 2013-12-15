.class public Lcom/baidu/themeanimation/element/ImageElement;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;,
        Lcom/baidu/themeanimation/element/ImageElement$ImageMask;
    }
.end annotation


# instance fields
.field private mAntiAlias:Ljava/lang/Boolean;

.field private mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

.field private mMask:Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

.field private mSrc:Ljava/lang/String;

.field private mSrcid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mMask:Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    .line 37
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/ImageElement;->setSrc(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setSrcid(I)V

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setAntiAlias(Ljava/lang/Boolean;)V

    .line 40
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 194
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 202
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p0, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;-><init>(Lcom/baidu/themeanimation/element/ImageElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/BaseElement;I)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    return-object v0
.end method

.method public getAntiAlias()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mAntiAlias:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getImageElementView()Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    return-object v0
.end method

.method public getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mMask:Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcid()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrcid:I

    return v0
.end method

.method public inflateMask(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, name:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 148
    .local v2, eventType:I
    if-ne v2, v6, :cond_5

    const-string v4, "Mask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ImageFilter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    :cond_0
    new-instance v4, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    invoke-direct {v4, p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;-><init>(Lcom/baidu/themeanimation/element/ImageElement;)V

    iput-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement;->mMask:Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    .line 151
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement;->mMask:Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    invoke-static {p1, v4}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 157
    if-ne v2, v6, :cond_3

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {p1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->inflaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/BaseAnimationElement;

    move-result-object v0

    .line 163
    .local v0, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    if-eqz v0, :cond_2

    .line 164
    if-nez v1, :cond_1

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .restart local v1       #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 171
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Mask"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImageFilter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    :cond_4
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement;->mMask:Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    invoke-virtual {v4, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->setAnimationElements(Ljava/util/List;)V

    .line 186
    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_5
    return-void
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/BaseElement;->setAngle(I)V

    .line 222
    return-void
.end method

.method public setAntiAlias(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "antiAlias"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mAntiAlias:Ljava/lang/Boolean;

    .line 75
    return-void
.end method

.method public setAntiAlias(Ljava/lang/String;)V
    .locals 1
    .parameter "antiAlias"

    .prologue
    .line 78
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setAntiAlias(Ljava/lang/Boolean;)V

    .line 79
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrc:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSrcid(I)V
    .locals 1
    .parameter "srcid"

    .prologue
    .line 55
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrcid:I

    if-eq v0, p1, :cond_0

    .line 56
    iput p1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrcid:I

    .line 57
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->updateSrc()V

    .line 61
    :cond_0
    return-void
.end method

.method public setSrcid(Ljava/lang/String;)V
    .locals 1
    .parameter "srcid"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setSrcid(I)V

    .line 67
    :cond_0
    return-void
.end method
