.class public Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
.source "PositionAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/PositionAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionKeyFrame"
.end annotation


# instance fields
.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public debug()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->mY:I

    return v0
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 139
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 141
    iput p1, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->mX:I

    .line 142
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setX(I)V

    .line 146
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 154
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 156
    iput p1, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->mY:I

    .line 157
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setY(I)V

    .line 161
    return-void
.end method
