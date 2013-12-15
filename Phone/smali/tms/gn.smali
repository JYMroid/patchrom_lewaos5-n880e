.class Ltms/gn;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/gj$a;


# instance fields
.field final synthetic a:Ltms/gj$d;


# direct methods
.method constructor <init>(Ltms/gj$d;)V
    .locals 0

    iput-object p1, p0, Ltms/gn;->a:Ltms/gj$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ltms/gn;->a:Ltms/gj$d;

    iget-object v0, v0, Ltms/gj$d;->a:Ltms/gj;

    invoke-static {v0}, Ltms/gj;->a(Ltms/gj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltms/gj$b;

    invoke-virtual {v0, p1}, Ltms/gj$b;->onPackageAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
