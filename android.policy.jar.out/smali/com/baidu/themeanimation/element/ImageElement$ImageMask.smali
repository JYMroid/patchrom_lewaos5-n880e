.class public Lcom/baidu/themeanimation/element/ImageElement$ImageMask;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageMask"
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x1

.field public static final RELATIVE:I


# instance fields
.field private mAlign:I

.field private mBaseElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mSrc:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/ImageElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/ImageElement;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    .line 90
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mBaseElements:Ljava/util/List;

    .line 91
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->setSrc(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->setAlign(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public debug()V
    .locals 3

    .prologue
    .line 96
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getCenterX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  xy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getCenterY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  align="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getAlign()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "mask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  angle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getAngle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mAlign:I

    return v0
.end method

.method public getBaseElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mBaseElements:Ljava/util/List;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public setAlign(I)V
    .locals 1
    .parameter "align"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 119
    :cond_0
    iput p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mAlign:I

    .line 121
    :cond_1
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 124
    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->setAlign(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->setAlign(I)V

    goto :goto_0
.end method

.method public setBaseElements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, mBaseElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mBaseElements:Ljava/util/List;

    .line 137
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->mSrc:Ljava/lang/String;

    .line 111
    return-void
.end method
