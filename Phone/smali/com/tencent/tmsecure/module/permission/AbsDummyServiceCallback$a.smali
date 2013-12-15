.class final Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback$a;->a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback$a;->a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;->onHandleAslynRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
