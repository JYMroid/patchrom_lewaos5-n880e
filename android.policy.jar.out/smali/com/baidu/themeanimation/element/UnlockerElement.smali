.class public Lcom/baidu/themeanimation/element/UnlockerElement;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;,
        Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;,
        Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;,
        Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;,
        Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;,
        Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    }
.end annotation


# static fields
.field private static mUnlockerElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/UnlockerElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mStandAloneMode:Z

.field private mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

.field private mTouchState:I

.field private mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    .line 93
    invoke-static {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->addUnlockerElement(Lcom/baidu/themeanimation/element/UnlockerElement;)V

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    return-object v0
.end method

.method public static addUnlockerElement(Lcom/baidu/themeanimation/element/UnlockerElement;)V
    .locals 1
    .parameter "unlockerElement"

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    .line 44
    :cond_0
    sget-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public static dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V
    .locals 4
    .parameter "unlockerElement"
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 55
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStandAloneMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 57
    .local v1, visibleBoolean:Ljava/lang/Boolean;
    if-ne p1, v3, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 62
    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_1

    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStandAloneMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->setVisible(Z)V

    .line 67
    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->clearAnimations()V

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0           #i:I
    .end local v1           #visibleBoolean:Ljava/lang/Boolean;
    :cond_2
    return-void
.end method


# virtual methods
.method public addEndPoint(Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;)V
    .locals 1
    .parameter "endpoint"

    .prologue
    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    return-void
.end method

.method public clearView()V
    .locals 3

    .prologue
    .line 954
    invoke-super {p0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 955
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    if-eqz v2, :cond_1

    .line 956
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 957
    .local v1, viewGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 958
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 961
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    .line 962
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    if-eqz v2, :cond_1

    .line 963
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->clearView()V

    .line 966
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 967
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 968
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->clearView()V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-direct {v0, p0, p1, p0, p2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;-><init>(Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->setView(Landroid/view/View;)V

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 981
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    return-object v0
.end method

.method public getEndPoint(I)Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .locals 1
    .parameter "index"

    .prologue
    .line 165
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStandAloneMode()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    return v0
.end method

.method public getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    return-object v0
.end method

.method public inEndPoint(FF)I
    .locals 6
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 203
    const/4 v3, -0x1

    .line 205
    .local v3, index:I
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    if-eqz v1, :cond_0

    .line 210
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 211
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    .line 217
    .local v0, endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getX()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getW()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getY()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getH()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    .line 221
    move v3, v2

    .line 227
    .end local v0           #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .end local v2           #i:I
    :cond_0
    return v3

    .line 210
    .restart local v0       #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public inStartPoint(FF)Ljava/lang/Boolean;
    .locals 4
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 175
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 176
    .local v0, result:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v1

    .line 177
    .local v1, startPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getX()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getX()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getW()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getY()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getY()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getH()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 182
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method protected onCategoryChange(I)V
    .locals 3
    .parameter "category"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->dispatchCategoryChange(I)V

    .line 236
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->dispatchCategoryChange(I)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->onTimeTick(Landroid/text/format/Time;)V

    .line 247
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->onTimeTick(Landroid/text/format/Time;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public releaseUnlockerElement()V
    .locals 3

    .prologue
    .line 74
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    if-eq v1, v2, :cond_0

    .line 77
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->releaseAttributAnimation()V

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    #calls: Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V
    invoke-static {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->access$000(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V

    .line 993
    :cond_0
    return-void
.end method

.method public setBounceAcceleration(Ljava/lang/String;)V
    .locals 0
    .parameter "bounceInitSpeed"

    .prologue
    .line 126
    return-void
.end method

.method public setBounceInitSpeed(Ljava/lang/String;)V
    .locals 0
    .parameter "bounceInitSpeed"

    .prologue
    .line 122
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setStandAloneMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    .line 119
    return-void
.end method

.method public setStandAloneMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    .line 115
    return-void
.end method

.method public setStartPoint(Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)V
    .locals 0
    .parameter "startPoint"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    .line 148
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 138
    return-void
.end method

.method public startAnimations()V
    .locals 5

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v3

    iget v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->startAnimations(I)V

    .line 1551
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v1

    .line 1552
    .local v1, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    if-eqz v1, :cond_0

    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1555
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    check-cast v0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    .line 1556
    .restart local v0       #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    iget v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    invoke-virtual {v0, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->startAnimations(I)V

    .line 1554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1559
    .end local v0           #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method public updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 10
    .parameter "downEvent"
    .parameter "deltaPoint"
    .parameter "state"

    .prologue
    .line 259
    const/4 v5, 0x0

    .line 260
    .local v5, move_x:F
    const/4 v6, 0x0

    .line 261
    .local v6, move_y:F
    const/4 v0, 0x0

    .line 262
    .local v0, actual_x:F
    const/4 v1, 0x0

    .line 263
    .local v1, actual_y:F
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v2

    .line 265
    .local v2, expressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;
    if-eqz p2, :cond_0

    .line 266
    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v8

    iget v8, v8, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float v5, v7, v8

    .line 267
    iget v7, p2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v8

    iget v8, v8, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float v6, v7, v8

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getX()I

    move-result v7

    int-to-float v7, v7

    add-float v0, v5, v7

    .line 279
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getY()I

    move-result v7

    int-to-float v7, v7

    add-float v1, v6, v7

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".move_x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v5

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".move_y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v6

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".actual_x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v0

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".actual_y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v1

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 288
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    invoke-static {v7}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    float-to-double v3, v7

    .line 289
    .local v3, move_dist:D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".move_dist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    double-to-int v8, v3

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 291
    if-eqz p3, :cond_1

    const/4 v7, 0x1

    if-eq p3, v7, :cond_1

    const/4 v7, 0x2

    if-ne p3, v7, :cond_2

    .line 293
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    int-to-long v8, p3

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 295
    :cond_2
    return-void
.end method
