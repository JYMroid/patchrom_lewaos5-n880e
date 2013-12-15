.class public Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;
.super Ljava/lang/Object;
.source "BaseAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/BaseAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseKeyFrame"
.end annotation


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->mTime:J

    return-wide v0
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->mTime:J

    .line 97
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->setTime(J)V

    .line 101
    return-void
.end method
