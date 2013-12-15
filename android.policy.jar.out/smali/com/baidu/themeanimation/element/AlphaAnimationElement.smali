.class public Lcom/baidu/themeanimation/element/AlphaAnimationElement;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement;
.source "AlphaAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;,
        Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlphaAnimationElement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement;-><init>()V

    .line 22
    return-void
.end method

.method public static inflateAlphaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/AlphaAnimationElement;
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

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, alphaAnimationElement:Lcom/baidu/themeanimation/element/AlphaAnimationElement;
    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 29
    .local v2, eventType:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, name:Ljava/lang/String;
    if-ne v2, v5, :cond_0

    const-string v4, "AlphaAnimation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    new-instance v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    .end local v0           #alphaAnimationElement:Lcom/baidu/themeanimation/element/AlphaAnimationElement;
    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;-><init>()V

    .line 36
    .restart local v0       #alphaAnimationElement:Lcom/baidu/themeanimation/element/AlphaAnimationElement;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 39
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    const-string v4, "AlphaAnimation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    .end local v2           #eventType:I
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->invalidateKeyFrames()V

    .line 61
    return-object v0

    .line 44
    .restart local v2       #eventType:I
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    if-ne v2, v5, :cond_2

    const-string v4, "Alpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    new-instance v1, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;-><init>()V

    .line 48
    .local v1, alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-static {p0, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->addKeyFrame(Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;)V

    .line 53
    .end local v1           #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public generateAnimations(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/Animation;
    .locals 13
    .parameter "element"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 66
    const/4 v6, 0x0

    .line 69
    .local v6, lockAlphaAnimation:Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 70
    .local v1, count:I
    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 73
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    .line 74
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 75
    new-instance v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;-><init>()V

    .line 76
    .local v0, alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-virtual {v0, v9, v10}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->setTime(J)V

    .line 77
    const/high16 v7, 0x437f

    invoke-virtual {v0, v7}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->setA(F)V

    .line 78
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    .end local v0           #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_0
    new-instance v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;

    .end local v6           #lockAlphaAnimation:Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
    invoke-direct {v6, p0, p1}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;-><init>(Lcom/baidu/themeanimation/element/AlphaAnimationElement;Lcom/baidu/themeanimation/element/BaseElement;)V

    .line 83
    .restart local v6       #lockAlphaAnimation:Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
    invoke-virtual {p0, v9, v10}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->setStartTime(J)V

    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .local v2, endTime:J
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 86
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0x186a0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 87
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v2

    .line 88
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_1

    .line 89
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setRepeatCount(I)V

    .line 90
    invoke-virtual {v6, v12}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setRepeatMode(I)V

    .line 99
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->setEndTime(J)V

    .line 104
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->getEndTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->getStartTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setDuration(J)V

    .line 106
    .end local v2           #endTime:J
    .end local v4           #i:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_2
    return-object v6

    .line 96
    .restart local v2       #endTime:J
    .restart local v4       #i:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_3
    invoke-virtual {v6, v12}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setFillAfter(Z)V

    .line 85
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method
