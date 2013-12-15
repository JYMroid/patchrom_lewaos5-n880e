.class Lcom/android/phone/LewaInCallTouchUi$SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "LewaInCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallerHitTargetTouchListener"
.end annotation


# static fields
.field private static final HIT_TARGET_PERCENT_X:I = 0x32

.field private static final HIT_TARGET_PERCENT_Y:I = 0x50

.field private static final X_EDGE:I = 0x19

.field private static final X_HIT_MAX:I = 0x4b

.field private static final X_HIT_MIN:I = 0x19

.field private static final Y_EDGE:I = 0xa

.field private static final Y_HIT_MAX:I = 0x5a

.field private static final Y_HIT_MIN:I = 0xa


# instance fields
.field mDownEventHit:Z

.field final synthetic this$0:Lcom/android/phone/LewaInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi$SmallerHitTargetTouchListener;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1627
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3

    .line 1631
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v0, v8

    .line 1632
    .local v0, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v2, v8

    .line 1634
    .local v2, touchY:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1635
    .local v5, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1638
    .local v4, viewHeight:I
    mul-int/lit8 v8, v0, 0x64

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 1639
    .local v1, touchXPercent:I
    mul-int/lit8 v8, v2, 0x64

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 1648
    .local v3, touchYPercent:I
    const/16 v8, 0x19

    if-lt v1, v8, :cond_0

    const/16 v8, 0x4b

    if-gt v1, v8, :cond_0

    const/16 v8, 0xa

    if-lt v3, v8, :cond_0

    const/16 v8, 0x5a

    if-le v3, v8, :cond_2

    .line 1652
    :cond_0
    iput-boolean v7, p0, Lcom/android/phone/LewaInCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    .line 1667
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_1
    :goto_0
    return v6

    .line 1657
    .restart local v0       #touchX:I
    .restart local v1       #touchXPercent:I
    .restart local v2       #touchY:I
    .restart local v3       #touchYPercent:I
    .restart local v4       #viewHeight:I
    .restart local v5       #viewWidth:I
    :cond_2
    iput-boolean v6, p0, Lcom/android/phone/LewaInCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    move v6, v7

    .line 1658
    goto :goto_0

    .line 1667
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_3
    iget-boolean v8, p0, Lcom/android/phone/LewaInCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_0
.end method
