.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$InputMethodCallback;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ResizedInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x16

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DONE_ANIMATING:I = 0x17

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_KEY:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SCREEN_STATE:I = 0x14

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_IME_FINISHED_EVENT:I = 0xa

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_DISPLAY_LIST:I = 0x15

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x18

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewancestor.profile_rendering"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final USE_RENDER_THREAD:Z

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sRenderThreadQueried:Z

.field private static final sRenderThreadQueryLock:[Ljava/lang/Object;

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseRenderThread:Z

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field mCurScrollY:I

.field final mCurrentDirty:Landroid/graphics/Rect;

.field mCurrentDragView:Landroid/view/View;

.field mCurrentInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field private final mDisplayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/DisplayList;",
            ">;"
        }
    .end annotation
.end field

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mFitSystemWindowsInsets:Landroid/graphics/Rect;

.field mFitSystemWindowsRequested:Z

.field mFocusedView:Landroid/view/View;

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field final mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastJoystickXDirection:I

.field mLastJoystickXKeyCode:I

.field mLastJoystickYDirection:I

.field mLastJoystickYKeyCode:I

.field mLastScrolledFocus:Landroid/view/View;

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTrackballTime:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field mOldFocusedView:Landroid/view/View;

.field mOrigWindowType:I

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousDirty:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field mRealFocusedView:Landroid/view/View;

.field private mRenderProfiler:Ljava/lang/Thread;

.field private volatile mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field final mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field mWindowsAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    .line 133
    sput-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z

    .line 135
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 138
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 143
    sput-boolean v1, Landroid/view/ViewRootImpl;->sUseRenderThread:Z

    .line 144
    sput-boolean v1, Landroid/view/ViewRootImpl;->sRenderThreadQueried:Z

    .line 145
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewRootImpl;->sRenderThreadQueryLock:[Ljava/lang/Object;

    .line 286
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 359
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 148
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 149
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 158
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 165
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 182
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 183
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 187
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 189
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    .line 244
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 245
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 249
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 262
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 263
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    .line 268
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 269
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 295
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 296
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 303
    iput-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 304
    iput-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    .line 329
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 451
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1920
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 2986
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 4215
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 4246
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 4332
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 4996
    new-instance v0, Landroid/view/ViewRootImpl$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 373
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 374
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 375
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 376
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 381
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 383
    new-instance v0, Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodCallback;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    .line 384
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 385
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 386
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 387
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 388
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 389
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 390
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 392
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 394
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 395
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 397
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 398
    const-string v0, "viewancestor.profile_rendering"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    .line 400
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 402
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 403
    .local v6, powerManager:Landroid/os/PowerManager;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    .line 404
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 405
    return-void

    .end local v6           #powerManager:Landroid/os/PowerManager;
    :cond_0
    move-object v0, v1

    .line 329
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 445
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 446
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    monitor-exit v1

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 437
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 438
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 439
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1015
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1020
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3460
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_1

    .line 3492
    :cond_0
    :goto_0
    return v1

    .line 3465
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3466
    .local v0, action:I
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3471
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 3480
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3481
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    .line 3487
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3488
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_0
.end method

.method private collectViewAttributes()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1023
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1024
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-boolean v6, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_1

    .line 1026
    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1027
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1028
    .local v2, oldScreenOn:Z
    iget v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1029
    .local v3, oldVis:I
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1030
    .local v1, oldHasSystemUiListeners:Z
    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1031
    iput v5, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1032
    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1033
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v0, v5}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1034
    iget v6, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v7, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iput v6, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1035
    iget-boolean v6, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v6, v2, :cond_0

    iget v6, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v6, v3, :cond_0

    iget-boolean v6, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eq v6, v1, :cond_1

    .line 1038
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1039
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1040
    iget v5, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1041
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v5, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1042
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v6, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v5, v6}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1043
    const/4 v5, 0x1

    .line 1046
    .end local v1           #oldHasSystemUiListeners:Z
    .end local v2           #oldScreenOn:Z
    .end local v3           #oldVis:I
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v5
.end method

.method private deliverGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .parameter "q"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3319
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 3320
    .local v0, event:Landroid/view/MotionEvent;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v5, :cond_0

    .line 3321
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v5, v0, v4}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 3324
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 3325
    .local v2, source:I
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_3

    move v1, v3

    .line 3328
    .local v1, isJoystick:Z
    :goto_0
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v5, :cond_4

    .line 3329
    :cond_1
    if-eqz v1, :cond_2

    .line 3330
    invoke-direct {p0, v0, v4}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3332
    :cond_2
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3352
    :goto_1
    return-void

    .end local v1           #isJoystick:Z
    :cond_3
    move v1, v4

    .line 3325
    goto :goto_0

    .line 3337
    .restart local v1       #isJoystick:Z
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3338
    if-eqz v1, :cond_5

    .line 3339
    invoke-direct {p0, v0, v4}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3341
    :cond_5
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_1

    .line 3345
    :cond_6
    if-eqz v1, :cond_7

    .line 3347
    invoke-direct {p0, v0, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3348
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_1

    .line 3350
    :cond_7
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_1
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .parameter "q"

    .prologue
    const-wide/16 v2, 0x8

    .line 3110
    const-string v1, "deliverInputEvent"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3112
    :try_start_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 3113
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3125
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3127
    return-void

    .line 3115
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 3116
    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3117
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->deliverPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3125
    .end local v0           #source:I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 3118
    .restart local v0       #source:I
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 3119
    :try_start_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->deliverTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 3121
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->deliverGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private deliverKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .parameter "q"

    .prologue
    const/4 v4, 0x0

    .line 3496
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3497
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 3498
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, v0, v4}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3501
    :cond_0
    iget v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    .line 3503
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_2

    .line 3504
    :cond_1
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3532
    :goto_0
    return-void

    .line 3511
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3512
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 3518
    :cond_3
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_4

    .line 3519
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3520
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    .line 3521
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v2

    .line 3524
    .local v2, seq:I
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_0

    .line 3531
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #seq:I
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0
.end method

.method private deliverKeyEventPostIme(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 8
    .parameter "q"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3556
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    .line 3559
    .local v1, event:Landroid/view/KeyEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_1

    .line 3560
    :cond_0
    invoke-direct {p0, p1, v7}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3663
    :goto_0
    return-void

    .line 3565
    :cond_1
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3566
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 3572
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v1}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 3575
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3576
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 3581
    :cond_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3585
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3586
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 3592
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3593
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 3598
    :cond_5
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_a

    .line 3599
    const/4 v0, 0x0

    .line 3600
    .local v0, direction:I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3629
    :cond_6
    :goto_1
    if-eqz v0, :cond_a

    .line 3630
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3631
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_a

    .line 3632
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 3633
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_9

    .line 3637
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3638
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 3639
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3641
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3644
    :cond_7
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3645
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 3647
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto/16 :goto_0

    .line 3602
    .end local v2           #focused:Landroid/view/View;
    .end local v3           #v:Landroid/view/View;
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3603
    const/16 v0, 0x11

    goto :goto_1

    .line 3607
    :sswitch_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3608
    const/16 v0, 0x42

    goto :goto_1

    .line 3612
    :sswitch_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3613
    const/16 v0, 0x21

    goto :goto_1

    .line 3617
    :sswitch_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3618
    const/16 v0, 0x82

    goto :goto_1

    .line 3622
    :sswitch_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3623
    const/4 v0, 0x2

    goto :goto_1

    .line 3624
    :cond_8
    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3625
    const/4 v0, 0x1

    goto :goto_1

    .line 3653
    .restart local v2       #focused:Landroid/view/View;
    .restart local v3       #v:Landroid/view/View;
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v2, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3654
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto/16 :goto_0

    .line 3662
    .end local v0           #direction:I
    .end local v2           #focused:Landroid/view/View;
    .end local v3           #v:Landroid/view/View;
    :cond_a
    invoke-direct {p0, p1, v7}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto/16 :goto_0

    .line 3600
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private deliverPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 8
    .parameter "q"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3130
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    .line 3131
    .local v1, event:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    .line 3132
    .local v3, isTouchEvent:Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 3133
    if-eqz v3, :cond_2

    .line 3134
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, v1, v6}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 3141
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_3

    .line 3142
    :cond_1
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3183
    :goto_1
    return-void

    .line 3136
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, v1, v6}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 3147
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_4

    .line 3148
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 3152
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3153
    .local v0, action:I
    if-eqz v0, :cond_5

    const/16 v4, 0x8

    if-ne v0, v4, :cond_6

    .line 3154
    :cond_5
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 3158
    :cond_6
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_7

    .line 3159
    const/4 v4, 0x0

    iget v5, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3166
    :cond_7
    if-eqz v3, :cond_8

    .line 3167
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 3168
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 3172
    :cond_8
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 3176
    .local v2, handled:Z
    if-eqz v2, :cond_9

    .line 3177
    invoke-direct {p0, p1, v7}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_1

    .line 3182
    :cond_9
    invoke-direct {p0, p1, v6}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_1
.end method

.method private deliverTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 33
    .parameter "q"

    .prologue
    .line 3186
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    move-object/from16 v27, v0

    check-cast v27, Landroid/view/MotionEvent;

    .line 3187
    .local v27, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_0

    .line 3188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v5}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 3192
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v2, :cond_2

    .line 3193
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3316
    :goto_0
    return-void

    .line 3198
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 3205
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3206
    const-wide/32 v5, -0x80000000

    move-object/from16 v0, p0

    iput-wide v5, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    goto :goto_0

    .line 3211
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v29, v0

    .line 3212
    .local v29, x:Landroid/view/ViewRootImpl$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v31, v0

    .line 3214
    .local v31, y:Landroid/view/ViewRootImpl$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3215
    .local v3, curTime:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    const-wide/16 v11, 0xfa

    add-long/2addr v5, v11

    cmp-long v2, v5, v3

    if-gez v2, :cond_4

    .line 3218
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3219
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3220
    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 3223
    :cond_4
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    .line 3224
    .local v26, action:I
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 3225
    .local v10, metaState:I
    packed-switch v26, :pswitch_data_0

    .line 3250
    :goto_1
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "X"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 3251
    .local v30, xOff:F
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "Y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v32

    .line 3259
    .local v32, yOff:F
    const/4 v8, 0x0

    .line 3260
    .local v8, keycode:I
    const/16 v28, 0x0

    .line 3261
    .local v28, movement:I
    const/high16 v24, 0x3f80

    .line 3262
    .local v24, accel:F
    cmpl-float v2, v30, v32

    if-lez v2, :cond_9

    .line 3263
    const/high16 v2, 0x4000

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v5

    div-float/2addr v2, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3264
    if-eqz v28, :cond_5

    .line 3265
    if-lez v28, :cond_8

    const/16 v8, 0x16

    .line 3267
    :goto_2
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v24, v0

    .line 3268
    const/4 v2, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3280
    :cond_5
    :goto_3
    if-eqz v8, :cond_c

    .line 3281
    if-gez v28, :cond_6

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 3282
    :cond_6
    move/from16 v0, v28

    int-to-float v2, v0

    mul-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v25, v0

    .line 3286
    .local v25, accelMovement:I
    move/from16 v0, v25

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    .line 3289
    add-int/lit8 v28, v28, -0x1

    .line 3290
    sub-int v9, v25, v28

    .line 3291
    .local v9, repeatCount:I
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 3296
    .end local v9           #repeatCount:I
    :cond_7
    :goto_4
    if-lez v28, :cond_b

    .line 3299
    add-int/lit8 v28, v28, -0x1

    .line 3300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3301
    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x400

    const/16 v23, 0x101

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, v8

    move/from16 v19, v10

    invoke-direct/range {v11 .. v23}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 3305
    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x400

    const/16 v23, 0x101

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, v8

    move/from16 v19, v10

    invoke-direct/range {v11 .. v23}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_4

    .line 3227
    .end local v8           #keycode:I
    .end local v24           #accel:F
    .end local v25           #accelMovement:I
    .end local v28           #movement:I
    .end local v30           #xOff:F
    .end local v32           #yOff:F
    :pswitch_0
    const/4 v2, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3228
    const/4 v2, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3229
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_1

    .line 3235
    :pswitch_1
    const/4 v2, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3236
    const/4 v2, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3237
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_1

    .line 3265
    .restart local v8       #keycode:I
    .restart local v24       #accel:F
    .restart local v28       #movement:I
    .restart local v30       #xOff:F
    .restart local v32       #yOff:F
    :cond_8
    const/16 v8, 0x15

    goto/16 :goto_2

    .line 3270
    :cond_9
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-lez v2, :cond_5

    .line 3271
    const/high16 v2, 0x4000

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v5

    div-float/2addr v2, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3272
    if-eqz v28, :cond_5

    .line 3273
    if-lez v28, :cond_a

    const/16 v8, 0x14

    .line 3275
    :goto_5
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v24, v0

    .line 3276
    const/4 v2, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_3

    .line 3273
    :cond_a
    const/16 v8, 0x13

    goto :goto_5

    .line 3310
    .restart local v25       #accelMovement:I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 3315
    .end local v25           #accelMovement:I
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto/16 :goto_0

    .line 3225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4007
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4008
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 4010
    .local v1, hardwareRenderer:Landroid/view/HardwareRenderer;
    if-eqz v1, :cond_1

    .line 4011
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 4012
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 4014
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 4015
    invoke-virtual {v1, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 4017
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 4018
    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 4020
    :cond_1
    return-void
.end method

.method private draw(Z)V
    .locals 22
    .parameter "fullRedrawNeeded"

    .prologue
    .line 2051
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2052
    .local v5, surface:Landroid/view/Surface;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    sget-boolean v4, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v4, :cond_3

    .line 2061
    sget-object v18, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v18

    .line 2062
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 2063
    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2064
    .local v13, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_2

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v19, v0

    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 2064
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2067
    :cond_2
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2070
    .end local v13           #count:I
    .end local v16           #i:I
    :cond_3
    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 2072
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2073
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    iget-boolean v4, v6, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v4, :cond_4

    .line 2074
    const/4 v4, 0x0

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 2075
    iget-object v4, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 2079
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v11, 0x1

    .line 2080
    .local v11, animating:Z
    :goto_2
    if-eqz v11, :cond_9

    .line 2081
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 2085
    .local v7, yoff:I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v4, v7, :cond_5

    .line 2086
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 2087
    const/16 p1, 0x1

    .line 2090
    :cond_5
    iget v12, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2091
    .local v12, appScale:F
    iget-boolean v8, v6, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 2093
    .local v8, scalingRequired:Z
    const/16 v17, 0x0

    .line 2094
    .local v17, resizeAlpha:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_6

    .line 2095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 2096
    .local v14, deltaTime:J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-long v0, v4

    move-wide/from16 v18, v0

    cmp-long v4, v14, v18

    if-gez v4, :cond_a

    .line 2097
    long-to-float v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v4, v18

    .line 2098
    .local v10, amt:F
    sget-object v4, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 2099
    const/4 v11, 0x1

    .line 2100
    const/high16 v4, 0x437f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    rsub-int v0, v4, 0xff

    move/from16 v17, v0

    .line 2106
    .end local v10           #amt:F
    .end local v14           #deltaTime:J
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2107
    .local v9, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_b

    .line 2109
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 2110
    if-eqz v11, :cond_0

    .line 2111
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_7

    .line 2112
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2114
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_0

    .line 2067
    .end local v6           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v7           #yoff:I
    .end local v8           #scalingRequired:Z
    .end local v9           #dirty:Landroid/graphics/Rect;
    .end local v11           #animating:Z
    .end local v12           #appScale:F
    .end local v17           #resizeAlpha:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2079
    .restart local v6       #attachInfo:Landroid/view/View$AttachInfo;
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 2083
    .restart local v11       #animating:Z
    :cond_9
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .restart local v7       #yoff:I
    goto :goto_3

    .line 2102
    .restart local v8       #scalingRequired:Z
    .restart local v12       #appScale:F
    .restart local v14       #deltaTime:J
    .restart local v17       #resizeAlpha:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_4

    .line 2119
    .end local v14           #deltaTime:J
    .restart local v9       #dirty:Landroid/graphics/Rect;
    :cond_b
    if-eqz p1, :cond_c

    .line 2120
    const/4 v4, 0x1

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2121
    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v12

    const/high16 v20, 0x3f00

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    const/high16 v21, 0x3f00

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2133
    :cond_c
    iget-object v4, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 2135
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v4, :cond_e

    .line 2136
    :cond_d
    iget-object v4, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_10

    iget-object v4, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2138
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2139
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 2140
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 2142
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2145
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 2147
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v11, :cond_f

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2149
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2156
    :cond_e
    if-eqz v11, :cond_0

    .line 2157
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2158
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2147
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    goto :goto_5

    :cond_10
    move-object/from16 v4, p0

    .line 2151
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IZLandroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 2301
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, v5, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 2302
    .local v2, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2305
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iget-object v5, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    .line 2308
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2309
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2312
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 2314
    .local v3, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 2315
    .local v0, bounds:Landroid/graphics/Rect;
    if-nez v3, :cond_3

    .line 2316
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2317
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2318
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 2319
    .local v4, viewGroup:Landroid/view/ViewGroup;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2328
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2329
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2322
    :cond_3
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_0

    .line 2325
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2326
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v5, v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IZLandroid/graphics/Rect;)Z
    .locals 10
    .parameter "surface"
    .parameter "attachInfo"
    .parameter "yoff"
    .parameter "scalingRequired"
    .parameter "dirty"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2173
    iget-object v8, p2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_0

    iget-object v8, p2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2175
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2176
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2279
    :goto_0
    return v6

    .line 2183
    :cond_0
    :try_start_0
    iget v3, p5, Landroid/graphics/Rect;->left:I

    .line 2184
    .local v3, left:I
    iget v5, p5, Landroid/graphics/Rect;->top:I

    .line 2185
    .local v5, top:I
    iget v4, p5, Landroid/graphics/Rect;->right:I

    .line 2186
    .local v4, right:I
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 2188
    .local v0, bottom:I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8, p5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 2190
    .local v1, canvas:Landroid/graphics/Canvas;
    iget v8, p5, Landroid/graphics/Rect;->left:I

    if-ne v3, v8, :cond_1

    iget v8, p5, Landroid/graphics/Rect;->top:I

    if-ne v5, v8, :cond_1

    iget v8, p5, Landroid/graphics/Rect;->right:I

    if-ne v4, v8, :cond_1

    iget v8, p5, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v8, :cond_2

    .line 2192
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2196
    :cond_2
    iget v8, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2232
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p3, :cond_4

    .line 2233
    :cond_3
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2236
    :cond_4
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 2237
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 2239
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v9, v8, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v8, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2248
    const/4 v8, 0x0

    neg-int v9, p3

    int-to-float v9, v9

    :try_start_2
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2249
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_5

    .line 2250
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v8, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 2252
    :cond_5
    if-eqz p4, :cond_8

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_1
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 2254
    const/4 v8, 0x0

    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 2256
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2258
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2260
    :try_start_3
    iget-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v8, :cond_6

    .line 2262
    const/4 v8, 0x0

    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2267
    :cond_6
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move v6, v7

    .line 2279
    goto :goto_0

    .line 2197
    .end local v0           #bottom:I
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    :catch_0
    move-exception v2

    .line 2198
    .local v2, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v8, "ViewRootImpl"

    const-string v9, "OutOfResourcesException locking surface"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2200
    :try_start_5
    sget-object v8, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2201
    const-string v8, "ViewRootImpl"

    const-string v9, "No processes killed for memory; killing self"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2206
    :cond_7
    :goto_2
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 2208
    .end local v2           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v2

    .line 2209
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "ViewRootImpl"

    const-string v9, "Could not lock surface"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2213
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #bottom:I
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v3       #left:I
    .restart local v4       #right:I
    .restart local v5       #top:I
    :cond_8
    move v8, v6

    .line 2252
    goto :goto_1

    .line 2260
    :catchall_0
    move-exception v8

    :try_start_6
    iget-boolean v9, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v9, :cond_9

    .line 2262
    const/4 v9, 0x0

    iput-boolean v9, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2260
    :cond_9
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2266
    :catchall_1
    move-exception v8

    .line 2267
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2266
    throw v8

    .line 2268
    :catch_2
    move-exception v2

    .line 2269
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const-string v8, "ViewRootImpl"

    const-string v9, "Could not unlock surface"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2270
    :goto_3
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 2268
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 2269
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const-string v8, "ViewRootImpl"

    const-string v9, "Could not unlock surface"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2204
    .end local v0           #bottom:I
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    .local v2, e:Landroid/view/Surface$OutOfResourcesException;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method private enableHardwareAcceleration(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 691
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 692
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 695
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v7, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    move v2, v5

    .line 701
    .local v2, hardwareAccelerated:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 702
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 715
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    move v0, v5

    .line 717
    .local v0, fakeHwAccelerated:Z
    :goto_2
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    move v1, v5

    .line 720
    .local v1, forceHwAccelerated:Z
    :goto_3
    sget-boolean v7, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v7, :cond_2

    sget-boolean v7, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v7, :cond_b

    if-eqz v1, :cond_b

    .line 723
    :cond_2
    sget-boolean v7, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-nez v7, :cond_6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_6

    .line 725
    const-string v5, "HardwareRenderer"

    const-string v6, "Attempting to initialize hardware acceleration outside of the main thread, aborting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #fakeHwAccelerated:Z
    .end local v1           #forceHwAccelerated:Z
    .end local v2           #hardwareAccelerated:Z
    :cond_3
    move v2, v6

    .line 698
    goto :goto_1

    .restart local v2       #hardwareAccelerated:Z
    :cond_4
    move v0, v6

    .line 715
    goto :goto_2

    .restart local v0       #fakeHwAccelerated:Z
    :cond_5
    move v1, v6

    .line 717
    goto :goto_3

    .line 730
    .restart local v1       #forceHwAccelerated:Z
    :cond_6
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isRenderThreadRequested(Landroid/content/Context;)Z

    move-result v3

    .line 731
    .local v3, renderThread:Z
    if-eqz v3, :cond_7

    .line 732
    const-string v7, "HardwareRenderer"

    const-string v8, "Render threat initiated"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v7, :cond_8

    .line 736
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v7, v5}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 739
    :cond_8
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    move v4, v5

    .line 740
    .local v4, translucent:Z
    :goto_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x2

    invoke-static {v8, v4}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v8

    iput-object v8, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 741
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v9, :cond_a

    :goto_5
    iput-boolean v5, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v5, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_0

    .end local v4           #translucent:Z
    :cond_9
    move v4, v6

    .line 739
    goto :goto_4

    .restart local v4       #translucent:Z
    :cond_a
    move v5, v6

    .line 741
    goto :goto_5

    .line 744
    .end local v3           #renderThread:Z
    .end local v4           #translucent:Z
    :cond_b
    if-eqz v0, :cond_0

    .line 750
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto/16 :goto_0
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .parameter "inTouchMode"

    .prologue
    .line 3023
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 3028
    :goto_0
    return v0

    .line 3025
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 3026
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 3028
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3032
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3033
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3037
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3038
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3040
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3042
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 3057
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_0
    return v2

    .line 3048
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 3049
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 3050
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 3051
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mOldFocusedView:Landroid/view/View;

    .line 3052
    const/4 v2, 0x1

    goto :goto_0

    .line 3057
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v2, 0x0

    .line 3067
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3068
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 3069
    check-cast v1, Landroid/view/ViewGroup;

    .line 3070
    .local v1, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3080
    .end local v1           #vgParent:Landroid/view/ViewGroup;
    :goto_1
    return-object v1

    .line 3074
    .restart local v1       #vgParent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 3075
    goto :goto_1

    .line 3077
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3079
    goto :goto_0

    .end local v1           #vgParent:Landroid/view/ViewGroup;
    :cond_2
    move-object v1, v2

    .line 3080
    goto :goto_1
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .locals 2
    .parameter "q"
    .parameter "handled"

    .prologue
    .line 4165
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eq p1, v0, :cond_0

    .line 4166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "finished input event out of order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4169
    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_2

    .line 4170
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1, p2}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4175
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4178
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v0, :cond_1

    .line 4179
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    .line 4181
    :cond_1
    return-void

    .line 4172
    :cond_2
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_0
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 2694
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2695
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 2696
    check-cast v1, Landroid/view/ViewGroup;

    .line 2697
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2698
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2699
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2698
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2702
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 2333
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    .line 2335
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 2336
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2337
    .local v1, value:Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103dc

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2339
    .local v0, resolved:Z
    if-eqz v0, :cond_0

    .line 2340
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 2344
    .end local v0           #resolved:Z
    .end local v1           #value:Landroid/util/TypedValue;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 2346
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 3792
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3795
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 3796
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 3798
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    .line 4571
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_6

    .line 4572
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_0

    .line 4573
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 4575
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 4576
    .local v4, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 4577
    move-object v0, p1

    .line 4578
    .local v0, firstCurrent:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 4579
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4580
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4581
    .local v1, firstCurrentParent:Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 4582
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 4584
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4587
    .end local v1           #firstCurrentParent:Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    .line 4588
    .local v2, secondCurrent:Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_5

    .line 4589
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4590
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 4602
    .end local v0           #firstCurrent:Landroid/view/View;
    .end local v2           #secondCurrent:Landroid/view/View;
    .end local v4           #seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/View;>;"
    :goto_2
    return-object v2

    .line 4593
    .restart local v0       #firstCurrent:Landroid/view/View;
    .restart local v2       #secondCurrent:Landroid/view/View;
    .restart local v4       #seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/View;>;"
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4594
    .local v3, secondCurrentParent:Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 4595
    check-cast v2, Landroid/view/View;

    goto :goto_1

    .line 4597
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 4600
    .end local v3           #secondCurrentParent:Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 4602
    .end local v0           #firstCurrent:Landroid/view/View;
    .end local v2           #secondCurrent:Landroid/view/View;
    .end local v4           #seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/View;>;"
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .parameter "view"
    .parameter "info"

    .prologue
    .line 3925
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 3926
    .local v1, displayList:Landroid/view/DisplayList;
    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    .line 3927
    if-eqz v1, :cond_0

    .line 3928
    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v1}, Landroid/view/DisplayList;->getSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 3931
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 3932
    check-cast v2, Landroid/view/ViewGroup;

    .line 3934
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3935
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3936
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3935
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3939
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1900
    packed-switch p1, :pswitch_data_0

    .line 1912
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1915
    .local v0, measureSpec:I
    :goto_0
    return v0

    .line 1904
    .end local v0           #measureSpec:I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1905
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1908
    .end local v0           #measureSpec:I
    :pswitch_1
    const/high16 v1, -0x8000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1909
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1900
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .prologue
    .line 5046
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 5047
    .local v0, rq:Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    .line 5052
    :goto_0
    return-object v0

    .line 5050
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 5051
    .restart local v0       #rq:Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 334
    sget-object v4, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    monitor-enter v4

    .line 335
    :try_start_0
    sget-boolean v3, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 337
    :try_start_1
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 338
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    .line 339
    .local v2, windowManager:Landroid/view/IWindowManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v3

    sput-object v3, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    .line 341
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 342
    .local v0, animatorScale:F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 343
    const/4 v3, 0x1

    sput-boolean v3, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    .end local v0           #animatorScale:F
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #windowManager:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v4

    return-object v3

    .line 348
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 344
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 3674
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 3675
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 3677
    .local v3, what:I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 3682
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3746
    .end local v3           #what:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 3747
    return-void

    .line 3686
    .restart local v3       #what:I
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 3687
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3688
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3694
    :goto_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_5

    .line 3695
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 3696
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 3697
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 3700
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_4

    .line 3701
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 3704
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 3705
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 3709
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3712
    .local v1, prevDragView:Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 3715
    .local v2, result:Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_7

    .line 3717
    if-eqz v1, :cond_6

    .line 3718
    :try_start_0
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 3720
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 3721
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3729
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    .line 3730
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3732
    :try_start_1
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3741
    :cond_8
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3742
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3690
    .end local v1           #prevDragView:Landroid/view/View;
    .end local v2           #result:Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 3723
    .restart local v1       #prevDragView:Landroid/view/View;
    .restart local v2       #result:Z
    :catch_0
    move-exception v0

    .line 3724
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3734
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3735
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static isInTouchMode()Z
    .locals 1

    .prologue
    .line 470
    sget-boolean v0, Landroid/view/ViewRootImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 472
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 476
    :goto_0
    return v0

    .line 473
    :catch_0
    move-exception v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 3425
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3440
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3438
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3425
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static isRenderThreadRequested(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 3449
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2685
    if-ne p0, p1, :cond_1

    .line 2690
    :cond_0
    :goto_0
    return v1

    .line 2689
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2690
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static joystickAxisValueToDirection(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 3410
    const/high16 v0, 0x3f00

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 3411
    const/4 v0, 0x1

    .line 3415
    :goto_0
    return v0

    .line 3412
    :cond_0
    const/high16 v0, -0x4100

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    .line 3413
    const/4 v0, -0x1

    goto :goto_0

    .line 3415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x82

    const/4 v2, 0x0

    .line 3084
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3085
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3087
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 3088
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move v1, v2

    .line 3106
    :goto_0
    return v1

    .line 3091
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x4

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 3095
    goto :goto_0

    .line 3101
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3102
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3103
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_0

    .end local v0           #focused:Landroid/view/View;
    :cond_2
    move v1, v2

    .line 3106
    goto :goto_0
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10
    .parameter "host"
    .parameter "lp"
    .parameter "res"
    .parameter "desiredWindowWidth"
    .parameter "desiredWindowHeight"

    .prologue
    const/high16 v9, 0x100

    .line 1053
    const/4 v5, 0x0

    .line 1059
    .local v5, windowSizeMayChange:Z
    const/4 v3, 0x0

    .line 1060
    .local v3, goodMeasure:Z
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1065
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1066
    .local v4, packageMetrics:Landroid/util/DisplayMetrics;
    const v6, 0x1050007

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1067
    const/4 v0, 0x0

    .line 1068
    .local v0, baseSize:I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1069
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 1072
    :cond_0
    if-eqz v0, :cond_1

    if-le p4, v0, :cond_1

    .line 1073
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1074
    .local v2, childWidthMeasureSpec:I
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1075
    .local v1, childHeightMeasureSpec:I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_4

    .line 1079
    const/4 v3, 0x1

    .line 1097
    .end local v0           #baseSize:I
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v4           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 1098
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1099
    .restart local v2       #childWidthMeasureSpec:I
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1100
    .restart local v1       #childHeightMeasureSpec:I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1101
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1102
    :cond_2
    const/4 v5, 0x1

    .line 1112
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    :cond_3
    return v5

    .line 1082
    .restart local v0       #baseSize:I
    .restart local v1       #childHeightMeasureSpec:I
    .restart local v2       #childWidthMeasureSpec:I
    .restart local v4       #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    div-int/lit8 v0, v6, 0x2

    .line 1085
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1086
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    .line 1091
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .parameter "event"
    .parameter "receiver"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 4082
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4083
    .local v0, q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    .line 4084
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 4085
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4086
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4091
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 4092
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 4093
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 4094
    return-object v0

    .line 4088
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .end local v0           #q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .restart local v0       #q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_0
.end method

.method private performDraw()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x8

    const/4 v7, 0x0

    .line 2009
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v6, :cond_1

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2014
    .local v3, fullRedrawNeeded:Z
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2016
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2017
    const-string v6, "draw"

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2019
    :try_start_0
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2021
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2022
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2025
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v6, :cond_0

    .line 2026
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2031
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2032
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2033
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 2034
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_3

    .line 2035
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 2036
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    instance-of v6, v1, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_2

    .line 2037
    check-cast v1, Landroid/view/SurfaceHolder$Callback2;

    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2035
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2021
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2022
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2021
    throw v6

    .line 2044
    :cond_3
    :try_start_1
    sget-object v6, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2045
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private performLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x8

    const/4 v1, 0x0

    .line 1855
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1856
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 1858
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1864
    .local v0, host:Landroid/view/View;
    const-string v1, "layout"

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1866
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1870
    return-void

    .line 1868
    :catchall_0
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private performMeasure(II)V
    .locals 3
    .parameter "childWidthMeasureSpec"
    .parameter "childHeightMeasureSpec"

    .prologue
    const-wide/16 v1, 0x8

    .line 1846
    const-string v0, "measure"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1848
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1852
    return-void

    .line 1850
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 72

    .prologue
    .line 1117
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1125
    .local v5, host:Landroid/view/View;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1129
    const/16 v70, 0x0

    .line 1130
    .local v70, windowSizeMayChange:Z
    const/16 v53, 0x0

    .line 1131
    .local v53, newSurface:Z
    const/16 v62, 0x0

    .line 1132
    .local v62, surfaceChanged:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1137
    .local v6, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v24, v0

    .line 1139
    .local v24, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v65

    .line 1140
    .local v65, viewVisibility:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v65

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_f

    :cond_2
    const/16 v66, 0x1

    .line 1143
    .local v66, viewVisibilityChanged:Z
    :goto_1
    const/16 v55, 0x0

    .line 1144
    .local v55, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_3

    .line 1145
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1146
    const/16 v62, 0x1

    .line 1147
    move-object/from16 v55, v6

    .line 1149
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v4}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v30

    .line 1150
    .local v30, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v10, :cond_4

    .line 1151
    move-object/from16 v55, v6

    .line 1152
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1153
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1154
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_10

    .line 1155
    move-object/from16 v0, v55

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x20000001

    and-int/2addr v4, v10

    move-object/from16 v0, v55

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1156
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1163
    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    .line 1166
    .local v38, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_12

    .line 1167
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1168
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1170
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7de

    if-ne v4, v10, :cond_11

    .line 1172
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v35

    .line 1173
    .local v35, disp:Landroid/view/Display;
    new-instance v60, Landroid/graphics/Point;

    invoke-direct/range {v60 .. v60}, Landroid/graphics/Point;-><init>()V

    .line 1174
    .local v60, size:Landroid/graphics/Point;
    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1175
    move-object/from16 v0, v60

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1176
    .local v8, desiredWindowWidth:I
    move-object/from16 v0, v60

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1188
    .end local v35           #disp:Landroid/view/Display;
    .end local v60           #size:Landroid/graphics/Point;
    .local v9, desiredWindowHeight:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 1192
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1193
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1194
    move/from16 v0, v65

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1195
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1196
    const/16 v66, 0x0

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1199
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1216
    :cond_5
    :goto_4
    if-eqz v66, :cond_8

    .line 1217
    move/from16 v0, v65

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1218
    move/from16 v0, v65

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1219
    if-nez v65, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_7

    .line 1220
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1222
    :cond_7
    const/16 v4, 0x8

    move/from16 v0, v65

    if-ne v0, v4, :cond_8

    .line 1225
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1230
    :cond_8
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v10, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 1232
    const/16 v47, 0x0

    .line 1234
    .local v47, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_14

    const/16 v50, 0x1

    .line 1235
    .local v50, layoutRequested:Z
    :goto_5
    if-eqz v50, :cond_a

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1239
    .local v7, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_16

    .line 1242
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v4, :cond_15

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1243
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_9
    :goto_7
    move-object/from16 v4, p0

    .line 1273
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v70, v70, v4

    .line 1277
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1278
    move-object/from16 v55, v6

    .line 1280
    :cond_b
    move-object/from16 v0, v24

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_c

    .line 1281
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1282
    move-object/from16 v55, v6

    .line 1285
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_d

    move-object/from16 v0, v24

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_1d

    .line 1286
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1287
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v57, v0

    .line 1291
    .local v57, resizeMode:I
    if-nez v57, :cond_1d

    .line 1292
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1293
    .local v22, N:I
    const/16 v43, 0x0

    .local v43, i:I
    :goto_8
    move/from16 v0, v43

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    .line 1294
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1295
    const/16 v57, 0x10

    .line 1293
    :cond_e
    add-int/lit8 v43, v43, 0x1

    goto :goto_8

    .line 1140
    .end local v8           #desiredWindowWidth:I
    .end local v9           #desiredWindowHeight:I
    .end local v22           #N:I
    .end local v30           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v38           #frame:Landroid/graphics/Rect;
    .end local v43           #i:I
    .end local v47           #insetsChanged:Z
    .end local v50           #layoutRequested:Z
    .end local v55           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v57           #resizeMode:I
    .end local v66           #viewVisibilityChanged:Z
    :cond_f
    const/16 v66, 0x0

    goto/16 :goto_1

    .line 1158
    .restart local v30       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v55       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v66       #viewVisibilityChanged:Z
    :cond_10
    move-object/from16 v0, v55

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x2000

    or-int/2addr v4, v10

    move-object/from16 v0, v55

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1159
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_2

    .line 1178
    .restart local v38       #frame:Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v54

    .line 1180
    .local v54, packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v54

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1181
    .restart local v8       #desiredWindowWidth:I
    move-object/from16 v0, v54

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v9       #desiredWindowHeight:I
    goto/16 :goto_3

    .line 1205
    .end local v8           #desiredWindowWidth:I
    .end local v9           #desiredWindowHeight:I
    .end local v54           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_12
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1206
    .restart local v8       #desiredWindowWidth:I
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1207
    .restart local v9       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v8, v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v9, v4, :cond_5

    .line 1210
    :cond_13
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1211
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1212
    const/16 v70, 0x1

    goto/16 :goto_4

    .line 1234
    .restart local v47       #insetsChanged:Z
    :cond_14
    const/16 v50, 0x0

    goto/16 :goto_5

    .line 1242
    .restart local v7       #res:Landroid/content/res/Resources;
    .restart local v50       #layoutRequested:Z
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1245
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1246
    const/16 v47, 0x1

    .line 1248
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1253
    :cond_18
    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v4, v10, :cond_19

    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_9

    .line 1255
    :cond_19
    const/16 v70, 0x1

    .line 1257
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7de

    if-ne v4, v10, :cond_1a

    .line 1259
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v35

    .line 1260
    .restart local v35       #disp:Landroid/view/Display;
    new-instance v60, Landroid/graphics/Point;

    invoke-direct/range {v60 .. v60}, Landroid/graphics/Point;-><init>()V

    .line 1261
    .restart local v60       #size:Landroid/graphics/Point;
    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1262
    move-object/from16 v0, v60

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1263
    move-object/from16 v0, v60

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1264
    goto/16 :goto_7

    .line 1265
    .end local v35           #disp:Landroid/view/Display;
    .end local v60           #size:Landroid/graphics/Point;
    :cond_1a
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v54

    .line 1266
    .restart local v54       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v54

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1267
    move-object/from16 v0, v54

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_7

    .line 1298
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v54           #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v22       #N:I
    .restart local v43       #i:I
    .restart local v57       #resizeMode:I
    :cond_1b
    if-nez v57, :cond_1c

    .line 1299
    const/16 v57, 0x20

    .line 1301
    :cond_1c
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v57

    if-eq v4, v0, :cond_1d

    .line 1303
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v57

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1306
    move-object/from16 v55, v6

    .line 1311
    .end local v22           #N:I
    .end local v43           #i:I
    .end local v57           #resizeMode:I
    :cond_1d
    if-eqz v55, :cond_1e

    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1e

    .line 1312
    move-object/from16 v0, v55

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1313
    const/4 v4, -0x3

    move-object/from16 v0, v55

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1317
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    if-eqz v4, :cond_1f

    .line 1318
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1321
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_1f

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v70, v70, v4

    .line 1331
    :cond_1f
    if-eqz v50, :cond_20

    .line 1335
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1338
    :cond_20
    if-eqz v50, :cond_34

    if-eqz v70, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_22

    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_21

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v8, :cond_21

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v10, :cond_22

    :cond_21
    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_34

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v9, :cond_34

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v10, :cond_34

    :cond_22
    const/16 v69, 0x1

    .line 1345
    .local v69, windowShouldResize:Z
    :goto_9
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v32

    .line 1348
    .local v32, computesInternalInsets:Z
    const/16 v48, 0x0

    .line 1349
    .local v48, insetsPending:Z
    const/16 v56, 0x0

    .line 1351
    .local v56, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_23

    if-nez v69, :cond_23

    if-nez v47, :cond_23

    if-nez v66, :cond_23

    if-eqz v55, :cond_4f

    .line 1354
    :cond_23
    if-nez v65, :cond_25

    .line 1364
    if-eqz v32, :cond_35

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_24

    if-eqz v66, :cond_35

    :cond_24
    const/16 v48, 0x1

    .line 1367
    :cond_25
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_26

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1369
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 1372
    :cond_26
    const/16 v41, 0x0

    .line 1373
    .local v41, hwInitialized:Z
    const/16 v33, 0x0

    .line 1375
    .local v33, contentInsetsChanged:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v39

    .line 1383
    .local v39, hadSurface:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v63

    .line 1384
    .local v63, surfaceGenerationId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v65

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v56

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_27

    .line 1394
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_36

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    .line 1398
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const/16 v33, 0x1

    .line 1400
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const/16 v67, 0x1

    .line 1402
    .local v67, visibleInsetsChanged:Z
    :goto_d
    if-eqz v33, :cond_2c

    .line 1403
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v4, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v4, :cond_2b

    if-eqz v6, :cond_2b

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v10

    and-int/lit16 v4, v4, 0x600

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v6, :cond_2b

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1413
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1415
    const/16 v31, 0x0

    .line 1416
    .local v31, completed:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->getCanvas()Landroid/view/HardwareCanvas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v42

    .line 1417
    .local v42, hwRendererCanvas:Landroid/view/HardwareCanvas;
    const/16 v49, 0x0

    .line 1419
    .local v49, layerCanvas:Landroid/view/HardwareCanvas;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_39

    .line 1420
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1426
    :cond_28
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v49

    .line 1427
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v10}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1428
    const/4 v4, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 1429
    invoke-virtual/range {v49 .. v49}, Landroid/view/HardwareCanvas;->save()I

    move-result v58

    .line 1431
    .local v58, restoreCount:I
    const/high16 v4, -0x100

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v10}, Landroid/view/HardwareCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v59, 0x1

    .line 1436
    .local v59, scrolling:Z
    :goto_f
    if-eqz v59, :cond_3d

    .line 1437
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v71

    .line 1438
    .local v71, yoff:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1443
    :goto_10
    const/4 v4, 0x0

    move/from16 v0, v71

    neg-int v10, v0

    int-to-float v10, v10

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v10}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_29

    .line 1445
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1448
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1450
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 1452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10e0001

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    .line 1455
    const/16 v31, 0x1

    .line 1457
    move-object/from16 v0, v49

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 1461
    if-eqz v49, :cond_2a

    .line 1462
    :try_start_2
    invoke-virtual/range {v49 .. v49}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1464
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_2b

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1466
    if-nez v31, :cond_2b

    .line 1467
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1468
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1473
    .end local v31           #completed:Z
    .end local v42           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v49           #layerCanvas:Landroid/view/HardwareCanvas;
    .end local v58           #restoreCount:I
    .end local v59           #scrolling:Z
    .end local v71           #yoff:I
    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1477
    :cond_2c
    if-nez v33, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v4, v10, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    if-eqz v4, :cond_2e

    .line 1479
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1480
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    .line 1481
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1484
    :cond_2e
    if-eqz v67, :cond_2f

    .line 1485
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1490
    :cond_2f
    if-nez v39, :cond_41

    .line 1491
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1499
    const/16 v53, 0x1

    .line 1500
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1501
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_30

    .line 1505
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v41

    .line 1558
    .end local v63           #surfaceGenerationId:I
    .end local v67           #visibleInsetsChanged:Z
    :cond_30
    :goto_12
    move-object/from16 v0, v38

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1559
    move-object/from16 v0, v38

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1564
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v4, v10, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eq v4, v10, :cond_32

    .line 1565
    :cond_31
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1566
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1569
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_48

    .line 1571
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1574
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1576
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1578
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1579
    if-nez v39, :cond_46

    .line 1580
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1582
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 1585
    .local v26, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v26, :cond_45

    .line 1586
    move-object/from16 v23, v26

    .local v23, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v51, v0

    .local v51, len$:I
    const/16 v44, 0x0

    .local v44, i$:I
    :goto_13
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_45

    aget-object v25, v23, v44

    .line 1587
    .local v25, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1586
    add-int/lit8 v44, v44, 0x1

    goto :goto_13

    .line 1338
    .end local v23           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v25           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v26           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v32           #computesInternalInsets:Z
    .end local v33           #contentInsetsChanged:Z
    .end local v39           #hadSurface:Z
    .end local v41           #hwInitialized:Z
    .end local v44           #i$:I
    .end local v48           #insetsPending:Z
    .end local v51           #len$:I
    .end local v56           #relayoutResult:I
    .end local v69           #windowShouldResize:Z
    :cond_34
    const/16 v69, 0x0

    goto/16 :goto_9

    .line 1364
    .restart local v32       #computesInternalInsets:Z
    .restart local v48       #insetsPending:Z
    .restart local v56       #relayoutResult:I
    .restart local v69       #windowShouldResize:Z
    :cond_35
    const/16 v48, 0x0

    goto/16 :goto_a

    .line 1394
    .restart local v33       #contentInsetsChanged:Z
    .restart local v39       #hadSurface:Z
    .restart local v41       #hwInitialized:Z
    .restart local v63       #surfaceGenerationId:I
    :cond_36
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 1398
    :cond_37
    const/16 v33, 0x0

    goto/16 :goto_c

    .line 1400
    :cond_38
    const/16 v67, 0x0

    goto/16 :goto_d

    .line 1422
    .restart local v31       #completed:Z
    .restart local v42       #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .restart local v49       #layerCanvas:Landroid/view/HardwareCanvas;
    .restart local v67       #visibleInsetsChanged:Z
    :cond_39
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v10, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v10, :cond_28

    .line 1424
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Landroid/view/HardwareLayer;->resize(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_e

    .line 1458
    :catch_0
    move-exception v36

    .line 1459
    .local v36, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v4, "ViewRootImpl"

    const-string v10, "Not enough memory for content change anim buffer"

    move-object/from16 v0, v36

    invoke-static {v4, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1461
    if-eqz v49, :cond_3b

    .line 1462
    :try_start_6
    invoke-virtual/range {v49 .. v49}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1464
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_2b

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1466
    if-nez v31, :cond_2b

    .line 1467
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1468
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_11

    .line 1552
    .end local v31           #completed:Z
    .end local v36           #e:Ljava/lang/OutOfMemoryError;
    .end local v42           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v49           #layerCanvas:Landroid/view/HardwareCanvas;
    .end local v63           #surfaceGenerationId:I
    .end local v67           #visibleInsetsChanged:Z
    :catch_1
    move-exception v4

    goto/16 :goto_12

    .line 1434
    .restart local v31       #completed:Z
    .restart local v42       #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .restart local v49       #layerCanvas:Landroid/view/HardwareCanvas;
    .restart local v58       #restoreCount:I
    .restart local v63       #surfaceGenerationId:I
    .restart local v67       #visibleInsetsChanged:Z
    :cond_3c
    const/16 v59, 0x0

    goto/16 :goto_f

    .line 1440
    .restart local v59       #scrolling:Z
    :cond_3d
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v71, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v71       #yoff:I
    goto/16 :goto_10

    .line 1461
    .end local v58           #restoreCount:I
    .end local v59           #scrolling:Z
    .end local v71           #yoff:I
    :catchall_0
    move-exception v4

    if-eqz v49, :cond_3e

    .line 1462
    :try_start_8
    invoke-virtual/range {v49 .. v49}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1464
    :cond_3e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v10, :cond_3f

    .line 1465
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1466
    if-nez v31, :cond_3f

    .line 1467
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v10}, Landroid/view/HardwareLayer;->destroy()V

    .line 1468
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1461
    :cond_3f
    throw v4

    .line 1506
    .end local v31           #completed:Z
    .end local v42           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v49           #layerCanvas:Landroid/view/HardwareCanvas;
    :catch_2
    move-exception v36

    .line 1507
    .local v36, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v4, "ViewRootImpl"

    const-string v10, "OutOfResourcesException initializing HW surface"

    move-object/from16 v0, v36

    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1509
    :try_start_9
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v10}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 1510
    const-string v4, "ViewRootImpl"

    const-string v10, "No processes killed for memory; killing self"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1515
    :cond_40
    :goto_14
    const/4 v4, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 1520
    .end local v36           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_43

    .line 1523
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 1524
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1525
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_42

    .line 1526
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1528
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1530
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1532
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->destroy(Z)V

    goto/16 :goto_12

    .line 1534
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v63

    if-eq v0, v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_30

    .line 1536
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 1538
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V
    :try_end_b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_12

    .line 1539
    :catch_3
    move-exception v36

    .line 1540
    .restart local v36       #e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_c
    const-string v4, "ViewRootImpl"

    const-string v10, "OutOfResourcesException updating HW surface"

    move-object/from16 v0, v36

    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 1542
    :try_start_d
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v10}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 1543
    const-string v4, "ViewRootImpl"

    const-string v10, "No processes killed for memory; killing self"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    .line 1548
    :cond_44
    :goto_15
    const/4 v4, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 1590
    .end local v36           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v63           #surfaceGenerationId:I
    .end local v67           #visibleInsetsChanged:Z
    .restart local v26       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_45
    const/16 v62, 0x1

    .line 1592
    .end local v26           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_46
    if-eqz v62, :cond_47

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 1596
    .restart local v26       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v26, :cond_47

    .line 1597
    move-object/from16 v23, v26

    .restart local v23       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v44, 0x0

    .restart local v44       #i$:I
    :goto_16
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_47

    aget-object v25, v23, v44

    .line 1598
    .restart local v25       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v10, v11, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1597
    add-int/lit8 v44, v44, 0x1

    goto :goto_16

    .line 1603
    .end local v23           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v25           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v26           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v44           #i$:I
    .end local v51           #len$:I
    :cond_47
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1622
    :cond_48
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1624
    if-nez v41, :cond_49

    if-nez v69, :cond_49

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v10}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v10

    if-ne v4, v10, :cond_49

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v10}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v10

    if-eq v4, v10, :cond_4a

    .line 1627
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 1628
    if-nez v41, :cond_4a

    .line 1629
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/SurfaceHolder;)V

    .line 1634
    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_4f

    .line 1635
    and-int/lit8 v4, v56, 0x1

    if-eqz v4, :cond_5e

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v37

    .line 1637
    .local v37, focusChangedDueToTouchMode:Z
    if-nez v37, :cond_4b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_4b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_4b

    if-eqz v33, :cond_4f

    .line 1639
    :cond_4b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v29

    .line 1640
    .local v29, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v28

    .line 1649
    .local v28, childHeightMeasureSpec:I
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1654
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v68

    .line 1655
    .local v68, width:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    .line 1656
    .local v40, height:I
    const/16 v52, 0x0

    .line 1658
    .local v52, measureAgain:Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_4c

    .line 1659
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v68

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v68, v68, v4

    .line 1660
    const/high16 v4, 0x4000

    move/from16 v0, v68

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 1662
    const/16 v52, 0x1

    .line 1664
    :cond_4c
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_4d

    .line 1665
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v40

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v40, v40, v4

    .line 1666
    const/high16 v4, 0x4000

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 1668
    const/16 v52, 0x1

    .line 1671
    :cond_4d
    if-eqz v52, :cond_4e

    .line 1675
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1678
    :cond_4e
    const/16 v50, 0x1

    .line 1683
    .end local v28           #childHeightMeasureSpec:I
    .end local v29           #childWidthMeasureSpec:I
    .end local v33           #contentInsetsChanged:Z
    .end local v37           #focusChangedDueToTouchMode:Z
    .end local v39           #hadSurface:Z
    .end local v40           #height:I
    .end local v41           #hwInitialized:Z
    .end local v52           #measureAgain:Z
    .end local v68           #width:I
    :cond_4f
    if-eqz v50, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_5f

    const/16 v34, 0x1

    .line 1684
    .local v34, didLayout:Z
    :goto_19
    if-nez v34, :cond_50

    move-object/from16 v0, v24

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_60

    :cond_50
    const/16 v64, 0x1

    .line 1686
    .local v64, triggerGlobalLayoutListener:Z
    :goto_1a
    if-eqz v34, :cond_52

    .line 1687
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performLayout()V

    .line 1692
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_52

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v17, 0x0

    aget v12, v12, v17

    iget v0, v5, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v12, v17

    iget v0, v5, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v12, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    iget v0, v5, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v5, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 1700
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_51

    .line 1702
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1705
    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1706
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1709
    :try_start_f
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    .line 1722
    :cond_52
    :goto_1b
    if-eqz v64, :cond_53

    .line 1723
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1724
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1726
    iget-object v4, v5, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1727
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;)V

    .line 1731
    :cond_53
    if-eqz v32, :cond_55

    .line 1733
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v46, v0

    .line 1734
    .local v46, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v46 .. v46}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 1737
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1740
    if-nez v48, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1741
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_61

    .line 1748
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v46

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 1749
    .local v13, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v46

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .line 1750
    .local v14, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v46

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v15

    .line 1758
    .local v15, touchableRegion:Landroid/graphics/Region;
    :goto_1c
    :try_start_10
    sget-object v10, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v46

    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 1765
    .end local v13           #contentInsets:Landroid/graphics/Rect;
    .end local v14           #visibleInsets:Landroid/graphics/Rect;
    .end local v15           #touchableRegion:Landroid/graphics/Region;
    .end local v46           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_55
    :goto_1d
    const/16 v61, 0x0

    .line 1767
    .local v61, skipDraw:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_63

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_56

    .line 1772
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_62

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    .line 1774
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 1783
    :cond_56
    :goto_1e
    and-int/lit8 v4, v56, 0x8

    if-eqz v4, :cond_57

    .line 1787
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 1793
    :cond_57
    :goto_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 1794
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1795
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1796
    move/from16 v0, v65

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 1798
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_58

    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v45

    .line 1801
    .local v45, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v45

    if-eq v0, v4, :cond_58

    .line 1802
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 1803
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 1804
    .local v16, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_58

    if-eqz v45, :cond_58

    .line 1805
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_64

    const/16 v20, 0x1

    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1814
    .end local v16           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v45           #imTarget:Z
    :cond_58
    and-int/lit8 v4, v56, 0x2

    if-eqz v4, :cond_59

    .line 1815
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1818
    :cond_59
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_5a

    if-eqz v65, :cond_65

    :cond_5a
    const/16 v27, 0x1

    .line 1821
    .local v27, cancelDraw:Z
    :goto_21
    if-nez v27, :cond_68

    if-nez v53, :cond_68

    .line 1822
    if-eqz v61, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_0

    .line 1823
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_67

    .line 1824
    const/16 v43, 0x0

    .restart local v43       #i:I
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_66

    .line 1825
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 1824
    add-int/lit8 v43, v43, 0x1

    goto :goto_22

    .line 1604
    .end local v27           #cancelDraw:Z
    .end local v34           #didLayout:Z
    .end local v43           #i:I
    .end local v61           #skipDraw:Z
    .end local v64           #triggerGlobalLayoutListener:Z
    .restart local v33       #contentInsetsChanged:Z
    .restart local v39       #hadSurface:Z
    .restart local v41       #hwInitialized:Z
    :cond_5c
    if-eqz v39, :cond_48

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1606
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 1607
    .restart local v26       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1608
    if-eqz v26, :cond_5d

    .line 1609
    move-object/from16 v23, v26

    .restart local v23       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v44, 0x0

    .restart local v44       #i$:I
    :goto_23
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_5d

    aget-object v25, v23, v44

    .line 1610
    .restart local v25       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1609
    add-int/lit8 v44, v44, 0x1

    goto :goto_23

    .line 1613
    .end local v23           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v25           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v44           #i$:I
    .end local v51           #len$:I
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1615
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_17

    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 1635
    .end local v26           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_5e
    const/4 v4, 0x0

    goto/16 :goto_18

    .line 1683
    .end local v33           #contentInsetsChanged:Z
    .end local v39           #hadSurface:Z
    .end local v41           #hwInitialized:Z
    :cond_5f
    const/16 v34, 0x0

    goto/16 :goto_19

    .line 1684
    .restart local v34       #didLayout:Z
    :cond_60
    const/16 v64, 0x0

    goto/16 :goto_1a

    .line 1752
    .restart local v46       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v64       #triggerGlobalLayoutListener:Z
    :cond_61
    move-object/from16 v0, v46

    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 1753
    .restart local v13       #contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v46

    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 1754
    .restart local v14       #visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v46

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v15       #touchableRegion:Landroid/graphics/Region;
    goto/16 :goto_1c

    .line 1778
    .end local v13           #contentInsets:Landroid/graphics/Rect;
    .end local v14           #visibleInsets:Landroid/graphics/Rect;
    .end local v15           #touchableRegion:Landroid/graphics/Region;
    .end local v46           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v61       #skipDraw:Z
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_1e

    .line 1789
    :cond_63
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v4, :cond_57

    .line 1790
    const/16 v61, 0x1

    goto/16 :goto_1f

    .line 1806
    .restart local v16       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v45       #imTarget:Z
    :cond_64
    const/16 v20, 0x0

    goto/16 :goto_20

    .line 1818
    .end local v16           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v45           #imTarget:Z
    :cond_65
    const/16 v27, 0x0

    goto/16 :goto_21

    .line 1827
    .restart local v27       #cancelDraw:Z
    .restart local v43       #i:I
    :cond_66
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1830
    .end local v43           #i:I
    :cond_67
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    goto/16 :goto_0

    .line 1833
    :cond_68
    if-nez v65, :cond_69

    .line 1835
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1836
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1837
    const/16 v43, 0x0

    .restart local v43       #i:I
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_6a

    .line 1838
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 1837
    add-int/lit8 v43, v43, 0x1

    goto :goto_24

    .line 1840
    :cond_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1760
    .end local v27           #cancelDraw:Z
    .end local v43           #i:I
    .end local v61           #skipDraw:Z
    .restart local v13       #contentInsets:Landroid/graphics/Rect;
    .restart local v14       #visibleInsets:Landroid/graphics/Rect;
    .restart local v15       #touchableRegion:Landroid/graphics/Region;
    .restart local v46       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_4
    move-exception v4

    goto/16 :goto_1d

    .line 1710
    .end local v13           #contentInsets:Landroid/graphics/Rect;
    .end local v14           #visibleInsets:Landroid/graphics/Rect;
    .end local v15           #touchableRegion:Landroid/graphics/Region;
    .end local v46           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_5
    move-exception v4

    goto/16 :goto_1b

    .line 1546
    .end local v34           #didLayout:Z
    .end local v64           #triggerGlobalLayoutListener:Z
    .restart local v33       #contentInsetsChanged:Z
    .restart local v36       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v39       #hadSurface:Z
    .restart local v41       #hwInitialized:Z
    .restart local v63       #surfaceGenerationId:I
    .restart local v67       #visibleInsetsChanged:Z
    :catch_6
    move-exception v4

    goto/16 :goto_15

    .line 1513
    :catch_7
    move-exception v4

    goto/16 :goto_14
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 4487
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v1, :cond_0

    .line 4488
    new-instance v1, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 4491
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-object v0, v1, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 4492
    .local v0, oldSource:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4493
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iput-object p1, v1, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 4494
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4500
    :goto_0
    return-void

    .line 4497
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-direct {p0, v0, p1}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    goto :goto_0
.end method

.method private profileRendering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1950
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_0

    .line 1951
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 1952
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1953
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/ViewRootImpl$1;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    const-string v2, "Rendering Profiler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    .line 1974
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1976
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1977
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .parameter "q"

    .prologue
    const/4 v0, 0x0

    .line 4098
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 4099
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 4101
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 4102
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 4103
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4104
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4106
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 17
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3815
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3816
    .local v14, appScale:F
    const/16 v16, 0x0

    .line 3817
    .local v16, restore:Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 3818
    const/16 v16, 0x1

    .line 3819
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 3820
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 3822
    :cond_0
    if-eqz p1, :cond_1

    .line 3825
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 3827
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 3829
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 3830
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3835
    :cond_2
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 3843
    .local v15, relayoutResult:I
    if-eqz v16, :cond_3

    .line 3844
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 3847
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 3848
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 3849
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3850
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3852
    :cond_4
    return v15

    .line 3835
    .end local v15           #relayoutResult:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .prologue
    .line 4507
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 4508
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4510
    :cond_0
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4139
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v1, :cond_0

    .line 4140
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 4141
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4142
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4143
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4145
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1989
    .local v3, nowTime:J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1990
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 1991
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2006
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 1994
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1995
    .local v5, thisHash:Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v1, v3, v8

    .line 1996
    .local v1, frameTime:J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v3, v8

    .line 1997
    .local v6, totalTime:J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 1999
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 2000
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 2001
    .local v0, fps:F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2003
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method

.method private updateJoystickDirection(Landroid/view/MotionEvent;Z)V
    .locals 16
    .parameter "event"
    .parameter "synthesizeNewKeys"

    .prologue
    .line 3355
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 3356
    .local v2, time:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 3357
    .local v9, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v10

    .line 3358
    .local v10, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    .line 3360
    .local v13, source:I
    const/16 v1, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3361
    .local v14, xDirection:I
    if-nez v14, :cond_0

    .line 3362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3365
    :cond_0
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3366
    .local v15, yDirection:I
    if-nez v15, :cond_1

    .line 3367
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3370
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    if-eq v14, v1, :cond_3

    .line 3371
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    if-eqz v1, :cond_2

    .line 3372
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 3375
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3378
    :cond_2
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    .line 3380
    if-eqz v14, :cond_3

    if-eqz p2, :cond_3

    .line 3381
    if-lez v14, :cond_6

    const/16 v1, 0x16

    :goto_0
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3383
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 3389
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    if-eq v15, v1, :cond_5

    .line 3390
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    if-eqz v1, :cond_4

    .line 3391
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 3394
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3397
    :cond_4
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    .line 3399
    if-eqz v15, :cond_5

    if-eqz p2, :cond_5

    .line 3400
    if-lez v15, :cond_7

    const/16 v1, 0x14

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3402
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 3407
    :cond_5
    return-void

    .line 3381
    :cond_6
    const/16 v1, 0x15

    goto :goto_0

    .line 3400
    :cond_7
    const/16 v1, 0x13

    goto :goto_1
.end method


# virtual methods
.method public attachFunctor(I)Z
    .locals 2
    .parameter "functor"

    .prologue
    .line 678
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v0, v1, p1}, Landroid/view/HardwareRenderer;->attachFunctor(Landroid/view/View$AttachInfo;I)Z

    move-result v0

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 933
    return-void
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4372
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4375
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4376
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 4377
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 4606
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4607
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4610
    :cond_0
    return-void
.end method

.method public childAccessibilityStateChanged(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 4567
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;)V

    .line 4568
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 4524
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .parameter "child"
    .parameter "hasTransientState"

    .prologue
    .line 4623
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 2552
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2558
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mOldFocusedView:Landroid/view/View;

    .line 2561
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mOldFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2565
    :cond_0
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2566
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4521
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 3914
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 3915
    return-void
.end method

.method public dequeueDisplayList(Landroid/view/DisplayList;)V
    .locals 2
    .parameter "displayList"

    .prologue
    .line 4363
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4364
    invoke-virtual {p1}, Landroid/view/DisplayList;->invalidate()V

    .line 4365
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4366
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 4369
    :cond_0
    return-void
.end method

.method destroyHardwareLayers()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 664
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const/16 v0, 0x3c

    invoke-static {v0}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    goto :goto_0
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    .line 651
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 653
    :cond_1
    return-void
.end method

.method public detachFunctor(I)V
    .locals 1
    .parameter "functor"

    .prologue
    .line 685
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->detachFunctor(I)V

    .line 688
    :cond_0
    return-void
.end method

.method public die(Z)V
    .locals 3
    .parameter "immediate"

    .prologue
    .line 3942
    if-eqz p1, :cond_0

    .line 3943
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 3953
    :goto_0
    return-void

    .line 3945
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    .line 3946
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3951
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3948
    :cond_1
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 4416
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4417
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4418
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4419
    return-void

    .line 4417
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 4474
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4476
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 4478
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 4441
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4442
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4443
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4444
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4445
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2606
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2607
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    .line 2611
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2614
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 2615
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 2617
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 2619
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 2621
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2623
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2624
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 2625
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 2627
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2629
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_4

    .line 2630
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 2631
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 2632
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 2638
    :cond_2
    :goto_0
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 2645
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2646
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 2649
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 2650
    return-void

    .line 2633
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_2

    .line 2634
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 2635
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    goto :goto_0

    .line 2639
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public dispatchDoneAnimating()V
    .locals 2

    .prologue
    .line 4470
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 4471
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4449
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4450
    const/16 v1, 0x10

    .line 4451
    .local v1, what:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 4455
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4456
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4457
    return-void

    .line 4453
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_0
    const/16 v1, 0xf

    .restart local v1       #what:I
    goto :goto_0
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 4031
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4032
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4033
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    .prologue
    .line 4428
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4429
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4430
    return-void
.end method

.method dispatchImeFinishedEvent(IZ)V
    .locals 4
    .parameter "seq"
    .parameter "handled"

    .prologue
    const/4 v2, 0x1

    .line 4023
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4024
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4025
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4026
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4027
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4028
    return-void

    .line 4025
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 3
    .parameter "view"
    .parameter "delayMilliseconds"

    .prologue
    .line 4336
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4337
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4338
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 4347
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 4348
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 3
    .parameter "info"
    .parameter "delayMilliseconds"

    .prologue
    .line 4342
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4343
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4344
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 4351
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 4352
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 4380
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4381
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4382
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4383
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 4386
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4387
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4388
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4389
    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 4041
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p5, :cond_1

    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4042
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 4043
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 4044
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 4045
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 4046
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 4048
    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4049
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4050
    new-instance v1, Landroid/view/ViewRootImpl$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ResizedInfo;-><init>(Landroid/view/ViewRootImpl;)V

    .line 4051
    .local v1, ri:Landroid/view/ViewRootImpl$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->contentInsets:Landroid/graphics/Rect;

    .line 4052
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 4053
    iput-object p6, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 4054
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4055
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4056
    return-void

    .line 4041
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public dispatchScreenStateChange(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 4422
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4423
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4424
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4425
    return-void

    .line 4423
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .parameter "seq"
    .parameter "globalVisibility"
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 4461
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 4462
    .local v0, args:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 4463
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 4464
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 4465
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 4466
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4467
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/KeyEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 4392
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_0

    .line 4393
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v16

    .line 4394
    .local v16, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 4395
    .local v17, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v18

    .line 4398
    .local v18, metaState:I
    invoke-virtual/range {v16 .. v18}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v14

    .line 4400
    .local v14, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    if-eqz v14, :cond_0

    .line 4401
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v11, v1, 0x400

    .line 4402
    .local v11, flags:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    iget v6, v14, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    iget v8, v14, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    const/4 v13, 0x0

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 4408
    .local v15, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual {v14}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 4410
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;)V

    .line 4413
    .end local v11           #flags:I
    .end local v14           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v15           #fallbackEvent:Landroid/view/KeyEvent;
    .end local v16           #kcm:Landroid/view/KeyCharacterMap;
    .end local v17           #keyCode:I
    .end local v18           #metaState:I
    :cond_0
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 944
    :cond_0
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 1
    .parameter "frameTimeNanos"

    .prologue
    .line 4200
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 4201
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 4202
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 4203
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)V

    .line 4205
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 4207
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3956
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3958
    monitor-enter p0

    .line 3959
    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3960
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 3963
    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_4

    .line 3964
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3966
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 3967
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 3968
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    .line 3969
    .local v1, viewVisibilityChanged:Z
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 3974
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 3976
    sget-object v2, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3982
    :cond_3
    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3986
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 3987
    monitor-exit p0

    .line 3988
    return-void

    .line 3987
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3978
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method doProcessInputEvents()V
    .locals 3

    .prologue
    .line 4148
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v1, :cond_0

    .line 4149
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4150
    .local v0, q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4151
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4152
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4153
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 4158
    .end local v0           #q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v1, :cond_1

    .line 4159
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 4160
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 4162
    :cond_1
    return-void
.end method

.method doTraversal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x8

    .line 988
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 989
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 990
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/Looper;->removeSyncBarrier(I)V

    .line 992
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_0

    .line 993
    const-string v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 996
    :cond_0
    const-string v0, "performTraversals"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 998
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1003
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_1

    .line 1004
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1005
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1008
    :cond_1
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 3918
    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 3919
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3922
    :cond_0
    return-void
.end method

.method public enqueueDisplayList(Landroid/view/DisplayList;)V
    .locals 3
    .parameter "displayList"

    .prologue
    const/16 v2, 0x15

    .line 4355
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4357
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 4358
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4359
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4360
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 4109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4110
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 3
    .parameter "event"
    .parameter "receiver"
    .parameter "flags"
    .parameter "processImmediately"

    .prologue
    .line 4114
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    .line 4121
    .local v1, q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4122
    .local v0, last:Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    .line 4123
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFirstPendingInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4131
    :goto_0
    if-eqz p4, :cond_2

    .line 4132
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 4136
    :goto_1
    return-void

    .line 4125
    :cond_0
    :goto_2
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v2, :cond_1

    .line 4126
    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_2

    .line 4128
    :cond_1
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 4134
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .parameter "inTouchMode"

    .prologue
    .line 3000
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 3010
    :goto_0
    return v1

    .line 3004
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3010
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 3005
    :catch_0
    move-exception v0

    .line 3006
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "child"
    .parameter "descendant"

    .prologue
    .line 2284
    invoke-virtual {p2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3906
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3907
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3908
    const/4 v0, 0x0

    .line 3910
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2574
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2575
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2576
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2577
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2593
    :cond_0
    :goto_0
    return-void

    .line 2582
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2583
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2587
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2589
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2583
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 2495
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 3802
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3803
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3806
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 3807
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 3809
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 925
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .parameter "outLocation"

    .prologue
    .line 3781
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3782
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 3783
    return-void
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 2570
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 797
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 798
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 799
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 801
    :cond_0
    return-void
.end method

.method public handleDispatchDoneAnimating()V
    .locals 1

    .prologue
    .line 3772
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v0, :cond_1

    .line 3773
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 3774
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 3775
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3778
    :cond_1
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 3750
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_0

    .line 3754
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 3755
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 3756
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3758
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 3769
    :cond_1
    :goto_0
    return-void

    .line 3759
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_3

    .line 3760
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 3762
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 3763
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    .line 3764
    .local v0, visibility:I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_1

    .line 3765
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 3766
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 804
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 805
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 806
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 807
    return-void
.end method

.method handleImeFinishedEvent(IZ)V
    .locals 3
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 3535
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentInputEvent:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3536
    .local v1, q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 3537
    iget-object v0, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3542
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz p2, :cond_1

    .line 3543
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3553
    .end local v0           #event:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 3545
    .restart local v0       #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0
.end method

.method handleScreenStateChange(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    .line 810
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-eq p1, v0, :cond_1

    .line 811
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    .line 812
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 813
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 815
    :cond_0
    if-eqz p1, :cond_1

    .line 816
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 817
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 820
    :cond_1
    return-void

    .line 813
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 848
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 849
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 850
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 864
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 9
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v7, 0x3f00

    const/4 v6, 0x0

    .line 867
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 870
    if-nez p2, :cond_1

    .line 871
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 907
    :cond_0
    :goto_0
    return-object v8

    .line 875
    :cond_1
    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_5

    .line 876
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 877
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 878
    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v2, :cond_3

    .line 879
    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v2, v2

    invoke-virtual {p2, v6, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_4

    .line 882
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 884
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v2, :cond_5

    .line 885
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 889
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 890
    .local v1, localDirty:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 891
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 892
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 896
    :cond_6
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 899
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 900
    .local v0, appScale:F
    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v7

    float-to-int v2, v2

    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 903
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v2, :cond_0

    .line 904
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0
.end method

.method invalidateDisplayLists()V
    .locals 4

    .prologue
    .line 2350
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    .line 2351
    .local v2, displayLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/DisplayList;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2353
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 2354
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DisplayList;

    .line 2355
    .local v1, displayList:Landroid/view/DisplayList;
    invoke-virtual {v1}, Landroid/view/DisplayList;->invalidate()V

    .line 2356
    invoke-virtual {v1}, Landroid/view/DisplayList;->clear()V

    .line 2353
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2359
    .end local v1           #displayList:Landroid/view/DisplayList;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2360
    return-void
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 853
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 854
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 855
    check-cast v1, Landroid/view/ViewGroup;

    .line 856
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 857
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    .end local v0           #i:I
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public loadSystemProperties()V
    .locals 5

    .prologue
    const/16 v4, 0x18

    .line 3996
    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3998
    .local v0, layout:Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eq v0, v1, :cond_0

    .line 3999
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 4000
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4001
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4004
    :cond_0
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1927
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1929
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 1931
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 1932
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1923
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1924
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1938
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    if-eqz v1, :cond_0

    .line 1939
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v0

    .line 1940
    .local v0, displayList:Landroid/view/DisplayList;
    if-eqz v0, :cond_0

    .line 1941
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v1, v0}, Landroid/view/HardwareCanvas;->outputDisplayList(Landroid/view/DisplayList;)V

    .line 1944
    .end local v0           #displayList:Landroid/view/DisplayList;
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 3896
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3898
    :goto_0
    return v1

    .line 3897
    :catch_0
    move-exception v0

    .line 3898
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectId"

    .prologue
    .line 3859
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3862
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3864
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 3881
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3884
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 3886
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3889
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 3866
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3869
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3872
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3875
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3878
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 459
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2596
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2597
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2598
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2599
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 2600
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2603
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2539
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2545
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mOldFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2546
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2548
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2549
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 4618
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 4614
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    .line 828
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 829
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 835
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 837
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 838
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 9
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 4527
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v7, :cond_0

    .line 4528
    const/4 v7, 0x0

    .line 4562
    :goto_0
    return v7

    .line 4532
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 4533
    .local v1, eventType:I
    sparse-switch v1, :sswitch_data_0

    .line 4561
    :cond_1
    :goto_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4562
    const/4 v7, 0x1

    goto :goto_0

    .line 4535
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    .line 4536
    .local v5, sourceNodeId:J
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 4538
    .local v0, accessibilityViewId:I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 4539
    .local v4, source:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4540
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 4541
    .local v3, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_1

    .line 4542
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 4544
    .local v2, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 4549
    .end local v0           #accessibilityViewId:I
    .end local v2           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4           #source:Landroid/view/View;
    .end local v5           #sourceNodeId:J
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    .line 4550
    .restart local v5       #sourceNodeId:J
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 4552
    .restart local v0       #accessibilityViewId:I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 4553
    .restart local v4       #source:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4554
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 4555
    .restart local v3       #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_1

    .line 4556
    invoke-virtual {p0, v8, v8}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 4533
    nop

    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 960
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 961
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 964
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1874
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1875
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1876
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1879
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1880
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1881
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1883
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 3991
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3992
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3993
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    .line 4184
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 4185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 4186
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 4189
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .prologue
    .line 969
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 971
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 972
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 974
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 976
    :cond_0
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 2363
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2364
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2365
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2366
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2367
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 2369
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_4

    .line 2375
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2382
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    .line 2387
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v8, :cond_2

    .line 2388
    :cond_1
    iput-object v9, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move v6, v7

    .line 2481
    .end local v2           #focus:Landroid/view/View;
    :goto_0
    return v6

    .line 2392
    .restart local v2       #focus:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_3

    .line 2396
    const/4 p1, 0x0

    .line 2401
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_8

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    .line 2467
    .end local v2           #focus:Landroid/view/View;
    :cond_4
    :goto_1
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v4, v6, :cond_7

    .line 2470
    if-nez p2, :cond_e

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_e

    .line 2471
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5

    .line 2472
    new-instance v6, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 2474
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v4, v9

    invoke-virtual {v6, v7, v8, v7, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2478
    :cond_6
    :goto_2
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_7
    move v6, v3

    .line 2481
    goto :goto_0

    .line 2408
    .restart local v2       #focus:Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_4

    .line 2412
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 2413
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2416
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2421
    if-nez p1, :cond_b

    .line 2422
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2425
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 2426
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2440
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2444
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_c

    .line 2461
    :cond_a
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    .line 2434
    :cond_b
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 2450
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_d

    .line 2451
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    goto :goto_4

    .line 2454
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_a

    .line 2456
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_4

    .line 2475
    .end local v2           #focus:Landroid/view/View;
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_6

    .line 2476
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_2
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .parameter "view"
    .parameter "node"

    .prologue
    const/4 v6, 0x0

    .line 2501
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    .line 2503
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2504
    .local v1, focusNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 2505
    .local v0, focusHost:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 2512
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 2513
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2515
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 2516
    .local v2, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    .line 2518
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 2519
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2521
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 2523
    .local v3, virtualNodeId:I
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2526
    .end local v3           #virtualNodeId:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2528
    .end local v0           #focusHost:Landroid/view/View;
    .end local v1           #focusNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 2530
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 2534
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 2535
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2536
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .parameter "newDragTarget"

    .prologue
    .line 3786
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 3787
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3789
    :cond_0
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 764
    monitor-enter p0

    .line 765
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 767
    .local v1, oldSoftInputMode:I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 769
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .line 772
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 773
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 774
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 775
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 777
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 779
    if-eqz p2, :cond_0

    .line 780
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 781
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 784
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    .line 786
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 791
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 792
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 793
    monitor-exit p0

    .line 794
    return-void

    .line 793
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 3667
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 3668
    return-void
.end method

.method setStopped(Z)V
    .locals 1
    .parameter "stopped"

    .prologue
    .line 911
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 912
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 913
    if-nez p1, :cond_0

    .line 914
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 917
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 12
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    .line 483
    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_f

    .line 485
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 486
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, p1}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 487
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 488
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 490
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 492
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 494
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_0

    .line 495
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 497
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_0

    .line 498
    new-instance v1, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 499
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 503
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 504
    .local v8, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 507
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v1, :cond_1

    .line 508
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V

    .line 511
    :cond_1
    const/4 v11, 0x0

    .line 512
    .local v11, restore:Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2

    .line 513
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 514
    const/4 v11, 0x1

    .line 515
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 516
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 520
    :cond_2
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 521
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 522
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 525
    :cond_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 526
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 527
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 528
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 529
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 530
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v1, :cond_9

    const/high16 v1, 0x3f80

    :goto_1
    iput v1, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 532
    if-eqz p3, :cond_4

    .line 533
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 536
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 542
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 543
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 545
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :cond_5
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 549
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 550
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 551
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 564
    .local v10, res:I
    if-eqz v11, :cond_6

    .line 565
    :try_start_2
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 569
    :cond_6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_7

    .line 570
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 572
    :cond_7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 573
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 575
    if-gez v10, :cond_b

    .line 576
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 577
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 579
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 580
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 581
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 582
    packed-switch v10, :pswitch_data_0

    .line 613
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 529
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v11       #restore:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 530
    :cond_9
    :try_start_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v1, v1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 554
    :catch_0
    move-exception v9

    .line 555
    .local v9, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 556
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 557
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 558
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 559
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 560
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 561
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 562
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 564
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_a

    .line 565
    :try_start_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 564
    :cond_a
    throw v1

    .line 585
    .restart local v10       #res:I
    :pswitch_0
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :pswitch_1
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :pswitch_2
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :pswitch_3
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :pswitch_4
    monitor-exit p0

    .line 644
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :goto_2
    return-void

    .line 605
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #res:I
    .restart local v11       #restore:Z
    :pswitch_5
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :pswitch_6
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_b
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_c

    .line 618
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 621
    :cond_c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_d

    .line 622
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_10

    .line 623
    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 624
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 631
    :cond_d
    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 632
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 633
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 635
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 636
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 639
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 640
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 643
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :cond_f
    monitor-exit p0

    goto/16 :goto_2

    .line 626
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #res:I
    .restart local v11       #restore:Z
    :cond_10
    new-instance v1, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 632
    :cond_11
    const/4 v1, 0x0

    goto :goto_4

    .line 633
    :cond_12
    const/4 v1, 0x0

    goto :goto_5

    .line 582
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 4513
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 4517
    const/4 v0, 0x0

    return-object v0
.end method

.method terminateHardwareResources()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 660
    :cond_0
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4192
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 4193
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 4194
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 4197
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .prologue
    .line 979
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 981
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/Looper;->removeSyncBarrier(I)V

    .line 982
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 985
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 5
    .parameter "config"
    .parameter "force"

    .prologue
    .line 2658
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 2659
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 2660
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2661
    .end local p1
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    move-object p1, v1

    .line 2664
    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local p1
    :cond_0
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2665
    :try_start_0
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 2666
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2665
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2668
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2673
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2674
    if-nez p2, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 2675
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2676
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2679
    :cond_3
    return-void

    .line 2668
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4434
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4435
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4436
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 4437
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4438
    return-void

    :cond_0
    move v1, v3

    .line 4435
    goto :goto_0

    :cond_1
    move v2, v3

    .line 4436
    goto :goto_1
.end method
