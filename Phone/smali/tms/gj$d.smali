.class final Ltms/gj$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Ltms/gj;

.field private b:Ltms/gj$a;

.field private c:Ltms/gj$a;

.field private d:Ltms/gj$a;


# direct methods
.method private constructor <init>(Ltms/gj;)V
    .locals 1

    iput-object p1, p0, Ltms/gj$d;->a:Ltms/gj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ltms/gn;

    invoke-direct {v0, p0}, Ltms/gn;-><init>(Ltms/gj$d;)V

    iput-object v0, p0, Ltms/gj$d;->b:Ltms/gj$a;

    new-instance v0, Ltms/go;

    invoke-direct {v0, p0}, Ltms/go;-><init>(Ltms/gj$d;)V

    iput-object v0, p0, Ltms/gj$d;->c:Ltms/gj$a;

    new-instance v0, Ltms/gp;

    invoke-direct {v0, p0}, Ltms/gp;-><init>(Ltms/gj$d;)V

    iput-object v0, p0, Ltms/gj$d;->d:Ltms/gj$a;

    return-void
.end method

.method synthetic constructor <init>(Ltms/gj;Ltms/gj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/gj$d;-><init>(Ltms/gj;)V

    return-void
.end method

.method private a(Ltms/gj$a;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ltms/gq;

    invoke-direct {v0, p0, p1, p2}, Ltms/gq;-><init>(Ltms/gj$d;Ltms/gj$a;Ljava/lang/String;)V

    invoke-virtual {v0}, Ltms/gq;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/gj$d;->a:Ltms/gj;

    invoke-static {v1}, Ltms/gj;->b(Ltms/gj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ltms/gj$d;->a:Ltms/gj;

    invoke-static {v0}, Ltms/gj;->b(Ltms/gj;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_0

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/gj$d;->b:Ltms/gj$a;

    invoke-direct {p0, v1, v0}, Ltms/gj$d;->a(Ltms/gj$a;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/gj$d;->c:Ltms/gj$a;

    invoke-direct {p0, v1, v0}, Ltms/gj$d;->a(Ltms/gj$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/gj$d;->d:Ltms/gj$a;

    invoke-direct {p0, v1, v0}, Ltms/gj$d;->a(Ltms/gj$a;Ljava/lang/String;)V

    goto :goto_1
.end method
