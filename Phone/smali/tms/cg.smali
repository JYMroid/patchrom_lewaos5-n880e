.class final Ltms/cg;
.super Ltms/be;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/be;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltms/cg;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ltms/bj;
    .locals 2

    invoke-super {p0, p1}, Ltms/be;->a(Ljava/lang/String;)Ltms/bj;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ltms/ce;

    iget-object v1, p0, Ltms/cg;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ltms/ce;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
