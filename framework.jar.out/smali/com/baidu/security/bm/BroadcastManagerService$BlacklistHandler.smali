.class Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
.super Landroid/os/Handler;
.source "BroadcastManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/bm/BroadcastManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlacklistHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/security/bm/BroadcastManagerService;


# direct methods
.method constructor <init>(Lcom/baidu/security/bm/BroadcastManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 108
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 116
    .local v0, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    invoke-static {v0}, Lcom/baidu/security/bm/AutoLaunchController;->updateBlackList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 125
    .end local v0           #newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 126
    .local v2, packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/SilentAppsController;->addCleanedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 130
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/security/bm/SilentAppsController;->removeCleanedApp(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v1           #packageName:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 136
    .restart local v2       #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/LockedAppsController;->addLockedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 140
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 141
    .restart local v2       #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/LockedAppsController;->removeLockedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
