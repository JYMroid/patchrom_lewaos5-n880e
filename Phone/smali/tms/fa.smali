.class final Ltms/fa;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# instance fields
.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    const-string v0, "com.android.internal.telephony.ISms$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_sendData"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/fa;->o:I

    const-string v0, "TRANSACTION_sendText"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/fa;->p:I

    const-string v0, "TRANSACTION_sendMultipartText"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/fa;->q:I

    return-void
.end method


# virtual methods
.method protected getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Ltms/fa;->o:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/fa;->p:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/fa;->q:I

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ltms/fa;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    iput v3, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    iget v1, p0, Ltms/fa;->o:I

    if-ne p1, v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo3:[B

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Ltms/fa;->p:I

    if-ne p1, v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    :cond_3
    iget v1, p0, Ltms/fa;->q:I

    if-ne p1, v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "isms"

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

    const/4 v0, 0x1

    return v0
.end method
