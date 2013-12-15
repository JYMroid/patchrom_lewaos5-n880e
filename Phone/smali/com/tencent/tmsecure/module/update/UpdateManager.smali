.class public final Lcom/tencent/tmsecure/module/update/UpdateManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0, p1, p2}, Ltms/gu;->a(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0}, Ltms/gu;->a()V

    return-void
.end method

.method public check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0, p1, p2}, Ltms/gu;->a(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    return-void
.end method

.method public getFileSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0}, Ltms/gu;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gu;

    invoke-direct {v0}, Ltms/gu;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0, p1}, Ltms/gu;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/update/UpdateManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public removeObserver(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0, p1}, Ltms/gu;->a(I)V

    return-void
.end method

.method public update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;",
            "Lcom/tencent/tmsecure/module/update/IUpdateListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gu;

    invoke-virtual {v0, p1, p2}, Ltms/gu;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    return-void
.end method
