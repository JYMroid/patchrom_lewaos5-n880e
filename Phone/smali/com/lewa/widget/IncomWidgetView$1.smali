.class Lcom/lewa/widget/IncomWidgetView$1;
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
    .line 122
    iput-object p1, p0, Lcom/lewa/widget/IncomWidgetView$1;->this$0:Lcom/lewa/widget/IncomWidgetView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$1;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #setter for: Lcom/lewa/widget/IncomWidgetView;->mBlockHideTargetsAfterHitAndBeforeRelease:Z
    invoke-static {v0, v3}, Lcom/lewa/widget/IncomWidgetView;->access$002(Lcom/lewa/widget/IncomWidgetView;Z)Z

    .line 125
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$1;->this$0:Lcom/lewa/widget/IncomWidgetView;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView$1;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mWaveCenterX:F
    invoke-static {v1}, Lcom/lewa/widget/IncomWidgetView;->access$100(Lcom/lewa/widget/IncomWidgetView;)F

    move-result v1

    iget-object v2, p0, Lcom/lewa/widget/IncomWidgetView$1;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mWaveCenterY:F
    invoke-static {v2}, Lcom/lewa/widget/IncomWidgetView;->access$200(Lcom/lewa/widget/IncomWidgetView;)F

    move-result v2

    #calls: Lcom/lewa/widget/IncomWidgetView;->switchToState(IFF)V
    invoke-static {v0, v3, v1, v2}, Lcom/lewa/widget/IncomWidgetView;->access$300(Lcom/lewa/widget/IncomWidgetView;IFF)V

    .line 126
    return-void
.end method
