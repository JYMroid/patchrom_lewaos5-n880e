.class public Llewa/v5/lockscreen/LockScreenRoot;
.super Llewa/laml/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Llewa/laml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;,
        Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field public static final SMS_BODY_PREVIEW:Ljava/lang/String; = "sms_body_preview"


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

.field private mBatteryLevel:Llewa/laml/util/IndexedNumberVariable;

.field private mBatteryState:Llewa/laml/util/IndexedNumberVariable;

.field private mDisplayDesktop:Z

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private mInit:Z

.field private mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Llewa/laml/ScreenElementRoot;-><init>(Llewa/laml/ScreenContext;)V

    .line 55
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryState:Llewa/laml/util/IndexedNumberVariable;

    .line 56
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryLevel:Llewa/laml/util/IndexedNumberVariable;

    .line 57
    invoke-virtual {p0, p0}, Llewa/v5/lockscreen/LockScreenRoot;->setOnExternCommandListener(Llewa/laml/ScreenElementRoot$OnExternCommandListener;)V

    .line 58
    return-void
.end method

.method private endUnlockMoving(Llewa/laml/elements/ElementGroup;Llewa/v5/lockscreen/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 61
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1}, Llewa/laml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 63
    .local v0, e:Llewa/laml/elements/ScreenElement;
    instance-of v2, v0, Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 64
    check-cast v0, Llewa/laml/elements/ElementGroup;

    .end local v0           #e:Llewa/laml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Llewa/v5/lockscreen/LockScreenRoot;->endUnlockMoving(Llewa/laml/elements/ElementGroup;Llewa/v5/lockscreen/UnlockerScreenElement;)V

    goto :goto_0

    .line 65
    .restart local v0       #e:Llewa/laml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Llewa/v5/lockscreen/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 66
    check-cast v0, Llewa/v5/lockscreen/UnlockerScreenElement;

    .end local v0           #e:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Llewa/v5/lockscreen/UnlockerScreenElement;->endUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V

    goto :goto_0

    .line 70
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private startUnlockMoving(Llewa/laml/elements/ElementGroup;Llewa/v5/lockscreen/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 73
    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Llewa/laml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 75
    .local v0, e:Llewa/laml/elements/ScreenElement;
    instance-of v2, v0, Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 76
    check-cast v0, Llewa/laml/elements/ElementGroup;

    .end local v0           #e:Llewa/laml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Llewa/v5/lockscreen/LockScreenRoot;->startUnlockMoving(Llewa/laml/elements/ElementGroup;Llewa/v5/lockscreen/UnlockerScreenElement;)V

    goto :goto_0

    .line 77
    .restart local v0       #e:Llewa/laml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Llewa/v5/lockscreen/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 78
    check-cast v0, Llewa/v5/lockscreen/UnlockerScreenElement;

    .end local v0           #e:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Llewa/v5/lockscreen/UnlockerScreenElement;->startUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V

    goto :goto_0

    .line 82
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 85
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Llewa/v5/lockscreen/LockScreenRoot;->endUnlockMoving(Llewa/laml/elements/ElementGroup;Llewa/v5/lockscreen/UnlockerScreenElement;)V

    .line 86
    return-void
.end method

.method public findTask(Ljava/lang/String;)Llewa/laml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 89
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->findTask(Ljava/lang/String;)Llewa/laml/util/Task;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Llewa/laml/ScreenElementRoot;->finish()V

    .line 94
    iput-object v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mInit:Z

    .line 96
    iput-object v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    .line 97
    return-void
.end method

.method public haptic(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 100
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->haptic(I)V

    .line 101
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-super {p0}, Llewa/laml/ScreenElementRoot;->init()V

    .line 105
    iget-object v3, p0, Llewa/v5/lockscreen/LockScreenRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pref_key_enable_notification_body"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v3}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 107
    .local v1, showSmsBodySetting:Z
    :goto_0
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v3, "sms_body_preview"

    iget-object v4, p0, Llewa/v5/lockscreen/LockScreenRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v3, v4}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 109
    .local v0, showSms:Llewa/laml/util/IndexedNumberVariable;
    if-eqz v1, :cond_2

    const-wide/high16 v3, 0x3ff0

    :goto_1
    invoke-virtual {v0, v3, v4}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 110
    iput-boolean v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mInit:Z

    .line 111
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    iget-boolean v2, v2, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;->showBatteryInfo:Z

    iget-object v3, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    iget-boolean v3, v3, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;->pluggedIn:Z

    iget-object v4, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    iget v4, v4, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;->batteryLevel:I

    invoke-virtual {p0, v2, v3, v4}, Llewa/v5/lockscreen/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    .line 116
    :cond_0
    return-void

    .line 105
    .end local v0           #showSms:Llewa/laml/util/IndexedNumberVariable;
    .end local v1           #showSmsBodySetting:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    .restart local v0       #showSms:Llewa/laml/util/IndexedNumberVariable;
    .restart local v1       #showSmsBodySetting:Z
    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method protected onAddVariableUpdater(Llewa/laml/data/VariableUpdaterManager;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 123
    invoke-super {p0, p1}, Llewa/laml/ScreenElementRoot;->onAddVariableUpdater(Llewa/laml/data/VariableUpdaterManager;)V

    .line 124
    new-instance v0, Llewa/laml/data/BatteryVariableUpdater;

    iget-object v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mContext:Llewa/laml/ScreenContext;

    invoke-direct {v0, p1, v1}, Llewa/laml/data/BatteryVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Llewa/laml/ScreenContext;)V

    invoke-virtual {p1, v0}, Llewa/laml/data/VariableUpdaterManager;->add(Llewa/laml/data/VariableUpdater;)V

    .line 125
    new-instance v0, Llewa/laml/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Llewa/laml/data/VolumeVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Llewa/laml/data/VariableUpdaterManager;->add(Llewa/laml/data/VariableUpdater;)V

    .line 126
    return-void
.end method

.method public onButtonInteractive(Llewa/laml/elements/ButtonScreenElement;Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "e"
    .parameter "a"

    .prologue
    .line 129
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 130
    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 3
    .parameter "command"
    .parameter "numPara"
    .parameter "strPara"

    .prologue
    .line 256
    const-string v2, "unlock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 259
    .local v0, delay:I
    :goto_0
    if-eqz p3, :cond_3

    .line 260
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    if-gez v0, :cond_0

    .line 263
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const/4 v0, 0x0

    .line 269
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v0}, Llewa/v5/lockscreen/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V

    .line 271
    .end local v0           #delay:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 257
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0

    .line 267
    .restart local v0       #delay:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "root"

    .prologue
    .line 133
    invoke-super {p0, p1}, Llewa/laml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 136
    :cond_0
    const-string v0, "displayDesktop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mDisplayDesktop:Z

    .line 137
    const-string v0, "frameRateCharging"

    iget v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRateCharging:F

    .line 138
    const-string v0, "frameRateBatteryLow"

    iget v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 140
    const-string v0, "frameRateBatteryFull"

    iget v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 142
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-static {v0}, Llewa/v5/lockscreen/BuiltinVariableBinders;->fill(Llewa/laml/data/VariableBinderManager;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 6
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-boolean v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mInit:Z

    if-nez v2, :cond_1

    .line 149
    new-instance v2, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    invoke-direct {v2, p1, p2, p3}, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;-><init>(ZZI)V

    iput-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryInfo:Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryLevel:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 152
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 155
    if-eqz p1, :cond_4

    .line 156
    if-eqz p2, :cond_3

    .line 157
    const/16 v2, 0x64

    if-lt p3, v2, :cond_2

    .line 158
    const-string v1, "BatteryFull"

    .line 159
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x3

    .line 160
    .local v0, i:I
    iget v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRate:F

    .line 176
    :goto_1
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    .line 177
    iget v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Llewa/v5/lockscreen/LockScreenRoot;->requestFramerate(F)V

    .line 178
    invoke-virtual {p0}, Llewa/v5/lockscreen/LockScreenRoot;->requestUpdate()V

    .line 179
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mBatteryState:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 180
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    const-string v3, "BatteryFull"

    invoke-virtual {v2, v3, v5}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 181
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    const-string v3, "Charging"

    invoke-virtual {v2, v3, v5}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 182
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    const-string v3, "BatteryLow"

    invoke-virtual {v2, v3, v5}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 183
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    const-string v3, "Normal"

    invoke-virtual {v2, v3, v5}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 184
    iget-object v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    iput-object v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->curCategory:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 185
    const-string v2, "LockScreenRoot"

    iget-object v3, p0, Llewa/v5/lockscreen/LockScreenRoot;->curCategory:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v0           #i:I
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    const-string v1, "Charging"

    .line 163
    .restart local v1       #s:Ljava/lang/String;
    const/4 v0, 0x1

    .line 164
    .restart local v0       #i:I
    iget v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 167
    .end local v0           #i:I
    .end local v1           #s:Ljava/lang/String;
    :cond_3
    const-string v1, "BatteryLow"

    .line 168
    .restart local v1       #s:Ljava/lang/String;
    const/4 v0, 0x2

    .line 169
    .restart local v0       #i:I
    iget v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 172
    .end local v0           #i:I
    .end local v1           #s:Ljava/lang/String;
    :cond_4
    const-string v1, "Normal"

    .line 173
    .restart local v1       #s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 174
    .restart local v0       #i:I
    iget v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Llewa/v5/lockscreen/LockScreenRoot;->mFrameRate:F

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Llewa/laml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 202
    return-void
.end method

.method public setUnlockerCallback(Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;)V
    .locals 0
    .parameter "unlockerCallback"

    .prologue
    .line 205
    iput-object p1, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    .line 206
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 213
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Llewa/v5/lockscreen/LockScreenRoot;->startUnlockMoving(Llewa/laml/elements/ElementGroup;Llewa/v5/lockscreen/UnlockerScreenElement;)V

    .line 214
    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "delay"

    .prologue
    .line 217
    iget-object v0, p0, Llewa/v5/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1, p2}, Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method
