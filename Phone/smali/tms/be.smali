.class Ltms/be;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/be;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ltms/bj;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/be;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    new-instance v0, Ltms/bd;

    iget-object v1, p0, Ltms/be;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ltms/bd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
