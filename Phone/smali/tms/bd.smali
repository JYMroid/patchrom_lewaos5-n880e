.class Ltms/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/bj;


# instance fields
.field private a:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ltms/bd;->a:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/PhoneStateListener;I)V
    .locals 1

    iget-object v0, p0, Ltms/bd;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/bd;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
