.class Ltms/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field final synthetic a:Ltms/dh;


# direct methods
.method constructor <init>(Ltms/dh;)V
    .locals 0

    iput-object p1, p0, Ltms/di;->a:Ltms/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Ltms/di;->a:Ltms/dh;

    invoke-virtual {v1, v0}, Ltms/dh;->a([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/di;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
