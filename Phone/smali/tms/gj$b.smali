.class final Ltms/gj$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/gj$b;->a:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method static synthetic a(Ltms/gj$b;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 1

    iget-object v0, p0, Ltms/gj$b;->a:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Ltms/gj$b;

    if-eqz v0, :cond_0

    check-cast p1, Ltms/gj$b;

    iget-object v0, p0, Ltms/gj$b;->a:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Ltms/gj$b;->a:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ltms/gk;

    invoke-direct {v0, p0, p1}, Ltms/gk;-><init>(Ltms/gj$b;Ljava/lang/String;)V

    invoke-virtual {v0}, Ltms/gk;->start()V

    return-void
.end method

.method public onPackageReinstall(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ltms/gm;

    invoke-direct {v0, p0, p1}, Ltms/gm;-><init>(Ltms/gj$b;Ljava/lang/String;)V

    invoke-virtual {v0}, Ltms/gm;->start()V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ltms/gl;

    invoke-direct {v0, p0, p1}, Ltms/gl;-><init>(Ltms/gj$b;Ljava/lang/String;)V

    invoke-virtual {v0}, Ltms/gl;->start()V

    return-void
.end method
