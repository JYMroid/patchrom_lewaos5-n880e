.class public Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
.source "SizeAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SizeAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeKeyFrame"
.end annotation


# instance fields
.field private mH:I

.field private mW:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;-><init>()V

    .line 122
    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mW:I

    .line 123
    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mH:I

    return-void
.end method


# virtual methods
.method public debug()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mH:I

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mW:I

    return v0
.end method

.method public setH(I)V
    .locals 2
    .parameter "h"

    .prologue
    .line 150
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 152
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mH:I

    .line 153
    return-void
.end method

.method public setH(Ljava/lang/String;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setH(I)V

    .line 157
    return-void
.end method

.method public setW(I)V
    .locals 2
    .parameter "w"

    .prologue
    .line 135
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 137
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mW:I

    .line 138
    return-void
.end method

.method public setW(Ljava/lang/String;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setW(I)V

    .line 142
    return-void
.end method
