.class public Lcom/baidu/themeanimation/element/PositionAnimationElement;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement;
.source "PositionAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;,
        Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;,
        Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PositionAnimation"


# instance fields
.field isOnceAnimationBoolean:Ljava/lang/Boolean;

.field private mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->isOnceAnimationBoolean:Ljava/lang/Boolean;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/PositionAnimationElement;)Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    return-object v0
.end method

.method public static inflatePositionAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/PositionAnimationElement;
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
    .local v2, positionAnimationElement:Lcom/baidu/themeanimation/element/PositionAnimationElement;
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

    const-string v4, "PositionAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v2, Lcom/baidu/themeanimation/element/PositionAnimationElement;

    .end local v2           #positionAnimationElement:Lcom/baidu/themeanimation/element/PositionAnimationElement;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/PositionAnimationElement;-><init>()V

    .line 33
    .restart local v2       #positionAnimationElement:Lcom/baidu/themeanimation/element/PositionAnimationElement;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 34
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 35
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 36
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const-string v4, "PositionAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    .end local v0           #eventType:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 41
    .restart local v0       #eventType:I
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-ne v0, v5, :cond_2

    const-string v4, "Position"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    new-instance v3, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    invoke-direct {v3}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;-><init>()V

    .line 45
    .local v3, positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    invoke-static {p0, v3}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->debug()V

    .line 47
    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->addKeyFrame(Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;)V

    .line 50
    .end local v3           #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 51
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public generateAnimations(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/Animation;
    .locals 12
    .parameter "element"

    .prologue
    .line 76
    const/4 v7, 0x0

    .line 78
    .local v7, translateAnimation:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->setListener(Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;)V

    .line 80
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    .local v0, count:I
    if-lez v0, :cond_3

    if-eqz p1, :cond_3

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, index:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    .line 86
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 87
    new-instance v6, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    invoke-direct {v6}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;-><init>()V

    .line 88
    .local v6, positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setTime(J)V

    .line 89
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setX(I)V

    .line 90
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setY(I)V

    .line 91
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    .end local v6           #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_0
    new-instance v7, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;

    .end local v7           #translateAnimation:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
    invoke-direct {v7, p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;-><init>(Lcom/baidu/themeanimation/element/PositionAnimationElement;)V

    .line 96
    .restart local v7       #translateAnimation:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->setStartTime(J)V

    .line 97
    const-wide/16 v1, 0x0

    .line 98
    .local v1, endTime:J
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 99
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 100
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 101
    iget-object v8, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_1

    .line 102
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setRepeatCount(I)V

    .line 103
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setRepeatMode(I)V

    .line 114
    :cond_1
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->isOnceAnimationBoolean:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 117
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->setEndTime(J)V

    .line 119
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setDuration(J)V

    .line 122
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_3
    return-object v7

    .line 109
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_4
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->isOnceAnimationBoolean:Ljava/lang/Boolean;

    .line 110
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setFillAfter(Z)V

    .line 98
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 69
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 72
    return-void
.end method

.method public setListener(Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    .line 172
    return-void
.end method
