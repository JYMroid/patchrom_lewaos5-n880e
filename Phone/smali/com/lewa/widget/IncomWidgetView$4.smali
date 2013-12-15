.class Lcom/lewa/widget/IncomWidgetView$4;
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
    .line 145
    iput-object p1, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 147
    const-string v0, "IncomWidgetView"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/lewa/widget/IncomWidgetView;->access$600(Lcom/lewa/widget/IncomWidgetView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    iget-object v1, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #getter for: Lcom/lewa/widget/IncomWidgetView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/lewa/widget/IncomWidgetView;->access$600(Lcom/lewa/widget/IncomWidgetView;)I

    move-result v1

    #calls: Lcom/lewa/widget/IncomWidgetView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/lewa/widget/IncomWidgetView;->access$700(Lcom/lewa/widget/IncomWidgetView;I)V

    .line 150
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #setter for: Lcom/lewa/widget/IncomWidgetView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/lewa/widget/IncomWidgetView;->access$602(Lcom/lewa/widget/IncomWidgetView;I)I

    .line 151
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #calls: Lcom/lewa/widget/IncomWidgetView;->hideTargets(Z)V
    invoke-static {v0, v2}, Lcom/lewa/widget/IncomWidgetView;->access$800(Lcom/lewa/widget/IncomWidgetView;Z)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/lewa/widget/IncomWidgetView$4;->this$0:Lcom/lewa/widget/IncomWidgetView;

    #setter for: Lcom/lewa/widget/IncomWidgetView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/lewa/widget/IncomWidgetView;->access$902(Lcom/lewa/widget/IncomWidgetView;Z)Z

    .line 154
    return-void
.end method
