.class final Ltms/eh;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# instance fields
.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>()V

    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "GET_CONTENT_PROVIDER_TRANSACTION"

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/eh;->o:I

    const-string v0, "START_ACTIVITY_TRANSACTION"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/eh;->p:I

    invoke-virtual {p0}, Ltms/eh;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltms/af;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "mContext"

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
.method protected getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Ltms/eh;->p:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ltms/eh;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    :goto_0
    move-object v1, v0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    iget v0, p0, Ltms/eh;->o:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ltms/eh;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v0, 0x2

    :goto_2
    if-eq v0, v2, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    iput v0, v1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    goto :goto_1

    :cond_4
    const-string v3, "call_log"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const-string v3, "sms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "mms-sms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    return-object v0
.end method

.method protected onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Ltms/eh;->p:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Ltms/eh;->o:I

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Ltms/eh;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0}, Ltms/eh;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Ltms/eh;->getPermissionTable()Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->getDummyDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p3, p4}, Ltms/eh;->innerOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0
.end method
