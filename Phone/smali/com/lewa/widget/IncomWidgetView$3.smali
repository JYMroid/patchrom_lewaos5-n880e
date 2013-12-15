.class Lcom/lewa/widget/IncomWidgetView$3;
.super Ljava/lang/Object;
.source "IncomWidgetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/widget/IncomWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/widget/IncomWidgetView;


# direct methods
.method constructor <init>(Lcom/lewa/widget/IncomWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lewa/widget/IncomWidgetView$3;->this$0:Lcom/lewa/widget/IncomWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$3;->this$0:Lcom/lewa/widget/IncomWidgetView;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView$3;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mHandleDrawable:Lcom/lewa/widget/TargetDrawable;
    invoke-static {v1}, Lcom/lewa/widget/IncomWidgetView;->access$500(Lcom/lewa/widget/IncomWidgetView;)Lcom/lewa/widget/TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lewa/widget/IncomWidgetView;->invalidateGlobalRegion(Lcom/lewa/widget/TargetDrawable;)V

    .line 140
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$3;->this$0:Lcom/lewa/widget/IncomWidgetView;

    invoke-virtual {v0}, Lcom/lewa/widget/IncomWidgetView;->invalidate()V

    .line 141
    return-void
.end method
