.class public Lcom/baidu/themeanimation/model/InfoRefreshUtil;
.super Ljava/lang/Object;
.source "InfoRefreshUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InfoRefreshUtil"


# instance fields
.field private mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

.field private mBatteryIntentFilter:Landroid/content/IntentFilter;

.field private mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

.field private mContext:Landroid/content/Context;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

.field private mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

.field private mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

.field private mVariableIntentFilter:Landroid/content/IntentFilter;

.field private mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "rootPath"
    .parameter "lockDir"
    .parameter "wallpaperDir"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 45
    iput-object p1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 47
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    .line 49
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-virtual {v1, v0, p3, p4, p5}, Lcom/baidu/themeanimation/util/FileUtil;->setDensity(Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "rootPath"
    .parameter "lockDir"
    .parameter "wallpaperDir"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 59
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    .line 61
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/baidu/themeanimation/util/FileUtil;->setDensity(Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    .line 66
    return-void
.end method


# virtual methods
.method public dispatchTouch(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float v2, p1, v2

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 152
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float v2, p2, v2

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 154
    return-void
.end method

.method public register_Receiver_create()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    const-string v0, "InfoRefreshUtil"

    const-string v1, "register_Receiver_create"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    .line 103
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "theme.lockscreen.action.Unlock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryIntentFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/receiver/BatteryReceiver;-><init>(Lcom/baidu/themeanimation/util/LockScreenHandler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    .line 109
    new-instance v0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;-><init>(Lcom/baidu/themeanimation/util/LockScreenHandler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    .line 110
    new-instance v0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    .line 111
    new-instance v0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/UpdateSmsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    .line 112
    new-instance v0, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    .line 114
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public register_Receiver_resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const-string v0, "InfoRefreshUtil"

    const-string v1, "register_Receiver_resume"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    const/16 v2, 0x213

    invoke-virtual {v1, v2, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method public setGlobalVariable()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 69
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xb

    const-wide/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 71
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xc

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 73
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 75
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "music_control.visibility"

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 76
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "date_position_y"

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 77
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "text_size_date"

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 78
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "show_date"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 79
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "date_format"

    const-string v2, "yyyy/M/d EEEE"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 81
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 82
    return-void
.end method

.method public unregister_Receiver_destory()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "InfoRefreshUtil"

    const-string v2, "unregister_Receiver_destory"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister_Receiver_pause()V
    .locals 3

    .prologue
    .line 126
    const-string v1, "InfoRefreshUtil"

    const-string v2, "unregister_Receiver_pause"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
