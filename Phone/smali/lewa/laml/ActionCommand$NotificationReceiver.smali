.class abstract Llewa/laml/ActionCommand$NotificationReceiver;
.super Llewa/laml/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Llewa/laml/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Llewa/laml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "stateName"
    .parameter "type"

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Llewa/laml/ActionCommand$StatefulActionCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    .line 450
    iput-object p3, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llewa/laml/NotifierManager;->getInstance(Landroid/content/Context;)Llewa/laml/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    .line 452
    return-void
.end method


# virtual methods
.method protected asyncUpdate()V
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Llewa/laml/ActionCommand;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Llewa/laml/ActionCommand$NotificationReceiver$1;

    invoke-direct {v1, p0}, Llewa/laml/ActionCommand$NotificationReceiver$1;-><init>(Llewa/laml/ActionCommand$NotificationReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->releaseNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 426
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Llewa/laml/ActionCommand$NotificationReceiver;->update()V

    .line 430
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->acquireNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 431
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 434
    invoke-virtual {p0}, Llewa/laml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    .line 435
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->pause(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 439
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Llewa/laml/ActionCommand$NotificationReceiver;->update()V

    .line 443
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->resume(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 444
    return-void
.end method

.method protected abstract update()V
.end method
