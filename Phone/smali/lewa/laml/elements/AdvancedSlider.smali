.class public Llewa/laml/elements/AdvancedSlider;
.super Llewa/laml/elements/ScreenElement;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/AdvancedSlider$1;,
        Llewa/laml/elements/AdvancedSlider$LaunchAction;,
        Llewa/laml/elements/AdvancedSlider$State;,
        Llewa/laml/elements/AdvancedSlider$StartPoint;,
        Llewa/laml/elements/AdvancedSlider$SliderPoint;,
        Llewa/laml/elements/AdvancedSlider$Position;,
        Llewa/laml/elements/AdvancedSlider$OnLaunchListener;,
        Llewa/laml/elements/AdvancedSlider$EndPoint;,
        Llewa/laml/elements/AdvancedSlider$CheckTouchResult;,
        Llewa/laml/elements/AdvancedSlider$BounceAnimationController;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

.field private mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

.field private mPressed:Z

.field private mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

.field private mStateVar:Llewa/laml/util/IndexedNumberVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Llewa/laml/elements/AdvancedSlider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 54
    new-instance v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;-><init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 82
    iget-boolean v0, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "state"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    .line 84
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_x"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

    .line 85
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_y"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

    .line 86
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_dist"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

    .line 88
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {p2, v0}, Llewa/laml/ScreenElementRoot;->addPreTicker(Llewa/laml/elements/ITicker;)V

    .line 89
    invoke-virtual {p0, p1}, Llewa/laml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 90
    return-void
.end method

.method static synthetic access$1000(Llewa/laml/elements/AdvancedSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    return v0
.end method

.method static synthetic access$1100(Llewa/laml/elements/AdvancedSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Llewa/laml/elements/AdvancedSlider;->mPressed:Z

    return v0
.end method

.method static synthetic access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic access$500(Llewa/laml/elements/AdvancedSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Llewa/laml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$600(Llewa/laml/elements/AdvancedSlider;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$700(Llewa/laml/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic access$800(Llewa/laml/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method private cancelMoving()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 94
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->requestUpdate()V

    .line 95
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onCancel()V

    .line 96
    return-void
.end method

.method private checkEndPoint(Llewa/laml/util/Utils$Point;Llewa/laml/elements/AdvancedSlider$EndPoint;)Z
    .locals 5
    .parameter "point"
    .parameter "endPoint"

    .prologue
    .line 99
    iget-wide v2, p1, Llewa/laml/util/Utils$Point;->x:D

    double-to-float v2, v2

    iget-wide v3, p1, Llewa/laml/util/Utils$Point;->y:D

    double-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Llewa/laml/elements/AdvancedSlider$EndPoint;->touched(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-virtual {p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->getState()Llewa/laml/elements/AdvancedSlider$State;

    move-result-object v2

    sget-object v3, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    if-eq v2, v3, :cond_2

    .line 101
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 102
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

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

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 103
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    if-eq v0, p2, :cond_0

    .line 104
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 106
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_1
    iget-object v2, p2, Llewa/laml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Llewa/laml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 108
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    .line 111
    :goto_1
    return v2

    .line 110
    :cond_3
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 111
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkTouch(FF)Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 115
    const v3, 0x7f7fffff

    .line 116
    .local v3, minDist:F
    const/4 v4, 0x0

    .line 117
    .local v4, point:Llewa/laml/util/Utils$Point;
    new-instance v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;

    invoke-direct {v7, p0, v8}, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;-><init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V

    .line 119
    .local v7, result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 120
    .local v1, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    #calls: Llewa/laml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Llewa/laml/util/Utils$Point;
    invoke-static {v1, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$200(Llewa/laml/elements/AdvancedSlider$EndPoint;FF)Llewa/laml/util/Utils$Point;

    move-result-object v5

    .line 121
    .local v5, pt:Llewa/laml/util/Utils$Point;
    invoke-virtual {v1, v5, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Llewa/laml/util/Utils$Point;FF)F

    move-result v0

    .line 122
    .local v0, di:F
    cmpg-float v9, v0, v3

    if-gez v9, :cond_0

    .line 123
    move v3, v0

    .line 124
    move-object v4, v5

    .line 125
    iput-object v1, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    goto :goto_0

    .line 129
    .end local v0           #di:F
    .end local v1           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    .end local v5           #pt:Llewa/laml/util/Utils$Point;
    :cond_1
    const/4 v6, 0x0

    .line 131
    .local v6, reached:Z
    const v9, 0x7f7fffff

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    .line 132
    iget-wide v8, v4, Llewa/laml/util/Utils$Point;->x:D

    double-to-float v8, v8

    iget-wide v9, v4, Llewa/laml/util/Utils$Point;->y:D

    double-to-float v9, v9

    invoke-direct {p0, v8, v9}, Llewa/laml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 133
    const v8, 0x7effffff

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 134
    iget-object v8, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v4, v8}, Llewa/laml/elements/AdvancedSlider;->checkEndPoint(Llewa/laml/util/Utils$Point;Llewa/laml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 147
    :cond_2
    :goto_1
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    if-eqz v6, :cond_6

    sget-object v8, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    :goto_2
    invoke-virtual {v9, v8}, Llewa/laml/elements/AdvancedSlider$StartPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 148
    iget-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_3

    .line 149
    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v6, :cond_7

    const-wide/high16 v8, 0x4000

    :goto_3
    invoke-virtual {v10, v8, v9}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 151
    :cond_3
    iput-boolean v6, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 155
    .end local v7           #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :goto_4
    return-object v7

    .line 136
    .restart local v7       #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :cond_4
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 137
    .restart local v1       #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    #getter for: Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_5

    .line 138
    invoke-direct {p0, v4, v1}, Llewa/laml/elements/AdvancedSlider;->checkEndPoint(Llewa/laml/util/Utils$Point;Llewa/laml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 139
    if-eqz v6, :cond_5

    .line 140
    iput-object v1, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 147
    .end local v1           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_6
    sget-object v8, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    goto :goto_2

    .line 149
    :cond_7
    const-wide/high16 v8, 0x3ff0

    goto :goto_3

    .line 154
    :cond_8
    const-string v9, "LockScreen_AdvancedSlider"

    const-string v10, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 155
    goto :goto_4
.end method

.method private doLaunch(Llewa/laml/elements/AdvancedSlider$EndPoint;)Z
    .locals 2
    .parameter "endPoint"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p1, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v1}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    move-result-object v0

    .line 162
    :cond_0
    iget-object v1, p1, Llewa/laml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Llewa/laml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private loadEndPoint(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 167
    const-string v3, "EndPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 168
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 169
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 170
    .local v1, item:Lorg/w3c/dom/Element;
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    new-instance v4, Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-direct {v4, p0, v1}, Llewa/laml/elements/AdvancedSlider$EndPoint;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v1           #item:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "no end point for unlocker!"

    invoke-static {v3, v4}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 173
    return-void

    .line 172
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadStartPoint(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v1, "StartPoint"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 177
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "no StartPoint node"

    invoke-static {v1, v2}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 178
    new-instance v1, Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-direct {v1, p0, v0}, Llewa/laml/elements/AdvancedSlider$StartPoint;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    .line 179
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveStartPoint(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 182
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 183
    iget-boolean v6, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v6, :cond_0

    .line 184
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Llewa/laml/elements/AdvancedSlider$StartPoint;->mCurrentX:F

    invoke-virtual {p0, v6}, Llewa/laml/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Llewa/laml/elements/AdvancedSlider$StartPoint;->mX:Llewa/laml/data/Expression;

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v9

    invoke-virtual {v8, v9}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    sub-double v2, v6, v8

    .line 186
    .local v2, move_x:D
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Llewa/laml/elements/AdvancedSlider$StartPoint;->mCurrentY:F

    invoke-virtual {p0, v6}, Llewa/laml/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Llewa/laml/elements/AdvancedSlider$StartPoint;->mY:Llewa/laml/data/Expression;

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v9

    invoke-virtual {v8, v9}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    sub-double v4, v6, v8

    .line 188
    .local v4, move_y:D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 190
    .local v0, move_dist:D
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v6, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 191
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v6, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 192
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v6, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 194
    .end local v0           #move_dist:D
    .end local v2           #move_x:D
    .end local v4           #move_y:D
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 197
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 198
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 200
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1}, Llewa/laml/elements/AdvancedSlider$StartPoint;->render(Landroid/graphics/Canvas;)V

    .line 201
    return-void
.end method

.method public findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 204
    invoke-super {p0, p1}, Llewa/laml/elements/ScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 205
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 219
    :goto_0
    return-object v3

    .line 208
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3, p1}, Llewa/laml/elements/AdvancedSlider$StartPoint;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 213
    .local v1, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v1, p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 215
    goto :goto_0

    .line 219
    .end local v1           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->finish()V

    .line 224
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->finish()V

    .line 225
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 226
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->finish()V

    goto :goto_0

    .line 229
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 230
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->init()V

    .line 234
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 235
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->init()V

    .line 236
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 237
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->init()V

    goto :goto_0

    .line 239
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 240
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 243
    sget-boolean v0, Llewa/laml/elements/AdvancedSlider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v0, p1}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->load(Lorg/w3c/dom/Element;)V

    .line 245
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider;->loadStartPoint(Lorg/w3c/dom/Element;)V

    .line 246
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider;->loadEndPoint(Lorg/w3c/dom/Element;)V

    .line 247
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 253
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

    invoke-interface {v0, p1}, Llewa/laml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)V

    .line 256
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onReach(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 260
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->haptic(I)V

    .line 261
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->haptic(I)V

    .line 265
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->haptic(I)V

    .line 269
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 274
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 275
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v9}, Llewa/laml/ScreenElementRoot;->getMatrixScale()F

    move-result v4

    .line 276
    .local v4, scale:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    div-float v5, v9, v4

    .line 277
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    div-float v6, v9, v4

    .line 283
    .end local v4           #scale:F
    .local v6, y:F
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    move v7, v8

    .line 344
    :cond_1
    :goto_1
    return v7

    .line 279
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_2
    const/4 v5, 0x0

    .line 280
    .restart local v5       #x:F
    const/4 v6, 0x0

    .restart local v6       #y:F
    goto :goto_0

    .line 285
    :pswitch_0
    iget-boolean v9, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_0

    .line 286
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v9, v10}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    .line 287
    iput-object v10, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 288
    iput-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 289
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onRelease()V

    goto :goto_1

    .line 295
    :pswitch_1
    iget-boolean v9, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_0

    .line 298
    iput-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 299
    invoke-direct {p0, v5, v6}, Llewa/laml/elements/AdvancedSlider;->checkTouch(FF)Llewa/laml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 300
    .local v3, result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    const/4 v2, 0x0

    .line 301
    .local v2, launched:Z
    if-eqz v3, :cond_4

    .line 302
    iget-boolean v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v8, :cond_3

    .line 303
    iget-object v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v8}, Llewa/laml/elements/AdvancedSlider;->doLaunch(Llewa/laml/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    .line 304
    :cond_3
    iget-object v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    iput-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 306
    :cond_4
    if-nez v2, :cond_1

    .line 307
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v8, v9}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    .line 308
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onRelease()V

    goto :goto_1

    .line 314
    .end local v2           #launched:Z
    .end local v3           #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_2
    iget-boolean v9, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_0

    .line 315
    invoke-direct {p0, v5, v6}, Llewa/laml/elements/AdvancedSlider;->checkTouch(FF)Llewa/laml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 316
    .restart local v3       #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_5

    .line 317
    iget-object v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    iput-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 319
    :cond_5
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v9, v10}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    .line 320
    iput-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 321
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onRelease()V

    goto :goto_1

    .line 327
    .end local v3           #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_3
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9, v5, v6}, Llewa/laml/elements/AdvancedSlider$StartPoint;->touched(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 328
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 329
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v8

    sub-float v8, v5, v8

    iput v8, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 330
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v8

    sub-float v8, v6, v8

    iput v8, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 331
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    sget-object v9, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v8, v9}, Llewa/laml/elements/AdvancedSlider$StartPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 332
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 333
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    sget-object v8, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v8}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    goto :goto_2

    .line 335
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_6
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mPressed:Z

    .line 336
    iget-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_7

    .line 337
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v9, 0x3ff0

    invoke-virtual {v8, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 338
    :cond_7
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 339
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onStart()V

    goto/16 :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->pause()V

    .line 349
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->pause()V

    .line 350
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 351
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->pause()V

    goto :goto_0

    .line 353
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 354
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 357
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->reset(J)V

    .line 358
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->reset(J)V

    .line 359
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 360
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->reset(J)V

    goto :goto_0

    .line 362
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method protected resetInner()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 365
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mPressed:Z

    .line 366
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v3

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Llewa/laml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 367
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    sget-object v3, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 368
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 369
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 372
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-boolean v2, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 374
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 375
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 376
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 379
    :cond_1
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 380
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 383
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->resume()V

    .line 384
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->resume()V

    .line 385
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 386
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->resume()V

    goto :goto_0

    .line 388
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public setOnLaunchListener(Llewa/laml/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 391
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider;->mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

    .line 392
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 395
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->showCategory(Ljava/lang/String;Z)V

    .line 396
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 397
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 399
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->tick(J)V

    .line 403
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->tick(J)V

    .line 405
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 406
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->tick(J)V

    goto :goto_0

    .line 409
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
