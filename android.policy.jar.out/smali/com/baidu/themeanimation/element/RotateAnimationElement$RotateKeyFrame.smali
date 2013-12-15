.class public Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
.source "RotateAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/RotateAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotateKeyFrame"
.end annotation


# instance fields
.field private mAngle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public debug()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "RotateAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  angle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->mAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->mAngle:I

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 70
    iput p1, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->mAngle:I

    .line 71
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->setAngle(I)V

    .line 75
    return-void
.end method
