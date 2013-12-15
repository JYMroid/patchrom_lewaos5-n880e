.class Llewa/v5/lockscreen/activity/FancyLockScreen$1;
.super Ljava/lang/Object;
.source "FancyLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/v5/lockscreen/activity/FancyLockScreen;->unlocked(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/v5/lockscreen/activity/FancyLockScreen;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Llewa/v5/lockscreen/activity/FancyLockScreen;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;->this$0:Llewa/v5/lockscreen/activity/FancyLockScreen;

    iput-object p2, p0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;->this$0:Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {v1}, Llewa/v5/lockscreen/activity/FancyLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    :cond_0
    :try_start_0
    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;->this$0:Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {v1}, Llewa/v5/lockscreen/activity/FancyLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Llewa/v5/lockscreen/activity/LockScreenActivity;

    invoke-virtual {v1}, Llewa/v5/lockscreen/activity/LockScreenActivity;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FancyLockScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
