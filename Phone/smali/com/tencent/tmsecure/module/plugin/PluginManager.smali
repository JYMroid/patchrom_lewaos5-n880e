.class public final Lcom/tencent/tmsecure/module/plugin/PluginManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field private a:Ltms/fi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginDatabase(Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;)Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->a(Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;)Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getAllPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/plugin/PluginEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {v0}, Ltms/fi;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPluginControler()Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {v0}, Ltms/fi;->a()Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;

    move-result-object v0

    return-object v0
.end method

.method public getPluginEntityByKey(I)Lcom/tencent/tmsecure/module/plugin/PluginEntity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->a(I)Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/fi;

    invoke-direct {v0}, Ltms/fi;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/plugin/PluginManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setPluginControler(Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->a(Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;)V

    return-void
.end method
