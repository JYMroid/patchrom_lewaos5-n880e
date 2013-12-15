.class final Ltms/ev;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# instance fields
.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_call"

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ev;->o:I

    const-string v0, "TRANSACTION_dial"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ev;->p:I

    const-string v0, "TRANSACTION_getCellLocation"

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ev;->q:I

    const-string v0, "TRANSACTION_getNeighboringCellInfo"

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ev;->r:I

    invoke-virtual {p0}, Ltms/ev;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltms/af;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "mApp"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltms/ez;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected execTransactForOwn(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->execTransactForOwn(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method protected getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Ltms/ev;->o:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/ev;->p:I

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Ltms/ev;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    iput v3, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    aput-object v1, v2, v3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Ltms/ev;->q:I

    if-eq p1, v1, :cond_3

    iget v1, p0, Ltms/ev;->r:I

    if-ne p1, v1, :cond_1

    :cond_3
    new-instance v1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    iget v0, p0, Ltms/ev;->q:I

    if-ne p1, v0, :cond_4

    const/16 v0, 0xa

    :goto_1
    iput v0, v1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    goto :goto_1
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    return-object v0
.end method

.method protected onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p0, Ltms/ev;->o:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Ltms/ev;->p:I

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v0, p0, Ltms/ev;->q:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Ltms/ev;->r:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0
.end method
