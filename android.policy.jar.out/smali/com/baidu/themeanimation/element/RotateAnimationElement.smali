.class public Lcom/baidu/themeanimation/element/RotateAnimationElement;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement;
.source "RotateAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;,
        Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateAnimation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement;-><init>()V

    .line 125
    return-void
.end method

.method public static inflateAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/RotateAnimationElement;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, rotateAnimationElement:Lcom/baidu/themeanimation/element/RotateAnimationElement;
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
    if-ne v0, v6, :cond_0

    const-string v4, "RotationAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    new-instance v2, Lcom/baidu/themeanimation/element/RotateAnimationElement;

    .end local v2           #rotateAnimationElement:Lcom/baidu/themeanimation/element/RotateAnimationElement;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/RotateAnimationElement;-><init>()V

    .line 29
    .restart local v2       #rotateAnimationElement:Lcom/baidu/themeanimation/element/RotateAnimationElement;
    const-string v4, "RotateAnimation"

    const-string v5, "Inflate Rotation Aniamtion"

    invoke-static {v4, v5}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
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

    const-string v4, "RotationAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    .end local v0           #eventType:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 40
    .restart local v0       #eventType:I
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-ne v0, v6, :cond_2

    const-string v4, "Rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    new-instance v3, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    invoke-direct {v3}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;-><init>()V

    .line 44
    .local v3, rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-static {p0, v3}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->debug()V

    .line 46
    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->addKeyFrame(Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;)V

    .line 49
    .end local v3           #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
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
    .locals 13
    .parameter "element"

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    .local v6, lockRotateAnimation:Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
    const-string v8, "rotate"

    const-string v9, "Rotate Generate Animation!"

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 84
    .local v0, count:I
    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, index:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    .line 89
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 90
    new-instance v7, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    invoke-direct {v7}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;-><init>()V

    .line 91
    .local v7, rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-virtual {v7, v10, v11}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->setTime(J)V

    .line 92
    invoke-virtual {v7, v12}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->setAngle(I)V

    .line 93
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v12, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    .end local v7           #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    :cond_0
    new-instance v6, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;

    .end local v6           #lockRotateAnimation:Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getCenterX()I

    move-result v8

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/BaseElement;->getCenterY()I

    move-result v9

    invoke-direct {v6, p0, v8, v9}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;-><init>(Lcom/baidu/themeanimation/element/RotateAnimationElement;II)V

    .line 99
    .restart local v6       #lockRotateAnimation:Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
    invoke-virtual {p0, v10, v11}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->setStartTime(J)V

    .line 100
    const-wide/16 v1, 0x0

    .line 101
    .local v1, endTime:J
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 102
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x186a0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 103
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 104
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_1

    .line 105
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setRepeatCount(I)V

    .line 106
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setRepeatMode(I)V

    .line 115
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->setEndTime(J)V

    .line 117
    const-string v8, "RotateAnimation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  generate rotate animation startTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", endTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getEndTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setDuration(J)V

    .line 122
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    :cond_2
    return-object v6

    .line 111
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    :cond_3
    const-string v8, "RotateAnimation"

    const-string v9, "This is a once animation!"

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setFillAfter(Z)V

    .line 101
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method
