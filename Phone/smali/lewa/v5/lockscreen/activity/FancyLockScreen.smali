.class public Llewa/v5/lockscreen/activity/FancyLockScreen;
.super Landroid/widget/FrameLayout;
.source "FancyLockScreen.java"

# interfaces
.implements Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;


# static fields
.field private static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final DBG:Z = false

.field private static final OWNER_INFO_VAR:Ljava/lang/String; = "owner_info"

.field private static final TAG:Ljava/lang/String; = "FancyLockScreen"

.field private static mHapticFeedbackUtil:Llewa/util/HapticFeedbackUtil;

.field private static final mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

.field private static sStartTime:J

.field private static sTotalWakenTime:J


# instance fields
.field private isPaused:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mConfig:Llewa/laml/util/ConfigFile;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

.field private mWakeStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-direct {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;-><init>()V

    sput-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v4, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->isPaused:Z

    .line 57
    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->setFocusable(Z)V

    .line 58
    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->setFocusableInTouchMode(Z)V

    .line 59
    sget-object v3, Llewa/v5/lockscreen/activity/FancyLockScreen;->mHapticFeedbackUtil:Llewa/util/HapticFeedbackUtil;

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Llewa/util/HapticFeedbackUtil;

    invoke-direct {v3, p1, v0}, Llewa/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v3, Llewa/v5/lockscreen/activity/FancyLockScreen;->mHapticFeedbackUtil:Llewa/util/HapticFeedbackUtil;

    .line 61
    :cond_0
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    sget-object v3, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    iget-object v5, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->init(Landroid/content/Context;Llewa/v5/lockscreen/activity/FancyLockScreen;)V

    .line 65
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 66
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "lock_screen_owner_info_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_3

    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, ownerString:Ljava/lang/String;
    :goto_1
    const-string v3, "owner_info"

    sget-object v5, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v5}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-static {v3, v5, v1}, Llewa/laml/util/Utils;->putVariableString(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V

    .line 72
    sget-object v3, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v3}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v3

    invoke-virtual {v3, p0}, Llewa/v5/lockscreen/LockScreenRoot;->setUnlockerCallback(Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;)V

    .line 73
    sget-object v3, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    iget-object v5, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->createView(Landroid/content/Context;)Llewa/v5/lockscreen/FancyLockScreenView;

    move-result-object v3

    iput-object v3, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

    .line 74
    iget-object v3, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

    invoke-virtual {p0, v3}, Llewa/v5/lockscreen/activity/FancyLockScreen;->addView(Landroid/view/View;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mWakeStartTime:J

    .line 76
    sget-wide v5, Llewa/v5/lockscreen/activity/FancyLockScreen;->sStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    .line 77
    iget-wide v5, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mWakeStartTime:J

    sput-wide v5, Llewa/v5/lockscreen/activity/FancyLockScreen;->sStartTime:J

    .line 79
    :cond_1
    const/16 v3, 0x64

    invoke-virtual {p0, v4, v4, v3}, Llewa/v5/lockscreen/activity/FancyLockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 80
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->onPause()V

    .line 81
    return-void

    .end local v0           #ownerInfoEnabled:Z
    .end local v1           #ownerString:Ljava/lang/String;
    :cond_2
    move v0, v4

    .line 66
    goto :goto_0

    .line 68
    .restart local v0       #ownerInfoEnabled:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->clear()V

    .line 85
    invoke-static {}, Llewa/content/res/ThemeResources;->reset()V

    .line 86
    return-void
.end method

.method public static getRootHolder()Llewa/v5/lockscreen/activity/SimpleRootHolder;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0, p0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->cleanUp(Llewa/v5/lockscreen/activity/FancyLockScreen;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 94
    return-void
.end method

.method public cleanUpView()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/v5/lockscreen/FancyLockScreenView;->cleanUp(Z)V

    .line 98
    return-void
.end method

.method public findTask(Ljava/lang/String;)Llewa/laml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 105
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mConfig:Llewa/laml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {v0, p1}, Llewa/laml/util/ConfigFile;->getTask(Ljava/lang/String;)Llewa/laml/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Llewa/v5/lockscreen/LockScreenRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haptic(I)V
    .locals 2
    .parameter "effectId"

    .prologue
    .line 112
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mHapticFeedbackUtil:Llewa/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Llewa/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 113
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 116
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Llewa/v5/lockscreen/LockScreenRoot;->isDisplayDesktop()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSoundEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 159
    sget-object v2, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v2}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getThread()Llewa/laml/RenderThread;

    move-result-object v2

    invoke-virtual {v2, v4}, Llewa/laml/RenderThread;->setPausedSafety(Z)V

    .line 160
    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

    invoke-virtual {v2}, Llewa/v5/lockscreen/FancyLockScreenView;->onPause()V

    .line 161
    sget-object v2, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v2}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v2

    const-string v3, "pause"

    invoke-virtual {v2, v3}, Llewa/v5/lockscreen/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 162
    iput-boolean v4, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->isPaused:Z

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mWakeStartTime:J

    sub-long v0, v2, v4

    .line 164
    .local v0, wakenTime:J
    sget-wide v2, Llewa/v5/lockscreen/activity/FancyLockScreen;->sTotalWakenTime:J

    add-long/2addr v2, v0

    sput-wide v2, Llewa/v5/lockscreen/activity/FancyLockScreen;->sTotalWakenTime:J

    .line 165
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 137
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Llewa/v5/lockscreen/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 139
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 144
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 149
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getThread()Llewa/laml/RenderThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Llewa/laml/RenderThread;->setPausedSafety(Z)V

    .line 150
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

    invoke-virtual {v0}, Llewa/v5/lockscreen/FancyLockScreenView;->onResume()V

    .line 151
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Llewa/v5/lockscreen/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 152
    iput-boolean v2, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->isPaused:Z

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mWakeStartTime:J

    .line 154
    return-void
.end method

.method public pokeWakelock()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 199
    return-void
.end method

.method public rebindView()V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mRootHolder:Llewa/v5/lockscreen/activity/SimpleRootHolder;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/SimpleRootHolder;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Llewa/v5/lockscreen/LockScreenRoot;->setUnlockerCallback(Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;)V

    .line 169
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyLockScreen;->mLockscreenView:Llewa/v5/lockscreen/FancyLockScreenView;

    invoke-virtual {v0}, Llewa/v5/lockscreen/FancyLockScreenView;->rebindRoot()V

    .line 170
    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "delay"

    .prologue
    .line 173
    new-instance v0, Llewa/v5/lockscreen/activity/FancyLockScreen$1;

    invoke-direct {v0, p0, p1}, Llewa/v5/lockscreen/activity/FancyLockScreen$1;-><init>(Llewa/v5/lockscreen/activity/FancyLockScreen;Landroid/content/Intent;)V

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Llewa/v5/lockscreen/activity/FancyLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    const-string v0, "FancyLockScreen"

    const-string v1, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Llewa/v5/lockscreen/activity/FancyLockScreen;->sTotalWakenTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Llewa/v5/lockscreen/activity/FancyLockScreen;->sStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method
