.class final Ltms/el;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# static fields
.field private static o:Ltms/el;


# instance fields
.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltms/el;->o:Ltms/el;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    const/4 v0, 0x4

    iput v0, p0, Ltms/el;->p:I

    return-void
.end method

.method public static a(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Ltms/el;->o:Ltms/el;

    if-nez v0, :cond_0

    new-instance v0, Ltms/el;

    invoke-direct {v0, p0}, Ltms/el;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    sput-object v0, Ltms/el;->o:Ltms/el;

    sget-object v0, Ltms/el;->o:Ltms/el;

    invoke-virtual {v0}, Ltms/el;->getServiceName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltms/el;->o:Ltms/el;

    invoke-static {v0, v1}, Ltms/af;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-static {}, Ltms/ex;->b()Ltms/ex;

    move-result-object v1

    invoke-virtual {v1}, Ltms/ex;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    invoke-static {}, Ltms/el;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mPid:I

    invoke-static {}, Ltms/el;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    const/16 v1, 0xd

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    :cond_0
    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "media.player"

    return-object v0
.end method

.method protected onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
