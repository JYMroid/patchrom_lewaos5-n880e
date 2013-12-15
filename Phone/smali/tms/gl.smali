.class Ltms/gl;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ltms/gj$b;


# direct methods
.method constructor <init>(Ltms/gj$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/gl;->b:Ltms/gj$b;

    iput-object p2, p0, Ltms/gl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ltms/gl;->b:Ltms/gj$b;

    invoke-static {v0}, Ltms/gj$b;->a(Ltms/gj$b;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    move-result-object v0

    iget-object v1, p0, Ltms/gl;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method
