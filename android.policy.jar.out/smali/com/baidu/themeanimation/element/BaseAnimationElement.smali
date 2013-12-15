.class public abstract Lcom/baidu/themeanimation/element/BaseAnimationElement;
.super Ljava/lang/Object;
.source "BaseAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field protected mKeyFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mStartTime:J

    .line 13
    iput-wide v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mEndTime:J

    .line 17
    return-void
.end method


# virtual methods
.method public final addKeyFrame(Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;)V
    .locals 1
    .parameter "baseKeyFrame"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public abstract generateAnimations(Lcom/baidu/themeanimation/element/BaseElement;)Landroid/view/animation/Animation;
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mEndTime:J

    return-wide v0
.end method

.method public getKeyFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mStartTime:J

    return-wide v0
.end method

.method public invalidateKeyFrames()V
    .locals 7

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, preKeyFrame:Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    const/4 v1, 0x0

    .line 67
    .local v1, keyFrame:Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #preKeyFrame:Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    check-cast v2, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    .line 71
    .restart local v2       #preKeyFrame:Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #keyFrame:Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    check-cast v1, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    .line 73
    .restart local v1       #keyFrame:Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->setTime(J)V

    .line 76
    :cond_0
    move-object v2, v1

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 40
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 44
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mEndTime:J

    .line 33
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mStartTime:J

    .line 25
    return-void
.end method
