.class public Lcom/baidu/themeanimation/element/SizeAnimationElement;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement;
.source "SizeAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;,
        Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SizeAnimation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement;-><init>()V

    .line 160
    return-void
.end method

.method public static inflateSizeAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/SizeAnimationElement;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, sizeAnimationElement:Lcom/baidu/themeanimation/element/SizeAnimationElement;
    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 25
    .local v0, eventType:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, name:Ljava/lang/String;
    if-ne v0, v5, :cond_0

    const-string v4, "SizeAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    new-instance v2, Lcom/baidu/themeanimation/element/SizeAnimationElement;

    .end local v2           #sizeAnimationElement:Lcom/baidu/themeanimation/element/SizeAnimationElement;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/SizeAnimationElement;-><init>()V

    .line 32
    .restart local v2       #sizeAnimationElement:Lcom/baidu/themeanimation/element/SizeAnimationElement;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 35
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const-string v4, "SizeAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    .end local v0           #eventType:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 40
    .restart local v0       #eventType:I
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-ne v0, v5, :cond_2

    const-string v4, "Size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    new-instance v3, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    invoke-direct {v3}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;-><init>()V

    .line 44
    .local v3, sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-static {p0, v3}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->debug()V

    .line 46
    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->addKeyFrame(Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;)V

    .line 49
    .end local v3           #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 50
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public generateAnimations(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/Animation;
    .locals 12
    .parameter "element"

    .prologue
    .line 59
    const/4 v6, 0x0

    .line 62
    .local v6, lockSizeAnimation:Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, count:I
    if-lez v0, :cond_3

    if-eqz p1, :cond_3

    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, index:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    .line 68
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 69
    new-instance v7, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    invoke-direct {v7}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;-><init>()V

    .line 70
    .local v7, sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setTime(J)V

    .line 73
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getW()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setW(I)V

    .line 74
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getH()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setH(I)V

    .line 75
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    .end local v7           #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_0
    new-instance v6, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;

    .end local v6           #lockSizeAnimation:Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
    invoke-direct {v6, p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;-><init>(Lcom/baidu/themeanimation/element/SizeAnimationElement;)V

    .line 79
    .restart local v6       #lockSizeAnimation:Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setWidth(I)V

    .line 80
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setHeight(I)V

    .line 82
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->setStartTime(J)V

    .line 83
    const-wide/16 v1, 0x0

    .line 84
    .local v1, endTime:J
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 85
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x186a0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 86
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 87
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_1

    .line 88
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setRepeatCount(I)V

    .line 89
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setRepeatMode(I)V

    .line 98
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->setEndTime(J)V

    .line 103
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setDuration(J)V

    .line 105
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 106
    const/high16 v8, 0x3f00

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotX(F)V

    .line 111
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 112
    const/high16 v8, 0x3f00

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotY(F)V

    .line 118
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_3
    :goto_2
    return-object v6

    .line 95
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setFillAfter(Z)V

    .line 84
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getAlign()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 108
    const/high16 v8, 0x3f80

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotX(F)V

    goto :goto_1

    .line 113
    :cond_6
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getAlignV()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 114
    const/high16 v8, 0x3f80

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotY(F)V

    goto :goto_2
.end method
