.class public Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
.source "AlphaAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/AlphaAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaKeyFrame"
.end annotation


# instance fields
.field private mA:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public debug()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public getA()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->mA:F

    return v0
.end method

.method public setA(F)V
    .locals 1
    .parameter "a"

    .prologue
    .line 121
    const/high16 v0, 0x437f

    div-float v0, p1, v0

    iput v0, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->mA:F

    .line 122
    return-void
.end method

.method public setA(Ljava/lang/String;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 125
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->setA(F)V

    .line 126
    return-void
.end method
