.class Ltms/cf;
.super Lcom/motorola/telephony/SecondaryPhoneStateListener;


# instance fields
.field final synthetic a:Landroid/telephony/PhoneStateListener;

.field final synthetic b:Ltms/ce$a;


# direct methods
.method constructor <init>(Ltms/ce$a;Landroid/telephony/PhoneStateListener;)V
    .locals 0

    iput-object p1, p0, Ltms/cf;->b:Ltms/ce$a;

    iput-object p2, p0, Ltms/cf;->a:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/motorola/telephony/SecondaryPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ltms/cf;->a:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
