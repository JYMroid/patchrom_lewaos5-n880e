.class public Lcom/baidu/themeanimation/element/SourceAnimationElement;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement;
.source "SourceAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;,
        Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SourceAnimation"


# instance fields
.field private mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    .line 133
    return-void
.end method

.method public static inflateSourceAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/SourceAnimationElement;
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
    const/4 v2, 0x0

    .line 27
    .local v2, sourceAnimationElement:Lcom/baidu/themeanimation/element/SourceAnimationElement;
    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 29
    .local v0, eventType:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, name:Ljava/lang/String;
    if-ne v0, v5, :cond_0

    const-string v4, "SourcesAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    new-instance v2, Lcom/baidu/themeanimation/element/SourceAnimationElement;

    .end local v2           #sourceAnimationElement:Lcom/baidu/themeanimation/element/SourceAnimationElement;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/SourceAnimationElement;-><init>()V

    .line 34
    .restart local v2       #sourceAnimationElement:Lcom/baidu/themeanimation/element/SourceAnimationElement;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 35
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 37
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const-string v4, "SourcesAnimation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    .end local v0           #eventType:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 42
    .restart local v0       #eventType:I
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-ne v0, v5, :cond_2

    const-string v4, "Source"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    new-instance v3, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    invoke-direct {v3}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;-><init>()V

    .line 46
    .local v3, sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-static {p0, v3}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->debug()V

    .line 48
    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->addKeyFrame(Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;)V

    .line 51
    .end local v3           #sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public generateAnimations(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/Animation;
    .locals 14
    .parameter "element"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 64
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->getElement()Lcom/baidu/themeanimation/element/BaseElement;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 65
    :cond_0
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, count:I
    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    .line 69
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    .line 70
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_1

    .line 71
    new-instance v6, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    invoke-direct {v6}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;-><init>()V

    .line 72
    .local v6, sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-virtual {v6, v12, v13}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->setTime(J)V

    .line 73
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->setSrc(Ljava/lang/String;)V

    .line 74
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    .end local v6           #sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_1
    new-instance v7, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-direct {v7, p0, p1}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;-><init>(Lcom/baidu/themeanimation/element/SourceAnimationElement;Lcom/baidu/themeanimation/element/BaseElement;)V

    iput-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    .line 79
    invoke-virtual {p0, v12, v13}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->setStartTime(J)V

    .line 80
    const-wide/16 v1, 0x0

    .line 81
    .local v1, endTime:J
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 82
    .local v4, isOnceAnimationBoolean:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 83
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0x186a0

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 84
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 85
    iget-object v7, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_2

    .line 86
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setRepeatCount(I)V

    .line 87
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {v7, v11}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setRepeatMode(I)V

    .line 98
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    .line 102
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->setEndTime(J)V

    .line 107
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setDuration(J)V

    .line 112
    .end local v0           #count:I
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #isOnceAnimationBoolean:Ljava/lang/Boolean;
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_4
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    return-object v7

    .line 93
    .restart local v0       #count:I
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #isOnceAnimationBoolean:Ljava/lang/Boolean;
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_5
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {v7, v11}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setFillAfter(Z)V

    .line 94
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 82
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method
