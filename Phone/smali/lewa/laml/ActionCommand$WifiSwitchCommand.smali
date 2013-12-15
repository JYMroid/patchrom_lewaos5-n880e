.class Llewa/laml/ActionCommand$WifiSwitchCommand;
.super Llewa/laml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiSwitchCommand"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "Wifi"


# instance fields
.field private mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Llewa/laml/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 1025
    const-string v0, "wifi_state"

    sget-object v1, Llewa/laml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/ActionCommand$NotificationReceiver;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    new-instance v0, Llewa/laml/ActionCommand$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llewa/laml/ActionCommand$WifiStateTracker;-><init>(Llewa/laml/ActionCommand$1;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    .line 1026
    invoke-virtual {p0}, Llewa/laml/ActionCommand$WifiSwitchCommand;->update()V

    .line 1027
    new-instance v0, Llewa/laml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Llewa/laml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    .line 1028
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 977
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    iget-object v2, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Llewa/laml/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 993
    :cond_0
    :goto_0
    invoke-virtual {p0}, Llewa/laml/ActionCommand$WifiSwitchCommand;->update()V

    .line 994
    return-void

    .line 980
    :cond_1
    const/4 v0, 0x0

    .line 981
    .local v0, flag:Z
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    iget-object v2, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Llewa/laml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 990
    :goto_1
    if-eqz v0, :cond_0

    .line 991
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    iget-object v2, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    invoke-virtual {v1, v2, v3}, Llewa/laml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_0

    .line 983
    :pswitch_0
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 984
    :goto_2
    goto :goto_1

    .line 983
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 987
    :pswitch_1
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_1

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 997
    iget-object v0, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    invoke-virtual {v0, p1, p2}, Llewa/laml/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 998
    invoke-super {p0, p1, p2, p3}, Llewa/laml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 999
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1002
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    iget-object v2, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Llewa/laml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1022
    :goto_0
    :pswitch_0
    return-void

    .line 1004
    :pswitch_1
    iget-object v1, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    invoke-virtual {v1}, Llewa/laml/ActionCommand$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    .line 1008
    :pswitch_2
    iget-object v0, p0, Llewa/laml/ActionCommand$WifiSwitchCommand;->mWifiState:Llewa/laml/ActionCommand$StateTracker;

    check-cast v0, Llewa/laml/ActionCommand$WifiStateTracker;

    iget-boolean v0, v0, Llewa/laml/ActionCommand$WifiStateTracker;->zConnected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 1013
    :pswitch_3
    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
