.class public final Ltms/ai;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static final a:Ljava/lang/String; = "AntitheftManagerImpl"

.field private static final b:Ljava/lang/String; = "B1_msecure_android"

.field private static final c:Ljava/lang/String; = "C7tLv_Yaf"

.field private static final d:Ljava/lang/String; = "msecure_sdk_1.1"

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5

.field private static final k:I = -0x1


# instance fields
.field private l:Landroid/content/Context;

.field private m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

.field private n:Ltms/al;

.field private o:Lcom/tencent/lbsapi/QLBSService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ltms/ai;->a(Ljava/lang/StringBuilder;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Ltms/ai;->n:Ltms/al;

    invoke-virtual {v2}, Ltms/al;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltms/ai;->n:Ltms/al;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ltms/al;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltms/ai;->n:Ltms/al;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltms/al;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const-string v3, "#"

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#qqdeleteall#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "#qqdeleteall#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    return v0

    :cond_0
    const-string v4, "#qqlocate#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "#qqlocate#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "#qqlock#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "#qqlock#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "#qqpin#"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "#qqpin#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Ltms/ai;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/ai;->l:Landroid/content/Context;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Ltms/ai;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Ltms/ai;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Ltms/ai;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4GetPasswordSuccess()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4PasswordError()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4GetPasswordFailed()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Ltms/ai;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;
    .locals 1

    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Ltms/ai;->o:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/QLBSService;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/ai;->o:Lcom/tencent/lbsapi/QLBSService;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4DeletingData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltms/aj;

    invoke-direct {v1, p0, p1}, Ltms/aj;-><init>(Ltms/ai;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->getLockPhoneIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LockPhoneSuccess()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Ltms/ai;)V
    .locals 0

    invoke-direct {p0}, Ltms/ai;->b()V

    return-void
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "custom:3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Ltms/ai;->l:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AntitheftManagerImpl"

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Ltms/ai;)Lcom/tencent/lbsapi/QLBSService;
    .locals 1

    iget-object v0, p0, Ltms/ai;->o:Lcom/tencent/lbsapi/QLBSService;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4Locating()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Ltms/ai;->c()Z

    invoke-direct {p0}, Ltms/ai;->d()Z

    new-instance v0, Lcom/tencent/lbsapi/QLBSService;

    iget-object v1, p0, Ltms/ai;->l:Landroid/content/Context;

    new-instance v2, Ltms/ak;

    invoke-direct {v2, p0, p1}, Ltms/ak;-><init>(Ltms/ai;Ljava/lang/String;)V

    const-string v3, "B1_msecure_android"

    const-string v4, "C7tLv_Yaf"

    const-string v5, "msecure_sdk_1.1"

    invoke-direct/range {v0 .. v5}, Lcom/tencent/lbsapi/QLBSService;-><init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltms/ai;->o:Lcom/tencent/lbsapi/QLBSService;

    iget-object v0, p0, Ltms/ai;->o:Lcom/tencent/lbsapi/QLBSService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/lbsapi/QLBSService;->setGpsEnabled(Z)V

    iget-object v0, p0, Ltms/ai;->o:Lcom/tencent/lbsapi/QLBSService;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/lbsapi/QLBSService;->startLocation(I)V

    return-void
.end method

.method private d()Z
    .locals 3

    const/4 v1, 0x1

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ltms/al;
    .locals 1

    iget-object v0, p0, Ltms/ai;->n:Ltms/al;

    return-object v0
.end method

.method public a(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, p0, Ltms/ai;->n:Ltms/al;

    invoke-virtual {v2, v0}, Ltms/al;->a(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltms/ai;->n:Ltms/al;

    invoke-virtual {v2}, Ltms/al;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Ltms/ai;->m:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-direct {p0, p3}, Ltms/ai;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v2, p2}, Ltms/ai;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Ltms/ai;->l:Landroid/content/Context;

    new-instance v0, Ltms/al;

    invoke-direct {v0}, Ltms/al;-><init>()V

    iput-object v0, p0, Ltms/ai;->n:Ltms/al;

    return-void
.end method
