.class final Ltms/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/bj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/ce$b;,
        Ltms/ce$a;
    }
.end annotation


# instance fields
.field private a:Ltms/bj;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/ce;->b:Landroid/content/Context;

    iput-object p2, p0, Ltms/ce;->c:Ljava/lang/String;

    iget-object v0, p0, Ltms/ce;->b:Landroid/content/Context;

    iget-object v1, p0, Ltms/ce;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-eqz v1, :cond_1

    new-instance v0, Ltms/ce$a;

    invoke-direct {v0, p0}, Ltms/ce$a;-><init>(Ltms/ce;)V

    iput-object v0, p0, Ltms/ce;->a:Ltms/bj;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, v0, Lcom/motorola/android/telephony/SecondaryTelephonyManager;

    if-eqz v0, :cond_0

    new-instance v0, Ltms/ce$b;

    invoke-direct {v0, p0}, Ltms/ce$b;-><init>(Ltms/ce;)V

    iput-object v0, p0, Ltms/ce;->a:Ltms/bj;

    goto :goto_0
.end method

.method static synthetic a(Ltms/ce;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/ce;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ltms/ce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/ce;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/telephony/PhoneStateListener;I)V
    .locals 1

    iget-object v0, p0, Ltms/ce;->a:Ltms/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/ce;->a:Ltms/bj;

    invoke-interface {v0, p1, p2}, Ltms/bj;->a(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
