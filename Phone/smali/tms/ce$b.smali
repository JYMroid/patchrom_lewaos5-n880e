.class final Ltms/ce$b;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ltms/ce;

.field private b:Lcom/motorola/android/telephony/SecondaryTelephonyManager;


# direct methods
.method public constructor <init>(Ltms/ce;)V
    .locals 2

    iput-object p1, p0, Ltms/ce$b;->a:Ltms/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ltms/ce;->b(Ltms/ce;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ltms/ce;->a(Ltms/ce;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Ltms/ce$b;->b:Lcom/motorola/android/telephony/SecondaryTelephonyManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/PhoneStateListener;I)V
    .locals 1

    iget-object v0, p0, Ltms/ce$b;->b:Lcom/motorola/android/telephony/SecondaryTelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/ce$b;->b:Lcom/motorola/android/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/SecondaryTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
