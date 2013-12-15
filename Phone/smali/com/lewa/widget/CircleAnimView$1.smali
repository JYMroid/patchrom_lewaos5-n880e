.class Lcom/lewa/widget/CircleAnimView$1;
.super Ljava/lang/Object;
.source "CircleAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/widget/CircleAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/widget/CircleAnimView;


# direct methods
.method constructor <init>(Lcom/lewa/widget/CircleAnimView;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lewa/widget/CircleAnimView$1;->this$0:Lcom/lewa/widget/CircleAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lewa/widget/CircleAnimView$1;->this$0:Lcom/lewa/widget/CircleAnimView;

    invoke-virtual {v0}, Lcom/lewa/widget/CircleAnimView;->invalidate()V

    .line 139
    return-void
.end method
