.class public Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
.super Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/UnlockerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPoint"
.end annotation


# instance fields
.field private mIntentWrapper:Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;

.field private mLockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 931
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->mIntentWrapper:Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->mIntentWrapper:Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 935
    :cond_0
    return-object v0
.end method

.method public getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->mLockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    return-object v0
.end method

.method public setIntent(Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;)V
    .locals 0
    .parameter "intentWrapper"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->mIntentWrapper:Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;

    .line 940
    return-void
.end method

.method public setLockPath(Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 943
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->mLockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    .line 944
    return-void
.end method
