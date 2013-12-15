.class public Llewa/v5/lockscreen/FancyLockScreenView;
.super Llewa/laml/AdvancedView;
.source "FancyLockScreenView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FancyLockScreenView"

.field private static final MOVING_THRESHOLD:I = 0x19


# instance fields
.field private mLastTouchTime:J

.field private mPreX:I

.field private mPreY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Llewa/v5/lockscreen/LockScreenRoot;)V
    .locals 0
    .parameter "context"
    .parameter "root"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Llewa/laml/AdvancedView;-><init>(Landroid/content/Context;Llewa/laml/ScreenElementRoot;)V

    .line 26
    invoke-direct {p0}, Llewa/v5/lockscreen/FancyLockScreenView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/v5/lockscreen/LockScreenRoot;Llewa/laml/RenderThread;)V
    .locals 0
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/AdvancedView;-><init>(Landroid/content/Context;Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V

    .line 31
    invoke-direct {p0}, Llewa/v5/lockscreen/FancyLockScreenView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/FancyLockScreenView;->setFocusable(Z)V

    .line 36
    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/FancyLockScreenView;->setFocusableInTouchMode(Z)V

    .line 37
    const-string v0, "FancyLockScreenView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 42
    .local v0, action:I
    iget-object v6, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v6}, Llewa/laml/ScreenElementRoot;->getMatrixScale()F

    move-result v3

    .line 43
    .local v3, scale:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    div-float/2addr v6, v3

    float-to-int v4, v6

    .line 44
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    div-float/2addr v6, v3

    float-to-int v5, v6

    .line 45
    .local v5, y:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mLastTouchTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 47
    iget v6, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mPreX:I

    sub-int v1, v4, v6

    .line 48
    .local v1, dx:I
    iget v6, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mPreY:I

    sub-int v2, v5, v6

    .line 49
    .local v2, dy:I
    mul-int v6, v1, v1

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    const/16 v7, 0x19

    if-le v6, v7, :cond_0

    .line 50
    iget-object v6, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mRoot:Llewa/laml/ScreenElementRoot;

    check-cast v6, Llewa/v5/lockscreen/LockScreenRoot;

    invoke-virtual {v6}, Llewa/v5/lockscreen/LockScreenRoot;->pokeWakelock()V

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mLastTouchTime:J

    .line 52
    iput v4, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mPreX:I

    .line 53
    iput v5, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mPreY:I

    .line 60
    .end local v1           #dx:I
    .end local v2           #dy:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Llewa/laml/AdvancedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 56
    :cond_1
    if-nez v0, :cond_0

    .line 57
    iput v4, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mPreX:I

    .line 58
    iput v5, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mPreY:I

    goto :goto_0
.end method

.method public rebindRoot()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/v5/lockscreen/FancyLockScreenView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 65
    return-void
.end method
