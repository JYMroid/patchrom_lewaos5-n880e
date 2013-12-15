.class public Llewa/v5/lockscreen/UnlockerScreenElement;
.super Llewa/laml/elements/AdvancedSlider;
.source "UnlockerScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_UnlockerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Unlocker"


# instance fields
.field private mAlwaysShow:Z

.field private mDelay:I

.field private mNoUnlock:Z

.field private mUnlockingHide:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/v5/lockscreen/LockScreenRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 31
    const-string v0, "alwaysShow"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mAlwaysShow:Z

    .line 32
    const-string v0, "noUnlock"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mNoUnlock:Z

    .line 33
    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mDelay:I

    .line 34
    return-void
.end method

.method private getRoot()Llewa/v5/lockscreen/LockScreenRoot;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    check-cast v0, Llewa/v5/lockscreen/LockScreenRoot;

    return-object v0
.end method


# virtual methods
.method public endUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 41
    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    .line 43
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider;->finish()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    .line 48
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider;->onCancel()V

    .line 56
    invoke-direct {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Llewa/v5/lockscreen/LockScreenRoot;->endUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V

    .line 57
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 61
    iget-boolean v1, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mNoUnlock:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 62
    invoke-direct {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v1

    invoke-virtual {v1}, Llewa/v5/lockscreen/LockScreenRoot;->pokeWakelock()V

    .line 63
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-direct {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v1

    invoke-virtual {v1, p0}, Llewa/v5/lockscreen/LockScreenRoot;->endUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V

    .line 67
    :try_start_0
    invoke-direct {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v1

    iget v2, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mDelay:I

    invoke-virtual {v1, p2, v2}, Llewa/v5/lockscreen/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen_UnlockerScreenElement"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider;->onStart()V

    .line 76
    invoke-direct {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Llewa/v5/lockscreen/LockScreenRoot;->startUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V

    .line 77
    invoke-direct {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->getRoot()Llewa/v5/lockscreen/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Llewa/v5/lockscreen/LockScreenRoot;->pokeWakelock()V

    .line 78
    return-void
.end method

.method public startUnlockMoving(Llewa/v5/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 81
    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/v5/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    .line 83
    invoke-virtual {p0}, Llewa/v5/lockscreen/UnlockerScreenElement;->resetInner()V

    .line 85
    :cond_0
    return-void
.end method
