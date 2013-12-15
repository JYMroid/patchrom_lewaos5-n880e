.class public Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
.super Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
.source "SourceAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SourceAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceKeyFrame"
.end annotation


# instance fields
.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public debug()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->mSrc:Ljava/lang/String;

    .line 128
    return-void
.end method
