.class public Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;
.super Landroid/view/animation/Animation;
.source "SourceAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SourceAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockSourceAnimation"
.end annotation


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStage:I

.field private mElement:Lcom/baidu/themeanimation/element/BaseElement;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/SourceAnimationElement;Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 4
    .parameter
    .parameter "element"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    .line 139
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 135
    const/4 v3, -0x1

    iput v3, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .line 140
    iput-object p2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mBitmaps:Ljava/util/List;

    .line 144
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 145
    iget-object v3, p1, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, src:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mBitmaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #src:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v6, 0x0

    .line 162
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/BaseElement;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 164
    .local v3, view:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    if-eqz v3, :cond_2

    .line 165
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->getEndTime()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v2, p1, v4

    .line 170
    .local v2, time:F
    iget v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 171
    const/4 v4, 0x1

    iput v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    iget v5, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_4

    .line 174
    iget v1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    .line 175
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    .line 187
    :cond_1
    iget v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    if-eq v4, v1, :cond_2

    .line 188
    iput v1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mBitmaps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 193
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    if-eqz v0, :cond_5

    .line 197
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #time:F
    .end local v3           #view:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_2
    :goto_1
    return-void

    .line 174
    .restart local v1       #i:I
    .restart local v2       #time:F
    .restart local v3       #view:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 180
    .end local v1           #i:I
    :cond_4
    iget v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    add-int/lit8 v1, v4, 0x1

    .restart local v1       #i:I
    :goto_2
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/BaseAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/BaseAnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpg-float v4, v2, v4

    if-lez v4, :cond_1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method public getElement()Lcom/baidu/themeanimation/element/BaseElement;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/BaseElement;

    return-object v0
.end method
