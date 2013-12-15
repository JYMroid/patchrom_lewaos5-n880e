.class public interface abstract Llewa/v5/lockscreen/LockScreenRoot$UnlockerCallback;
.super Ljava/lang/Object;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/v5/lockscreen/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnlockerCallback"
.end annotation


# virtual methods
.method public abstract findTask(Ljava/lang/String;)Llewa/laml/util/Task;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract haptic(I)V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isSoundEnable()Z
.end method

.method public abstract pokeWakelock()V
.end method

.method public abstract pokeWakelock(I)V
.end method

.method public abstract unlocked(Landroid/content/Intent;I)V
.end method
