.class final Ltms/em;
.super Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;


# static fields
.field private static o:I

.field private static p:I

.field private static q:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    const-string v0, "android.app.INotificationManager$Stub"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "TRANSACTION_enqueueNotificationWithTag"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltms/em;->o:I

    const-string v0, "com.android.internal.R$id"

    invoke-static {v0}, Ltms/ae;->a(Ljava/lang/String;)Z

    const-string v0, "title"

    invoke-static {v0, v2}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltms/em;->p:I

    const-string v0, "text"

    invoke-static {v0, v2}, Ltms/ae;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltms/em;->q:I

    const-string v0, "notify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R.id.title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ltms/em;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " R.id.text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ltms/em;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "notify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Ltms/em;->o:I

    if-ne p1, v0, :cond_1

    new-instance v7, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v7}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    invoke-static {}, Ltms/em;->getCallingPid()I

    move-result v0

    iput v0, v7, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mPid:I

    invoke-static {}, Ltms/em;->getCallingUid()I

    move-result v0

    iput v0, v7, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    const/16 v0, 0xe

    iput v0, v7, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {p0}, Ltms/em;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    const-class v0, Landroid/app/Notification;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Ltms/ez;->d()Landroid/content/Context;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-eqz v0, :cond_4

    iget-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    sget v6, Ltms/em;->q:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_4

    sget v6, Ltms/em;->p:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_4

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v1, Ltms/em;->p:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_0
    sget v1, Ltms/em;->q:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget v3, v0, Landroid/app/Notification;->number:I

    iget-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move v12, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v12

    :goto_3
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    iput-object v4, v7, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    iput-object v4, v7, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo2:[I

    const-string v0, "notify"

    const-string v4, "pkg: %s, contentTitle: %s, contentText: %s, tickerText: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v5, v6

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_1

    :cond_4
    move v0, v1

    move-object v1, v4

    goto :goto_3
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "notification"

    return-object v0
.end method

.method protected onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget v0, Ltms/em;->o:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
