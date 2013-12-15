.class public Lcom/lewa/widget/IncomWidgetView;
.super Landroid/view/View;
.source "IncomWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final CRICLE_ANIMATION_DURATION:I = 0x29b

.field private static final DEBUG:Z = true

.field private static final HIDE_ANIMATION_DELAY:I = 0x0

.field private static final HIDE_ANIMATION_DELAY_WITH_HIT:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0x12c

.field private static final HIDE_ANIMATION_DURATION_WITH_HIT:I = 0x4b0

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x12c

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IncomWidgetView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f


# instance fields
.field private mActionCancel:Z

.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mBlockHideTargetsAfterHitAndBeforeRelease:Z

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lewa/widget/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lewa/widget/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mCricleAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lewa/widget/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

.field private mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/lewa/widget/Tweener;

.field private mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/lewa/widget/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lewa/widget/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrablesPosition:[[F

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lewa/widget/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalOffset:F

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lewa/widget/IncomWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 172
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    sget-object v13, Lcom/lewa/widget/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 90
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 91
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 92
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 93
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 96
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    .line 105
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    .line 106
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mVibrationDuration:I

    .line 108
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    .line 114
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    .line 115
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    .line 116
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    .line 119
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    .line 120
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lewa/widget/IncomWidgetView;->mActionCancel:Z

    .line 122
    new-instance v13, Lcom/lewa/widget/IncomWidgetView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lewa/widget/IncomWidgetView$1;-><init>(Lcom/lewa/widget/IncomWidgetView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 129
    new-instance v13, Lcom/lewa/widget/IncomWidgetView$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lewa/widget/IncomWidgetView$2;-><init>(Lcom/lewa/widget/IncomWidgetView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 137
    new-instance v13, Lcom/lewa/widget/IncomWidgetView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lewa/widget/IncomWidgetView$3;-><init>(Lcom/lewa/widget/IncomWidgetView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 145
    new-instance v13, Lcom/lewa/widget/IncomWidgetView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lewa/widget/IncomWidgetView$4;-><init>(Lcom/lewa/widget/IncomWidgetView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 160
    const/4 v13, 0x4

    new-array v13, v13, [[F

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v17, v0

    aput v17, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v17, v0

    aput v17, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v17, v0

    aput v17, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v17, v0

    aput v17, v15, v16

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    .line 1088
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCount:I

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 175
    .local v11, res:Landroid/content/res/Resources;
    sget-object v13, Lcom/android/phone/R$styleable;->IncomWidgetView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 176
    .local v2, a:Landroid/content/res/TypedArray;
    const/16 v13, 0x9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    .line 177
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mHorizontalOffset:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mHorizontalOffset:F

    .line 179
    const/16 v13, 0xe

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mVerticalOffset:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mVerticalOffset:F

    .line 181
    const/16 v13, 0xa

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    .line 182
    const/16 v13, 0xc

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    .line 183
    const/16 v13, 0xb

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mVibrationDuration:I

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mVibrationDuration:I

    .line 185
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    .line 187
    new-instance v13, Lcom/lewa/widget/TargetDrawable;

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Lcom/lewa/widget/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    .line 189
    new-instance v13, Lcom/lewa/widget/TargetDrawable;

    const v14, 0x7f0200dd

    invoke-direct {v13, v11, v14}, Lcom/lewa/widget/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    .line 191
    new-instance v13, Lcom/lewa/widget/TargetDrawable;

    const v14, 0x7f0200e0

    invoke-direct {v13, v11, v14}, Lcom/lewa/widget/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v13}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTapRadius:F

    .line 194
    new-instance v13, Lcom/lewa/widget/TargetDrawable;

    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Lcom/lewa/widget/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    .line 197
    const/4 v13, 0x4

    new-array v6, v13, [I

    fill-array-data v6, :array_0

    .line 202
    .local v6, chevrons:[I
    move-object v3, v6

    .local v3, arr$:[I
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget v4, v3, v8

    .line 203
    .local v4, chevron:I
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 204
    .local v5, chevronDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    if-ge v7, v13, :cond_1

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronDrawables:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    new-instance v13, Lcom/lewa/widget/TargetDrawable;

    invoke-direct {v13, v11, v5}, Lcom/lewa/widget/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 205
    :cond_0
    const/4 v13, 0x0

    goto :goto_2

    .line 202
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 211
    .end local v4           #chevron:I
    .end local v5           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #i:I
    :cond_2
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 212
    .local v10, outValue:Landroid/util/TypedValue;
    const/4 v13, 0x0

    invoke-virtual {v2, v13, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 213
    iget v13, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lewa/widget/IncomWidgetView;->internalSetTargetResources(I)V

    .line 215
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_5

    .line 216
    :cond_4
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must specify at least one target drawable"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 220
    :cond_5
    const/4 v13, 0x1

    invoke-virtual {v2, v13, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 221
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    .line 222
    .local v12, resourceId:I
    if-nez v12, :cond_6

    .line 223
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must specify target descriptions"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 225
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lewa/widget/IncomWidgetView;->setTargetDescriptionsResourceId(I)V

    .line 229
    .end local v12           #resourceId:I
    :cond_7
    const/4 v13, 0x2

    invoke-virtual {v2, v13, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 230
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    .line 231
    .restart local v12       #resourceId:I
    if-nez v12, :cond_8

    .line 232
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must specify direction descriptions"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 234
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lewa/widget/IncomWidgetView;->setDirectionDescriptionsResourceId(I)V

    .line 237
    .end local v12           #resourceId:I
    :cond_9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/widget/IncomWidgetView;->mVibrationDuration:I

    if-lez v13, :cond_a

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lewa/widget/IncomWidgetView;->setVibrateEnabled(Z)V

    .line 239
    return-void

    .line 238
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 197
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/lewa/widget/IncomWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lewa/widget/IncomWidgetView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/lewa/widget/IncomWidgetView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/lewa/widget/IncomWidgetView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/lewa/widget/IncomWidgetView;)Lcom/lewa/widget/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lewa/widget/IncomWidgetView;)Lcom/lewa/widget/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lewa/widget/IncomWidgetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$602(Lcom/lewa/widget/IncomWidgetView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/lewa/widget/IncomWidgetView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$700(Lcom/lewa/widget/IncomWidgetView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/lewa/widget/IncomWidgetView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->hideTargets(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/lewa/widget/IncomWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lewa/widget/IncomWidgetView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1188
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1189
    invoke-direct {p0, v1}, Lcom/lewa/widget/IncomWidgetView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1190
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lewa/widget/IncomWidgetView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1193
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1194
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lewa/widget/IncomWidgetView;->announceText(Ljava/lang/String;)V

    .line 1188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1203
    invoke-virtual {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1204
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lewa/widget/IncomWidgetView;->sendAccessibilityEvent(I)V

    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lewa/widget/IncomWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1206
    return-void
.end method

.method private deactivateTargets()V
    .locals 3

    .prologue
    .line 414
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/widget/TargetDrawable;

    .line 415
    .local v1, target:Lcom/lewa/widget/TargetDrawable;
    sget-object v2, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 417
    .end local v1           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    .line 418
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->vibrate()V

    .line 449
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 452
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->vibrate()V

    .line 442
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 445
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1172
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/high16 v6, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 455
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    .line 456
    .local v0, activeTarget:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    move v2, v4

    .line 457
    .local v2, targetHit:Z
    :goto_0
    iget-boolean v1, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    .line 458
    .local v1, oldValue:Z
    iput-boolean v5, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    .line 461
    invoke-direct {p0, v4}, Lcom/lewa/widget/IncomWidgetView;->hideTargets(Z)V

    .line 463
    iput-boolean v1, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    .line 465
    iget-object v7, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v7, v3}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 466
    if-eqz v2, :cond_4

    .line 467
    iget-object v3, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/widget/TargetDrawable;

    sget-object v7, Lcom/lewa/widget/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v3, v7}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 469
    invoke-direct {p0, v0}, Lcom/lewa/widget/IncomWidgetView;->hideUnselected(I)V

    .line 472
    const-string v3, "IncomWidgetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finish with target hit = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v3, "IncomWidgetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTrigger mActiveTarget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-boolean v3, p0, Lcom/lewa/widget/IncomWidgetView;->mActionCancel:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    invoke-direct {p0, v3}, Lcom/lewa/widget/IncomWidgetView;->dispatchTriggerEvent(I)V

    .line 475
    :cond_0
    iget-object v3, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v7, 0x0

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "ease"

    aput-object v10, v9, v5

    sget-object v10, Lcom/lewa/widget/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v9, v4

    const-string v4, "delay"

    aput-object v4, v9, v11

    const/16 v4, 0x4b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v12

    const/4 v4, 0x4

    const-string v10, "alpha"

    aput-object v10, v9, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x6

    const-string v6, "x"

    aput-object v6, v9, v4

    const/4 v4, 0x7

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v4

    const/16 v4, 0x8

    const-string v6, "y"

    aput-object v6, v9, v4

    const/16 v4, 0x9

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v4

    const/16 v4, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v9, v4

    const/16 v4, 0xb

    iget-object v6, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v9, v4

    const/16 v4, 0xc

    const-string v6, "onComplete"

    aput-object v6, v9, v4

    const/16 v4, 0xd

    iget-object v6, p0, Lcom/lewa/widget/IncomWidgetView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v9, v4

    invoke-static {v3, v7, v8, v9}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v3

    iput-object v3, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleAnimation:Lcom/lewa/widget/Tweener;

    .line 496
    :goto_2
    iget-boolean v3, p0, Lcom/lewa/widget/IncomWidgetView;->mActionCancel:Z

    if-nez v3, :cond_1

    invoke-direct {p0, v5}, Lcom/lewa/widget/IncomWidgetView;->setGrabbedState(I)V

    .line 497
    :cond_1
    return-void

    .end local v1           #oldValue:Z
    .end local v2           #targetHit:Z
    :cond_2
    move v2, v5

    .line 456
    goto/16 :goto_0

    .restart local v1       #oldValue:Z
    .restart local v2       #targetHit:Z
    :cond_3
    move v3, v6

    .line 465
    goto/16 :goto_1

    .line 484
    :cond_4
    iput-boolean v5, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    .line 486
    iget-object v7, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v8, 0x12c

    const/16 v3, 0xe

    new-array v10, v3, [Ljava/lang/Object;

    const-string v3, "ease"

    aput-object v3, v10, v5

    sget-object v3, Lcom/lewa/widget/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v3, v10, v4

    const-string v3, "delay"

    aput-object v3, v10, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v12

    const/4 v3, 0x4

    const-string v4, "alpha"

    aput-object v4, v10, v3

    const/4 v3, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x6

    const-string v4, "x"

    aput-object v4, v10, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    const/16 v3, 0x8

    const-string v4, "y"

    aput-object v4, v10, v3

    const/16 v3, 0x9

    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    const/16 v3, 0xa

    const-string v4, "onUpdate"

    aput-object v4, v10, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v4, v10, v3

    const/16 v3, 0xc

    const-string v4, "onComplete"

    aput-object v4, v10, v3

    const/16 v4, 0xd

    iget-boolean v3, p0, Lcom/lewa/widget/IncomWidgetView;->mDragging:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lewa/widget/IncomWidgetView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_3
    aput-object v3, v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v3

    iput-object v3, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleAnimation:Lcom/lewa/widget/Tweener;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/lewa/widget/IncomWidgetView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_3
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v0, "IncomWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    :cond_0
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/lewa/widget/IncomWidgetView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1223
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1224
    const-string v0, "IncomWidgetView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v0, 0x0

    .line 1229
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    const v1, 0x3fa66666

    iget v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 1182
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/lewa/widget/IncomWidgetView;->square(F)F

    move-result v1

    return v1

    .line 1180
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    :cond_0
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/lewa/widget/IncomWidgetView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1211
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1212
    const-string v0, "IncomWidgetView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDragging:Z

    .line 892
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopTargetAnimation()V

    .line 895
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 32
    .parameter "event"

    .prologue
    .line 905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lewa/widget/IncomWidgetView;->mDragging:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 906
    invoke-direct/range {p0 .. p1}, Lcom/lewa/widget/IncomWidgetView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 984
    :goto_0
    return-void

    .line 910
    :cond_0
    const/4 v4, -0x1

    .line 911
    .local v4, activeTarget:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 912
    .local v18, res:Landroid/content/res/Resources;
    const v30, 0x7f0d0009

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 913
    .local v24, topYPadding:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 914
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    add-int/lit8 v30, v10, 0x1

    move/from16 v0, v30

    if-ge v13, v0, :cond_e

    .line 915
    if-ge v13, v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v28

    .line 916
    .local v28, x:F
    :goto_2
    if-ge v13, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v29

    .line 917
    .local v29, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v30, v0

    sub-float v26, v28, v30

    .line 918
    .local v26, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v30, v0

    sub-float v27, v29, v30

    .line 919
    .local v27, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/lewa/widget/IncomWidgetView;->dist2(FF)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v25, v0

    .line 920
    .local v25, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    move/from16 v30, v0

    cmpl-float v30, v25, v30

    if-lez v30, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    move/from16 v30, v0

    div-float v19, v30, v25

    .line 921
    .local v19, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v30, v0

    mul-float v31, v26, v19

    add-float v14, v30, v31

    .line 922
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v30, v0

    mul-float v31, v27, v19

    add-float v15, v30, v31

    .line 924
    .local v15, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    .line 925
    .local v20, singleTarget:Z
    :goto_5
    if-eqz v20, :cond_7

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    move/from16 v31, v0

    sub-float v21, v30, v31

    .line 928
    .local v21, snapRadius:F
    cmpl-float v30, v25, v21

    if-lez v30, :cond_1

    .line 929
    const/4 v4, 0x0

    .line 930
    move/from16 v28, v14

    .line 931
    move/from16 v29, v15

    .line 952
    .end local v21           #snapRadius:F
    :cond_1
    :goto_6
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_c

    .line 953
    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V

    .line 954
    if-eqz v20, :cond_a

    move/from16 v16, v14

    .line 955
    .local v16, newX:F
    :goto_7
    if-eqz v20, :cond_b

    move/from16 v17, v15

    .line 956
    .local v17, newY:F
    :goto_8
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/lewa/widget/IncomWidgetView;->moveHandleTo(FFZ)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lewa/widget/TargetDrawable;

    .line 958
    .local v6, currentTarget:Lcom/lewa/widget/TargetDrawable;
    sget-object v30, Lcom/lewa/widget/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/lewa/widget/TargetDrawable;->hasState([I)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 959
    sget-object v30, Lcom/lewa/widget/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 914
    .end local v6           #currentTarget:Lcom/lewa/widget/TargetDrawable;
    .end local v16           #newX:F
    .end local v17           #newY:F
    :cond_2
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 915
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v19           #scale:F
    .end local v20           #singleTarget:Z
    .end local v25           #touchRadius:F
    .end local v26           #tx:F
    .end local v27           #ty:F
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    goto/16 :goto_2

    .line 916
    .restart local v28       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    goto/16 :goto_3

    .line 920
    .restart local v25       #touchRadius:F
    .restart local v26       #tx:F
    .restart local v27       #ty:F
    .restart local v29       #y:F
    :cond_5
    const/high16 v19, 0x3f80

    goto/16 :goto_4

    .line 924
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v19       #scale:F
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 935
    .restart local v20       #singleTarget:Z
    :cond_7
    const v5, 0x7f7fffff

    .line 936
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    move/from16 v31, v0

    mul-float v11, v30, v31

    .line 937
    .local v11, hitRadius2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_9

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lewa/widget/TargetDrawable;

    .line 940
    .local v22, target:Lcom/lewa/widget/TargetDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    move-object/from16 v30, v0

    aget-object v30, v30, v12

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-float v8, v14, v30

    .line 941
    .local v8, dx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    move-object/from16 v30, v0

    aget-object v30, v30, v12

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-float v9, v15, v30

    .line 942
    .local v9, dy:F
    mul-float v30, v8, v8

    mul-float v31, v9, v9

    add-float v7, v30, v31

    .line 943
    .local v7, dist2:F
    invoke-virtual/range {v22 .. v22}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v30

    if-eqz v30, :cond_8

    cmpg-float v30, v7, v11

    if-gez v30, :cond_8

    cmpg-float v30, v7, v5

    if-gez v30, :cond_8

    .line 944
    move v4, v12

    .line 945
    move v5, v7

    .line 937
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 948
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v22           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_9
    move/from16 v28, v14

    .line 949
    move/from16 v29, v15

    goto/16 :goto_6

    .line 954
    .end local v5           #best:F
    .end local v11           #hitRadius2:F
    .end local v12           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/lewa/widget/TargetDrawable;

    invoke-virtual/range {v30 .. v30}, Lcom/lewa/widget/TargetDrawable;->getX()F

    move-result v16

    goto/16 :goto_7

    .line 955
    .restart local v16       #newX:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/lewa/widget/TargetDrawable;

    invoke-virtual/range {v30 .. v30}, Lcom/lewa/widget/TargetDrawable;->getY()F

    move-result v17

    goto/16 :goto_8

    .line 963
    .end local v16           #newX:F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lewa/widget/TargetDrawable;

    .line 965
    .restart local v6       #currentTarget:Lcom/lewa/widget/TargetDrawable;
    sget-object v30, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 967
    .end local v6           #currentTarget:Lcom/lewa/widget/TargetDrawable;
    :cond_d
    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V

    .line 968
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/lewa/widget/IncomWidgetView;->moveHandleTo(FFZ)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    move-object/from16 v30, v0

    const/high16 v31, 0x3f80

    invoke-virtual/range {v30 .. v31}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_9

    .line 974
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v19           #scale:F
    .end local v20           #singleTarget:Z
    .end local v25           #touchRadius:F
    .end local v26           #tx:F
    .end local v27           #ty:F
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/lewa/widget/IncomWidgetView;->invalidateGlobalRegion(Lcom/lewa/widget/TargetDrawable;)V

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-eq v0, v4, :cond_f

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_f

    .line 977
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lewa/widget/IncomWidgetView;->dispatchGrabbedEvent(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 979
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lewa/widget/IncomWidgetView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v23

    .line 980
    .local v23, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lewa/widget/IncomWidgetView;->announceText(Ljava/lang/String;)V

    .line 983
    .end local v23           #targetContentDescription:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    goto/16 :goto_0
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDragging:Z

    if-eqz v0, :cond_0

    const-string v0, "IncomWidgetView"

    const-string v1, "** Handle RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    iget-boolean v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDragging:Z

    if-eqz v0, :cond_1

    .line 900
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V

    .line 902
    :cond_1
    return-void
.end method

.method private hideChevrons()V
    .locals 3

    .prologue
    .line 1138
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/TargetDrawable;

    .line 1139
    .local v0, chevron:Lcom/lewa/widget/TargetDrawable;
    if-eqz v0, :cond_0

    .line 1140
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 1143
    .end local v0           #chevron:Lcom/lewa/widget/TargetDrawable;
    :cond_1
    return-void
.end method

.method private hideCricles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 802
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 803
    return-void
.end method

.method private hideTargets(Z)V
    .locals 18
    .parameter "animate"

    .prologue
    .line 509
    const-string v9, "IncomWidgetView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hideTargets animate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mBlockHideTargetsAfterHitAndBeforeRelease = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    if-eqz v9, :cond_0

    .line 578
    :goto_0
    return-void

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->stopTargetAnimation()V

    .line 517
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lewa/widget/IncomWidgetView;->mAnimatingTargets:Z

    .line 518
    if-eqz p1, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lewa/widget/IncomWidgetView;->mActiveTarget:I

    .line 520
    .local v2, activeTarget:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    const/4 v8, 0x1

    .line 522
    .local v8, targetHit:Z
    :goto_1
    if-eqz v8, :cond_4

    .line 523
    if-eqz p1, :cond_3

    const/16 v3, 0x4b0

    .line 524
    .local v3, duration:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lewa/widget/TargetDrawable;

    .line 525
    .local v7, target:Lcom/lewa/widget/TargetDrawable;
    sget-object v9, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v9}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v10, v3

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0xc8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v7, v10, v11, v12}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 520
    .end local v3           #duration:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #target:Lcom/lewa/widget/TargetDrawable;
    .end local v8           #targetHit:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 523
    .restart local v8       #targetHit:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 532
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 535
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v6, :cond_9

    .line 537
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lewa/widget/TargetDrawable;

    .line 539
    .restart local v7       #target:Lcom/lewa/widget/TargetDrawable;
    if-nez v7, :cond_6

    .line 535
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 543
    :cond_6
    sget-object v9, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v9}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 544
    if-nez v4, :cond_7

    .line 545
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v10, 0x12c

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "x"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v16, v0

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v7, v10, v11, v12}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 550
    :cond_7
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    .line 551
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v10, 0x12c

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_1

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "y"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    const/16 v17, 0x1

    aget v16, v16, v17

    aput v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move/from16 v16, v0

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v7, v10, v11, v12}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 556
    :cond_8
    const/4 v9, 0x2

    if-ne v4, v9, :cond_5

    .line 557
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v10, 0x12c

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_2

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "x"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move/from16 v16, v0

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v7, v10, v11, v12}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 566
    .end local v4           #i:I
    .end local v6           #size:I
    .end local v7           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v11, 0x12c

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "onComplete"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 572
    .end local v2           #activeTarget:I
    .end local v8           #targetHit:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lewa/widget/TargetDrawable;

    .line 573
    .restart local v7       #target:Lcom/lewa/widget/TargetDrawable;
    sget-object v9, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v9}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 574
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    goto :goto_6

    .line 576
    .end local v7           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_0

    .line 545
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 551
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 557
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 500
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    if-eq v0, p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 506
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 9
    .parameter "resourceId"

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 648
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 649
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 650
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 651
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lewa/widget/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 652
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 653
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const-string v6, "IncomWidgetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalSetTargetResources, i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", drawable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v6, Lcom/lewa/widget/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/lewa/widget/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 656
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 657
    iput p1, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetResourceId:I

    .line 658
    iput-object v5, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 659
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->updateTargetPositions()V

    .line 660
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1234
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1235
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1236
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1237
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1240
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1241
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 886
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 887
    return-void
.end method

.method private performInitialLayout(FF)V
    .locals 5
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1040
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1041
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/lewa/widget/IncomWidgetView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    .line 1043
    :cond_0
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHitRadius:F

    .line 1047
    :cond_1
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1048
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/lewa/widget/IncomWidgetView;->mSnapMargin:F

    .line 1052
    :cond_2
    invoke-direct {p0, v4}, Lcom/lewa/widget/IncomWidgetView;->hideTargets(Z)V

    .line 1054
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 1055
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 1056
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 1057
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 1059
    invoke-direct {p0, p1, p2, v4}, Lcom/lewa/widget/IncomWidgetView;->moveHandleTo(FFZ)V

    .line 1060
    return-void
.end method

.method private resetCricles()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 807
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 808
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 301
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 310
    move v0, v1

    .line 312
    :goto_0
    return v0

    .line 303
    :sswitch_0
    move v0, p2

    .line 304
    goto :goto_0

    .line 306
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 307
    goto :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1012
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1013
    if-eqz p1, :cond_0

    .line 1014
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->vibrate()V

    .line 1016
    :cond_0
    iput p1, p0, Lcom/lewa/widget/IncomWidgetView;->mGrabbedState:I

    .line 1017
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1021
    :cond_1
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .parameter "animate"

    .prologue
    .line 581
    const-string v4, "IncomWidgetView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showTargets animate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopTargetAnimation()V

    .line 585
    :cond_0
    iput-boolean p1, p0, Lcom/lewa/widget/IncomWidgetView;->mAnimatingTargets:Z

    .line 586
    if-eqz p1, :cond_6

    .line 587
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 590
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 592
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/widget/TargetDrawable;

    .line 594
    .local v3, target:Lcom/lewa/widget/TargetDrawable;
    if-nez v3, :cond_2

    .line 590
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_2
    sget-object v4, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 599
    if-nez v0, :cond_3

    .line 600
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v5, 0x12c

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "alpha"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "x"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    aget-object v11, v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "delay"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v3, v5, v6, v7}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    :cond_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 606
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v5, 0x12c

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "alpha"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "y"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    aget-object v11, v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "delay"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v3, v5, v6, v7}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 611
    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 612
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v5, 0x12c

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "alpha"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "x"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    aget-object v11, v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "delay"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v3, v5, v6, v7}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 619
    .end local v3           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_5
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v6, 0x12c

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "onComplete"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v0           #i:I
    .end local v2           #size:I
    :goto_2
    return-void

    .line 625
    :cond_6
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/widget/TargetDrawable;

    .line 626
    .restart local v3       #target:Lcom/lewa/widget/TargetDrawable;
    sget-object v4, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 627
    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    goto :goto_3

    .line 629
    .end local v3           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_7
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    goto :goto_2

    .line 600
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 606
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 612
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1168
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .locals 20

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v11}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd

    mul-float v8, v11, v12

    .line 364
    .local v8, r:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    const v12, 0x3f666666

    mul-float v1, v11, v12

    .line 365
    .local v1, chevronAnimationDistance:F
    const/4 v11, 0x4

    new-array v6, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    .line 370
    .local v6, from:[[F
    const/4 v11, 0x4

    new-array v10, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    .line 376
    .local v10, to:[[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 377
    const/high16 v9, 0x3f00

    .line 378
    .local v9, startScale:F
    const/high16 v5, 0x4000

    .line 379
    .local v5, endScale:F
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_0
    const/4 v11, 0x4

    if-ge v4, v11, :cond_2

    .line 380
    const/4 v2, 0x0

    .local v2, count:I
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    if-ge v2, v11, :cond_1

    .line 381
    mul-int/lit16 v3, v2, 0xa0

    .line 382
    .local v3, delay:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lewa/widget/IncomWidgetView;->mFeedbackCount:I

    mul-int/2addr v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lewa/widget/TargetDrawable;

    .line 383
    .local v7, icon:Lcom/lewa/widget/TargetDrawable;
    if-nez v7, :cond_0

    .line 380
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x352

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "x"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v7, v12, v13, v14}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 379
    .end local v3           #delay:I
    .end local v7           #icon:Lcom/lewa/widget/TargetDrawable;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 397
    .end local v2           #count:I
    :cond_2
    return-void

    .line 386
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private startCricleAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 736
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 738
    iget-boolean v0, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    if-eqz v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v2, 0x29b

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "alpha"

    aput-object v5, v4, v7

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    aput-object v5, v4, v10

    const-string v5, "scaleX"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v2, 0x29b

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v8

    const/16 v5, 0x29b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "alpha"

    aput-object v5, v4, v7

    new-array v5, v7, [F

    fill-array-data v5, :array_3

    aput-object v5, v4, v10

    const-string v5, "scaleX"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    new-array v6, v7, [F

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [F

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v8, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 763
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v2, 0x536

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "scaleX"

    aput-object v5, v4, v7

    new-array v5, v7, [F

    fill-array-data v5, :array_6

    aput-object v5, v4, v10

    const-string v5, "scaleY"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    new-array v6, v7, [F

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/lewa/widget/IncomWidgetView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v2, 0x29b

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "alpha"

    aput-object v5, v4, v7

    new-array v5, v7, [F

    fill-array-data v5, :array_8

    aput-object v5, v4, v10

    const-string v5, "onUpdate"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v8, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    const-wide/16 v2, 0x29b

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "delay"

    aput-object v5, v4, v8

    const/16 v5, 0x29b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "alpha"

    aput-object v5, v4, v7

    new-array v5, v7, [F

    fill-array-data v5, :array_9

    aput-object v5, v4, v10

    const-string v5, "onUpdate"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v8, v4}, Lcom/lewa/widget/Tweener;->to(Ljava/lang/Object;JZ[Ljava/lang/Object;)Lcom/lewa/widget/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 743
    :array_0
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x4et 0x62t 0x80t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x4et 0x62t 0x80t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
    .end array-data

    .line 751
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x4et 0x62t 0x80t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x4et 0x62t 0x80t 0x3ft
    .end array-data

    .line 763
    :array_6
    .array-data 0x4
        0x4et 0x62t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data

    :array_7
    .array-data 0x4
        0x4et 0x62t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data

    .line 771
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 777
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopChevronAnimation()V
    .locals 3

    .prologue
    .line 400
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/Tweener;

    .line 401
    .local v0, anim:Lcom/lewa/widget/Tweener;
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 403
    .end local v0           #anim:Lcom/lewa/widget/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 404
    return-void
.end method

.method private stopCricleAnimation()V
    .locals 3

    .prologue
    .line 788
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/Tweener;

    .line 789
    .local v0, anim:Lcom/lewa/widget/Tweener;
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 790
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 791
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 793
    :cond_1
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt2:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 794
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animatorExt2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 797
    .end local v0           #anim:Lcom/lewa/widget/Tweener;
    :cond_2
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 798
    return-void
.end method

.method private stopHandleAnimation()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleAnimation:Lcom/lewa/widget/Tweener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleAnimation:Lcom/lewa/widget/Tweener;

    iget-object v0, v0, Lcom/lewa/widget/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleAnimation:Lcom/lewa/widget/Tweener;

    .line 411
    :cond_0
    return-void
.end method

.method private stopTargetAnimation()V
    .locals 3

    .prologue
    .line 634
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/Tweener;

    .line 635
    .local v0, anim:Lcom/lewa/widget/Tweener;
    iget-object v2, v0, Lcom/lewa/widget/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 637
    .end local v0           #anim:Lcom/lewa/widget/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 638
    return-void
.end method

.method private switchToState(IFF)V
    .locals 3
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 328
    :pswitch_1
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->deactivateTargets()V

    .line 329
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    sget-object v1, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopHandleAnimation()V

    .line 334
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopCricleAnimation()V

    .line 335
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->hideCricles()V

    .line 336
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->deactivateTargets()V

    .line 337
    invoke-direct {p0, v2}, Lcom/lewa/widget/IncomWidgetView;->showTargets(Z)V

    .line 338
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    sget-object v1, Lcom/lewa/widget/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 339
    invoke-direct {p0, v2}, Lcom/lewa/widget/IncomWidgetView;->setGrabbedState(I)V

    .line 340
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->announceTargets()V

    goto :goto_0

    .line 352
    :pswitch_3
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->doFinish()V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1025
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1026
    .local v3, y:F
    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 1027
    .local v0, dx:F
    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 1028
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/lewa/widget/IncomWidgetView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 1029
    const-string v6, "IncomWidgetView"

    const-string v7, "** Handle HIT"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-boolean v4, p0, Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z

    .line 1031
    invoke-direct {p0, v4, v2, v3}, Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V

    .line 1032
    invoke-direct {p0, v2, v3, v5}, Lcom/lewa/widget/IncomWidgetView;->moveHandleTo(FFZ)V

    .line 1033
    iput-boolean v4, p0, Lcom/lewa/widget/IncomWidgetView;->mDragging:Z

    .line 1036
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private updateTargetPositions()V
    .locals 17

    .prologue
    .line 1091
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCount:I

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1093
    .local v4, res:Landroid/content/res/Resources;
    const v13, 0x7f0d0007

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1094
    .local v9, xPadding:I
    const v13, 0x7f0d0008

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1095
    .local v11, yPadding:I
    const v13, 0x7f0d0009

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1098
    .local v8, topYPadding:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 1099
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lewa/widget/TargetDrawable;

    .line 1100
    .local v5, targetIcon:Lcom/lewa/widget/TargetDrawable;
    if-eqz v5, :cond_2

    .line 1101
    const-string v13, "IncomWidgetView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateTargetPositions, i="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isValid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {v5}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1103
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCount:I

    .line 1108
    :cond_0
    :goto_1
    const-wide v13, -0x3fe6de04abbbd2e8L

    int-to-double v15, v3

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    int-to-double v15, v15

    div-double v1, v13, v15

    .line 1109
    .local v1, angle:D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    double-to-float v15, v15

    mul-float/2addr v14, v15

    add-float v10, v13, v14

    .line 1110
    .local v10, xPosition:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    double-to-float v15, v15

    mul-float/2addr v14, v15

    add-float v12, v13, v14

    .line 1112
    .local v12, yPosition:F
    const/4 v13, 0x1

    if-ne v3, v13, :cond_1

    .line 1113
    int-to-float v13, v8

    add-float/2addr v12, v13

    .line 1116
    :cond_1
    invoke-virtual {v5, v10}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 1117
    invoke-virtual {v5, v12}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aput v10, v13, v14

    .line 1119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrablesPosition:[[F

    aget-object v13, v13, v3

    const/4 v14, 0x1

    aput v12, v13, v14

    .line 1120
    const-string v13, "IncomWidgetView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateTargetPositions, i="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", xPosition="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", yPosition="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", angle="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mOuterRadius="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lewa/widget/IncomWidgetView;->mOuterRadius:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mWaveCenterY="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mWaveCenterX="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1106
    .end local v1           #angle:D
    .end local v10           #xPosition:F
    .end local v12           #yPosition:F
    :cond_2
    const-string v13, "IncomWidgetView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateTargetPositions, i="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", targetIcon != null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1124
    .end local v5           #targetIcon:Lcom/lewa/widget/TargetDrawable;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/widget/IncomWidgetView;->mCount:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 1125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lewa/widget/TargetDrawable;

    .line 1126
    .local v6, targetIcon0:Lcom/lewa/widget/TargetDrawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lewa/widget/TargetDrawable;

    .line 1127
    .local v7, targetIcon1:Lcom/lewa/widget/TargetDrawable;
    const-string v13, "IncomWidgetView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetIcon0.isValid() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const-string v13, "IncomWidgetView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetIcon1.isValid() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v13, "IncomWidgetView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "this.getWidth() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {v6}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Lcom/lewa/widget/TargetDrawable;->isValid()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->getWidth()I

    move-result v13

    const/16 v14, 0x1e0

    if-eq v13, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->getWidth()I

    move-result v13

    if-eqz v13, :cond_5

    .line 1132
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/widget/IncomWidgetView;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->debug()V

    .line 1135
    .end local v6           #targetIcon0:Lcom/lewa/widget/TargetDrawable;
    .end local v7           #targetIcon1:Lcom/lewa/widget/TargetDrawable;
    :cond_5
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 644
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1}, Lcom/lewa/widget/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0}, Lcom/lewa/widget/TargetDrawable;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v0}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/lewa/widget/TargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 421
    invoke-virtual {p1}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v3

    .line 422
    .local v3, width:I
    invoke-virtual {p1}, Lcom/lewa/widget/TargetDrawable;->getHeight()I

    move-result v1

    .line 423
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 424
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/lewa/widget/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/lewa/widget/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 425
    move-object v2, p0

    .line 426
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 427
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 428
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 429
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1147
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/lewa/widget/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1148
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/widget/TargetDrawable;

    .line 1149
    .local v1, target:Lcom/lewa/widget/TargetDrawable;
    if-eqz v1, :cond_0

    .line 1150
    invoke-virtual {v1, p1}, Lcom/lewa/widget/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1153
    .end local v1           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/widget/TargetDrawable;

    .line 1154
    .restart local v1       #target:Lcom/lewa/widget/TargetDrawable;
    if-eqz v1, :cond_2

    .line 1155
    invoke-virtual {v1, p1}, Lcom/lewa/widget/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1158
    .end local v1           #target:Lcom/lewa/widget/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/lewa/widget/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1159
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/lewa/widget/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1160
    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/lewa/widget/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1161
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 988
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 990
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1001
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1002
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1004
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 992
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 995
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 998
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 1064
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1065
    const-string v4, "IncomWidgetView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayout, changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",left="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bottom="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHorizontalOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mHorizontalOffset:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mVerticalOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mVerticalOffset:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    sub-int v3, p4, p2

    .line 1068
    .local v3, width:I
    sub-int v0, p5, p3

    .line 1069
    .local v0, height:I
    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v5}, Lcom/lewa/widget/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 1070
    .local v1, newWaveCenterX:F
    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v5}, Lcom/lewa/widget/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 1071
    .local v2, newWaveCenterY:F
    const-string v4, "IncomWidgetView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayout, newWaveCenterX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newWaveCenterY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaveCenterX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaveCenterY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 1074
    :cond_0
    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    iget v4, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    .line 1075
    invoke-direct {p0, v1, v2}, Lcom/lewa/widget/IncomWidgetView;->performInitialLayout(FF)V

    .line 1077
    :cond_1
    iput v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    .line 1078
    iput v2, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    .line 1080
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    iget v5, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 1081
    iget-object v4, p0, Lcom/lewa/widget/IncomWidgetView;->mOuterRing:Lcom/lewa/widget/TargetDrawable;

    iget v5, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    iget v6, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 1083
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->updateTargetPositions()V

    .line 1085
    :cond_2
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->dump()V

    .line 1086
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 318
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 319
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/lewa/widget/IncomWidgetView;->resolveMeasured(II)I

    move-result v3

    .line 320
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/lewa/widget/IncomWidgetView;->resolveMeasured(II)I

    move-result v2

    .line 321
    .local v2, viewHeight:I
    const-string v4, "IncomWidgetView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure, viewWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0, v3, v2}, Lcom/lewa/widget/IncomWidgetView;->setMeasuredDimension(II)V

    .line 323
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 850
    .local v0, action:I
    const/4 v1, 0x0

    .line 851
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 879
    :goto_0
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->invalidate()V

    .line 880
    if-eqz v1, :cond_0

    :goto_1
    return v2

    .line 853
    :pswitch_0
    const-string v3, "IncomWidgetView"

    const-string v4, "ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->handleDown(Landroid/view/MotionEvent;)V

    .line 855
    const/4 v1, 0x1

    .line 856
    goto :goto_0

    .line 859
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->handleMove(Landroid/view/MotionEvent;)V

    .line 860
    const/4 v1, 0x1

    .line 861
    goto :goto_0

    .line 864
    :pswitch_2
    const-string v3, "IncomWidgetView"

    const-string v4, "ACTION_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lewa/widget/IncomWidgetView;->mActionCancel:Z

    .line 866
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->handleMove(Landroid/view/MotionEvent;)V

    .line 867
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->handleUp(Landroid/view/MotionEvent;)V

    .line 868
    const/4 v1, 0x1

    .line 869
    goto :goto_0

    .line 872
    :pswitch_3
    const-string v3, "IncomWidgetView"

    const-string v4, "ACTION_CANCEL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iput-boolean v2, p0, Lcom/lewa/widget/IncomWidgetView;->mActionCancel:Z

    .line 874
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->handleMove(Landroid/view/MotionEvent;)V

    .line 875
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->handleUp(Landroid/view/MotionEvent;)V

    .line 876
    const/4 v1, 0x1

    goto :goto_0

    .line 880
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopCricleAnimation()V

    .line 819
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->startCricleAnimation()V

    .line 820
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopHandleAnimation()V

    .line 831
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopCricleAnimation()V

    .line 832
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->stopTargetAnimation()V

    .line 834
    invoke-direct {p0}, Lcom/lewa/widget/IncomWidgetView;->resetCricles()V

    .line 835
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->hideTargets(Z)V

    .line 836
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 837
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 838
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 839
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 840
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setX(F)V

    .line 841
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    iget v1, p0, Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setY(F)V

    .line 842
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    sget-object v1, Lcom/lewa/widget/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setState([I)V

    .line 843
    invoke-static {}, Lcom/lewa/widget/Tweener;->reset()V

    .line 844
    return-void
.end method

.method public setCricleAnimDrawableImage(II)V
    .locals 2
    .parameter "innerId"
    .parameter "outId"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1, v0, p1}, Lcom/lewa/widget/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mCricleOutDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1, v0, p2}, Lcom/lewa/widget/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 281
    :cond_1
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 707
    iput p1, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptionsResourceId:I

    .line 708
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 711
    :cond_0
    return-void
.end method

.method public setHandleDrawableImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;

    invoke-virtual {v1, v0, p1}, Lcom/lewa/widget/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 265
    :cond_0
    return-void
.end method

.method public setOnTriggerListener(Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/lewa/widget/IncomWidgetView;->mOnTriggerListener:Lcom/lewa/widget/IncomWidgetView$OnTriggerListener;

    .line 1165
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 686
    iput p1, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptionsResourceId:I

    .line 687
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 690
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/lewa/widget/IncomWidgetView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 670
    iput p1, p0, Lcom/lewa/widget/IncomWidgetView;->mNewTargetResources:I

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-direct {p0, p1}, Lcom/lewa/widget/IncomWidgetView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 728
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/lewa/widget/IncomWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrator:Landroid/os/Vibrator;

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/widget/IncomWidgetView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method
