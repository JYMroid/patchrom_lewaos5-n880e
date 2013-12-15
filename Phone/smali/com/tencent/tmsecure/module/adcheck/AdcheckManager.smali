.class public final Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ah;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIsAd(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    invoke-virtual {v0, p1}, Ltms/ah;->a(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public clear(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    invoke-virtual {v0, p1}, Ltms/ah;->b(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z

    move-result v0

    return v0
.end method

.method public clear(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    invoke-virtual {v0, p1}, Ltms/ah;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public findAllNotificationInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    invoke-virtual {v0}, Ltms/ah;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ah;

    invoke-direct {v0}, Ltms/ah;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    invoke-virtual {v0, p1}, Ltms/ah;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Ltms/ah;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
