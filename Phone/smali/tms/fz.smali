.class final Ltms/fz;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "android.view.IWindowManager"

.field private static final b:Ljava/lang/String; = "android.view.IWindowManager$Stub"

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x2b

    const/16 v2, 0x29

    sput v3, Ltms/fz;->c:I

    sput v2, Ltms/fz;->d:I

    :try_start_0
    const-string v0, "android.view.IWindowManager$Stub"

    const-string v1, "TRANSACTION_setAnimationScales"

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Ltms/fz;->c:I

    const-string v0, "android.view.IWindowManager$Stub"

    const-string v1, "TRANSACTION_getAnimationScales"

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Ltms/fz;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput v3, Ltms/fz;->c:I

    sput v2, Ltms/fz;->d:I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Landroid/os/IBinder;
    .locals 1

    const-string v0, "window"

    invoke-static {v0}, Ltms/af;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([F)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-direct {p0}, Ltms/fz;->b()Landroid/os/IBinder;

    move-result-object v0

    sget v3, Ltms/fz;->c:I

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a()[F
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-direct {p0}, Ltms/fz;->b()Landroid/os/IBinder;

    move-result-object v1

    sget v4, Ltms/fz;->d:I

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->createFloatArray()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
