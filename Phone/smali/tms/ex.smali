.class final Ltms/ex;
.super Ljava/lang/Object;


# static fields
.field private static a:Ltms/ex;


# instance fields
.field private b:I

.field private c:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ltms/ex;->b:I

    const-string v0, "phone"

    invoke-static {v0}, Ltms/af;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltms/ex;->c:Landroid/os/IBinder;

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_isIdle"

    iget v1, p0, Ltms/ex;->b:I

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltms/ex;->b:I

    return-void
.end method

.method public static b()Ltms/ex;
    .locals 1

    sget-object v0, Ltms/ex;->a:Ltms/ex;

    if-nez v0, :cond_0

    new-instance v0, Ltms/ex;

    invoke-direct {v0}, Ltms/ex;-><init>()V

    sput-object v0, Ltms/ex;->a:Ltms/ex;

    :cond_0
    sget-object v0, Ltms/ex;->a:Ltms/ex;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    iget-object v1, p0, Ltms/ex;->c:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/ex;->c:Landroid/os/IBinder;

    iget v4, p0, Ltms/ex;->b:I

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
