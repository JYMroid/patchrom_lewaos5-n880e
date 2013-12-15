.class final Ltms/ey;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# instance fields
.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_getDeviceId"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ey;->o:I

    const-string v0, "TRANSACTION_getSubscriberId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ey;->p:I

    const-string v0, "TRANSACTION_getIccSerialNumber"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ey;->q:I

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

    iget v1, p0, Ltms/ey;->o:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/ey;->q:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/ey;->p:I

    if-ne p1, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    iget v1, p0, Ltms/ey;->o:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x7

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Ltms/ey;->q:I

    if-ne p1, v1, :cond_3

    const/4 v1, 0x6

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    goto :goto_0

    :cond_3
    iget v1, p0, Ltms/ey;->p:I

    if-ne p1, v1, :cond_1

    const/16 v1, 0x8

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    goto :goto_0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "iphonesubinfo"

    return-object v0
.end method

.method protected onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const-string v0, "What are you fucking doing?"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
