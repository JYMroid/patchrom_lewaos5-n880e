.class public Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;
.super Landroid/widget/FrameLayout;
.source "HotwordLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MmsContent;,
        Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$SmsContent;,
        Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final ACTION_SMS_UNREAD_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.SMS_UNREAD_UPDATED"

.field private static final ACTION_WORD_LIST_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.WORD_LIST_UPDATED"

.field private static final MSG_BATTERY_UPDATE:I = 0x67

.field private static final MSG_SMS_UNREAD_UPDATED:I = 0x65

.field private static final MSG_WORD_LIST_UPDATED:I = 0x66

.field private static final TAG:Ljava/lang/String; = "HotwordKeyguardView"

.field private static mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

.field static final mHandler:Landroid/os/Handler;

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private static mReceiver:Landroid/content/BroadcastReceiver;

.field private static mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mMmsObserver:Landroid/database/ContentObserver;

.field private mSmsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$1;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$1;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$2;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$2;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v5, 0x1

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 163
    new-instance v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$SmsContent;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$SmsContent;-><init>(Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    .line 164
    new-instance v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MmsContent;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MmsContent;-><init>(Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    .line 165
    sput-object p3, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 167
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090039

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    const v1, 0x1020275

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    sput-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    .line 169
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    new-instance v2, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v2, v3, v4}, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 170
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 171
    const v1, 0x102027a

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    sput-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    .line 172
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    sget-object v2, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setWordListGallery(Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;)V

    .line 173
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 174
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    sget-object v2, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setVibrateEnabled(Z)V

    .line 177
    :cond_0
    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->setFocusable(Z)V

    .line 178
    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->setFocusableInTouchMode(Z)V

    .line 179
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->setDescendantFocusability(I)V

    .line 180
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->active(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method static synthetic access$000()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    return-object v0
.end method

.method static synthetic access$100()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public getGallery()Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    return-object v0
.end method

.method public getTargetHandlePanel()Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    return-object v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 234
    const-string v1, "HotwordKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause,mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 246
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HotwordKeyguardView"

    const-string v2, "unregister mms sms obersver fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "com.baidu.keyguard.internal.SMS_UNREAD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v3, "com.baidu.keyguard.internal.WORD_LIST_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    const-string v3, "HotwordKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume,mContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mReceiver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/internal/keyguard/hotword/WordList;->init(Landroid/content/Context;)V

    .line 258
    invoke-static {v6}, Lcom/baidu/internal/keyguard/hotword/WordList;->updateWordList(Z)V

    .line 259
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    sget-object v3, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v3, v6}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setVisibility(I)V

    .line 266
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.baidu.keyguard.internal.SMS_UNREAD_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 262
    :cond_0
    sget-object v3, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setVisibility(I)V

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HotwordKeyguardView"

    const-string v4, "register mms sms obersver fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
