.class Ltms/by;
.super Ltms/bf$a;


# instance fields
.field final synthetic a:Ltms/bp$b;


# direct methods
.method constructor <init>(Ltms/bp$b;)V
    .locals 0

    iput-object p1, p0, Ltms/by;->a:Ltms/bp$b;

    invoke-direct {p0}, Ltms/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ltms/by;->a:Ltms/bp$b;

    invoke-static {v0, p0}, Ltms/bp$b;->a(Ltms/bp$b;Ltms/bf$a;)V

    return-void
.end method
