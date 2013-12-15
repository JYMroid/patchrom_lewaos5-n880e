.class public Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.super Landroid/widget/RelativeLayout;
.source "TargetHandlePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetHandlePanel"

.field private static mAxisBottom:Landroid/widget/ImageView;

.field private static mAxisLeft:Landroid/widget/ImageView;

.field private static mAxisRight:Landroid/widget/ImageView;

.field private static mAxisTop:Landroid/widget/ImageView;

.field private static mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

.field private static mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private static mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

.field private static mHandleLastX:I

.field private static mHandleLastY:I

.field private static mInAnimation:Landroid/view/animation/Animation;

.field private static mLastHoverTextView:Landroid/widget/TextView;

.field private static mMissMessageCountView:Landroid/widget/TextView;

.field private static mOutAnimation:Landroid/view/animation/Animation;

.field private static mRotateAnimation:Landroid/view/animation/Animation;

.field private static mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static final mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private static mTargetCamera:Landroid/widget/ImageView;

.field private static mTargetHandle:Landroid/widget/ImageView;

.field private static mTargetMessage:Landroid/widget/ImageView;

.field private static mTargetRefresh:Landroid/widget/ImageView;

.field private static mTargetRefresh2:Landroid/widget/ImageView;

.field private static mTargetRing:Landroid/widget/ImageView;

.field private static mTargetUnlock:Landroid/widget/ImageView;

.field private static mUnreadCount:I

.field private static mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 50
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 52
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 54
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 56
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 58
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 60
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method static synthetic access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I

    return v0
.end method

.method static synthetic access$1000()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    return v0
.end method

.method static synthetic access$1700()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V

    return-void
.end method

.method static synthetic access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I

    return v0
.end method

.method static synthetic access$2000()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2100()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500()Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    return-object v0
.end method

.method static synthetic access$600()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    return-object v0
.end method

.method static synthetic access$700()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    return-object v0
.end method

.method private ringIntersectProcess()V
    .locals 25

    .prologue
    .line 230
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    div-int/lit8 v12, v20, 0x3

    .line 231
    .local v12, r:I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [I

    .line 232
    .local v8, handleXY:[I
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 233
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 234
    .local v11, messageXY:[I
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 235
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 236
    .local v6, cameraXY:[I
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 237
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 238
    .local v18, unlockXY:[I
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 239
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [I

    .line 240
    .local v15, refreshXY:[I
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 241
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 242
    .local v16, refreshXY2:[I
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 243
    new-instance v7, Landroid/graphics/Point;

    const/16 v20, 0x0

    aget v20, v8, v20

    sget-object v21, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    const/16 v21, 0x1

    aget v21, v8, v21

    sget-object v22, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 245
    .local v7, handlePoint:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v11, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v11, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v11, v22

    sget-object v23, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v11, v23

    sget-object v24, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    .local v10, messageRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v6, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v6, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v6, v22

    sget-object v23, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v6, v23

    sget-object v24, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 249
    .local v5, cameraRect:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v18, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v18, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v18, v22

    sget-object v23, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v18, v23

    sget-object v24, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 251
    .local v17, unlockRect:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v15, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v15, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v15, v22

    sget-object v23, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v15, v23

    sget-object v24, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .local v13, refreshRect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v16, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v16, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v16, v22

    sget-object v23, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v16, v23

    sget-object v24, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    .local v14, refreshRect2:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 257
    .local v9, isWordHover:Z
    if-nez v9, :cond_1

    .line 258
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onWordHover(Landroid/graphics/Point;)Landroid/widget/TextView;

    move-result-object v19

    .line 259
    .local v19, v:Landroid/widget/TextView;
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mLastHoverTextView:Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    if-eqz v19, :cond_0

    .line 260
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V

    .line 261
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    const v21, 0x10800ef

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    :cond_0
    sput-object v19, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mLastHoverTextView:Landroid/widget/TextView;

    .line 264
    if-eqz v19, :cond_1

    .line 265
    const/4 v9, 0x1

    .line 266
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;Ljava/lang/Object;)V

    .line 269
    .end local v19           #v:Landroid/widget/TextView;
    :cond_1
    if-nez v9, :cond_2

    .line 270
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 271
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 286
    :cond_2
    :goto_0
    return-void

    .line 272
    :cond_3
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 273
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 274
    :cond_4
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 275
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 276
    :cond_5
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 278
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 279
    :cond_6
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v20

    if-nez v20, :cond_7

    .line 281
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 283
    :cond_7
    sget-object v20, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto/16 :goto_0
.end method

.method private static vibrate()V
    .locals 3

    .prologue
    .line 631
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 634
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/high16 v3, 0x10e

    .line 162
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 163
    const v0, 0x1020281

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    .line 164
    const v0, 0x102027d

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    .line 165
    const v0, 0x102027b

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    .line 166
    const v0, 0x102027e

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    .line 167
    const v0, 0x102027f

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    .line 168
    const v0, 0x102027c

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    .line 169
    const v0, 0x1020280

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    .line 170
    const v0, 0x1020282

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;

    .line 171
    const v0, 0x1020283

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;

    .line 172
    const v0, 0x1020284

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;

    .line 173
    const v0, 0x1020285

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;

    .line 174
    const v0, 0x1020286

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    .line 175
    const v0, 0x1020287

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mInAnimation:Landroid/view/animation/Animation;

    .line 178
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 180
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;

    .line 181
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 183
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 185
    return-void
.end method

.method public onPowerUpdate(II)V
    .locals 3
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 637
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",plugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-eqz p2, :cond_0

    .line 639
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->setLevel(F)V

    .line 640
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->invalidate()V

    .line 645
    :goto_0
    return-void

    .line 642
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->setLevel(F)V

    .line 643
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->invalidate()V

    goto :goto_0
.end method

.method public onSmsUnreadUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 126
    sput p1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    .line 127
    sget v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    if-lez v0, :cond_0

    .line 128
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    sget v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 190
    .local v1, ea:I
    packed-switch v1, :pswitch_data_0

    .line 226
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 192
    :pswitch_0
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 193
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 194
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I

    .line 195
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->ringIntersectProcess()V

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->startTargetIntentOrDismissKeyguard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 208
    sget v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 209
    sget v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 212
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;

    invoke-direct {v3, p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TargetHandlePanel"

    const-string v3, "set state to idle fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWordListAvaliable(Z)V
    .locals 3
    .parameter "avaliable"

    .prologue
    const/4 v2, 0x0

    .line 138
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 140
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 142
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 144
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    return-void
.end method

.method public resetTargetHandlePanelUi()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 148
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 617
    sput-object p1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 618
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 87
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    if-eq v1, p1, :cond_1

    .line 88
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 89
    .local v0, oldState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->leave()V

    .line 92
    :cond_0
    sput-object p1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 93
    const-string v1, "TargetHandlePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 95
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->draw()V

    .line 97
    .end local v0           #oldState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    :cond_1
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->obj:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;Ljava/lang/Object;)V
    .locals 1
    .parameter "state"
    .parameter "obj"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 102
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    iput-object p2, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->obj:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 621
    if-eqz p1, :cond_1

    .line 622
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public setWordListGallery(Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;)V
    .locals 0
    .parameter "gallery"

    .prologue
    .line 613
    sput-object p1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    .line 614
    return-void
.end method

.method public startTargetIntentOrDismissKeyguard()Z
    .locals 4

    .prologue
    .line 106
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->resetTargetHandlePanelUi()V

    .line 114
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 116
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    sget-object v3, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    if-ne v2, v3, :cond_2

    .line 117
    :cond_1
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 119
    const/4 v2, 0x1

    .line 122
    :goto_1
    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TargetHandlePanel"

    const-string v3, "startActivity fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
