.class Lcom/lewa/widget/IncomWidgetView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomWidgetView.java"


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
    .line 129
    iput-object p1, p0, Lcom/lewa/widget/IncomWidgetView$2;->this$0:Lcom/lewa/widget/IncomWidgetView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$2;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mCricleInnerDrawable:Lcom/lewa/widget/TargetDrawable;
    invoke-static {v0}, Lcom/lewa/widget/IncomWidgetView;->access$400(Lcom/lewa/widget/IncomWidgetView;)Lcom/lewa/widget/TargetDrawable;

    move-result-object v0

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lcom/lewa/widget/TargetDrawable;->setAlpha(F)V

    .line 133
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$2;->this$0:Lcom/lewa/widget/IncomWidgetView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView$2;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/lewa/widget/IncomWidgetView;->access$100(Lcom/lewa/widget/IncomWidgetView;)F

    move-result v2

    iget-object v3, p0, Lcom/lewa/widget/IncomWidgetView$2;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/lewa/widget/IncomWidgetView;->access$200(Lcom/lewa/widget/IncomWidgetView;)F

    move-result v3

    #calls: Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/lewa/widget/IncomWidgetView;->access$300(Lcom/lewa/widget/IncomWidgetView;IFF)V

    .line 134
    return-void
.end method
