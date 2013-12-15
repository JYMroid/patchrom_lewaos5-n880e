.class public final Ltms/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/aw$a;
    }
.end annotation


# instance fields
.field private a:Ltms/ag;

.field private b:Landroid/media/AudioManager;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ltms/aw;->c:Z

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ltms/aw;->d:Z

    invoke-static {}, Ltms/ag;->a()Ltms/ag;

    move-result-object v0

    iput-object v0, p0, Ltms/aw;->a:Ltms/ag;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ltms/aw;->b:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic a(Ltms/aw;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Ltms/aw;->b:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Ltms/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltms/aw;->c:Z

    return p1
.end method


# virtual methods
.method public varargs blockSms([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v2

    instance-of v0, v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method

.method public cancelMissCall()V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCancelMissCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/k;

    move-result-object v0

    invoke-interface {v0}, Ltms/k;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Ltms/aw;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/aw;->a:Ltms/ag;

    invoke-virtual {v0}, Ltms/ag;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isRootGot()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service call notification 2 s16 com.android.phone i32 1"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public disableRingVibration(I)V
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Ltms/aw;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/aw;->c:Z

    iget-object v0, p0, Ltms/aw;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iget-object v0, p0, Ltms/aw;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    if-eqz v2, :cond_1

    iget-object v3, p0, Ltms/aw;->b:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Ltms/aw;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    :goto_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ltms/aw$a;

    invoke-direct {v3, p0, v2, v0, p1}, Ltms/aw$a;-><init>(Ltms/aw;III)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public hangup()V
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltms/aw;->disableRingVibration(I)V

    iget-object v0, p0, Ltms/aw;->a:Ltms/ag;

    invoke-virtual {v0}, Ltms/ag;->c()Z

    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Ltms/ax;

    invoke-direct {v1, p0}, Ltms/ax;-><init>(Ltms/aw;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public varargs unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
