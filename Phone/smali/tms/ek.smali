.class final Ltms/ek;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# instance fields
.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    const-string v0, "android.location.ILocationManager$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_requestLocationUpdates"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ek;->o:I

    const-string v0, "TRANSACTION_requestLocationUpdatesPI"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ek;->p:I

    const-string v0, "TRANSACTION_getLastKnownLocation"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ek;->q:I

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

    iget v1, p0, Ltms/ek;->o:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/ek;->p:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Ltms/ek;->q:I

    if-ne p1, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    :cond_1
    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

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

    iget v0, p0, Ltms/ek;->o:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Ltms/ek;->p:I

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v0, p0, Ltms/ek;->q:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
