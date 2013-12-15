.class public Lcom/android/phone/FilterService;
.super Lcom/tencent/tmsecure/common/TMSService;
.source "FilterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/tmsecure/common/TMSService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onCreate()V

    .line 13
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/common/TMSService;->onStart(Landroid/content/Intent;I)V

    .line 18
    return-void
.end method
