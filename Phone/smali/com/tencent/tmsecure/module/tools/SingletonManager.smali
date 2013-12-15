.class public final Lcom/tencent/tmsecure/module/tools/SingletonManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tencent/tmsecure/module/tools/ISingleton;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Ltms/gt;

    invoke-virtual {v0, p1}, Ltms/gt;->a(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gt;

    invoke-direct {v0}, Ltms/gt;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Ltms/gt;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Ltms/gt;

    invoke-virtual {v0, p1}, Ltms/gt;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Ltms/gt;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
