.class public Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
.super Ljava/lang/Object;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/UnlockerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockPath"
.end annotation


# instance fields
.field private mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

.field private mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

.field private mTolerance:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 770
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mTolerance:I

    .line 764
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mX:I

    .line 765
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mY:I

    .line 766
    iput-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    .line 768
    iput-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    .line 771
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mTolerance:I

    .line 774
    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    return-object v0
.end method

.method public getMaxX()I
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mX:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxY()I
    .locals 2

    .prologue
    .line 865
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mY:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinX()I
    .locals 2

    .prologue
    .line 853
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mX:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinY()I
    .locals 2

    .prologue
    .line 861
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mY:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    return-object v0
.end method

.method public getTolerance()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mTolerance:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mY:I

    return v0
.end method

.method public setEndPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 841
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 842
    int-to-float v0, p2

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 844
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iput p1, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    .line 845
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iput p2, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    .line 846
    return-void
.end method

.method public setEndPoint(Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mEndPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    .line 850
    return-void
.end method

.method public setStartPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 824
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 825
    int-to-float v0, p2

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 827
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iput p1, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    .line 828
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    iput p2, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    .line 829
    return-void
.end method

.method public setStartPoint(Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    .line 833
    return-void
.end method

.method public setTolerance(I)V
    .locals 0
    .parameter "tolerance"

    .prologue
    .line 781
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mTolerance:I

    .line 782
    return-void
.end method

.method public setTolerance(Ljava/lang/String;)V
    .locals 1
    .parameter "tolerance"

    .prologue
    .line 785
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->setTolerance(I)V

    .line 786
    return-void
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 794
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 796
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mX:I

    .line 797
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->setX(I)V

    .line 801
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 809
    int-to-float v0, p1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 811
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->mY:I

    .line 812
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 815
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->setY(I)V

    .line 816
    return-void
.end method
