.class final Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "HotwordLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getUnreadMmsCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 124
    const/4 v7, 0x0

    .line 125
    .local v7, csr:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 127
    .local v6, count:I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "read=0 AND m_type=132 AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 129
    if-eqz v7, :cond_0

    .line 130
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    const-string v0, "HotwordKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMmsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v6

    .line 133
    :catch_0
    move-exception v8

    .line 134
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getUnreadSmsCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, csr:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 110
    .local v6, count:I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "read=0 AND type=1 AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 112
    if-eqz v7, :cond_0

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 114
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    const-string v0, "HotwordKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSmsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v6

    .line 116
    :catch_0
    move-exception v8

    .line 117
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v6, "HotwordKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    const-string v6, "status"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, status:I
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 92
    .local v4, plugged:I
    const-string v6, "level"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, level:I
    const-string v6, "health"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, health:I
    sget-object v6, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x67

    new-instance v8, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;

    invoke-direct {v8, v5, v2, v4, v1}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 96
    .local v3, msg:Landroid/os/Message;
    sget-object v6, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .end local v1           #health:I
    .end local v2           #level:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #plugged:I
    .end local v5           #status:I
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.baidu.keyguard.internal.SMS_UNREAD_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    :cond_2
    sget-object v6, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$2;->getUnreadSmsCount(Landroid/content/Context;)I

    move-result v8

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$2;->getUnreadMmsCount(Landroid/content/Context;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 101
    .restart local v3       #msg:Landroid/os/Message;
    sget-object v6, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 102
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    const-string v6, "com.baidu.keyguard.internal.WORD_LIST_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    sget-object v6, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    sget-object v7, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
