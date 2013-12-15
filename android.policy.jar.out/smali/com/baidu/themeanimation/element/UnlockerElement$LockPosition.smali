.class public Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;
.super Ljava/lang/Object;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/UnlockerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockPosition"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 730
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    .line 732
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 739
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 740
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    .line 741
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->setX(I)V

    .line 745
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 752
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 754
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    .line 755
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 758
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->setY(I)V

    .line 759
    return-void
.end method
