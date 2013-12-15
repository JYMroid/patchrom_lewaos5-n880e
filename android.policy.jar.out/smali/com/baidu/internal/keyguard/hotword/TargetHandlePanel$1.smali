.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;
.super Ljava/lang/Object;
.source "TargetHandlePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 216
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->val$v:Landroid/view/View;

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$100()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 217
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->val$v:Landroid/view/View;

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$200()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 218
    return-void
.end method
