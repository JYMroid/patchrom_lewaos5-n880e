.class final Ltms/ce$a;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/ce;

.field private b:Lcom/motorola/telephony/SecondaryTelephonyManager;

.field private c:Lcom/motorola/telephony/SecondaryPhoneStateListener;


# direct methods
.method public constructor <init>(Ltms/ce;)V
    .locals 2

    iput-object p1, p0, Ltms/ce$a;->a:Ltms/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ltms/ce;->b(Ltms/ce;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ltms/ce;->a(Ltms/ce;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Ltms/ce$a;->b:Lcom/motorola/telephony/SecondaryTelephonyManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/PhoneStateListener;I)V
    .locals 2

    iget-object v0, p0, Ltms/ce$a;->b:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/ce$a;->c:Lcom/motorola/telephony/SecondaryPhoneStateListener;

    if-nez v0, :cond_0

    new-instance v0, Ltms/cf;

    invoke-direct {v0, p0, p1}, Ltms/cf;-><init>(Ltms/ce$a;Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Ltms/ce$a;->c:Lcom/motorola/telephony/SecondaryPhoneStateListener;

    :cond_0
    iget-object v0, p0, Ltms/ce$a;->b:Lcom/motorola/telephony/SecondaryTelephonyManager;

    iget-object v1, p0, Ltms/ce$a;->c:Lcom/motorola/telephony/SecondaryPhoneStateListener;

    invoke-virtual {v0, v1, p2}, Lcom/motorola/telephony/SecondaryTelephonyManager;->listen(Lcom/motorola/telephony/SecondaryPhoneStateListener;I)V

    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/ce$a;->c:Lcom/motorola/telephony/SecondaryPhoneStateListener;

    :cond_1
    return-void
.end method
