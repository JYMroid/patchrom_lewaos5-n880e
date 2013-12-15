.class final Ltms/fi$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/fi;

.field private b:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

.field private c:Landroid/content/res/AssetManager;

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ltms/fi;)V
    .locals 1

    iput-object p1, p0, Ltms/fi$a;->a:Ltms/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltms/fk;

    invoke-direct {v0, p0, p1}, Ltms/fk;-><init>(Ltms/fi$a;Ltms/fi;)V

    iput-object v0, p0, Ltms/fi$a;->b:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    invoke-static {p1}, Ltms/fi;->b(Ltms/fi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Ltms/fi$a;->c:Landroid/content/res/AssetManager;

    invoke-static {p1}, Ltms/fi;->b(Ltms/fi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ltms/fi$a;->d:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getAssertManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Ltms/fi$a;->c:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/fi$a;->a:Ltms/fi;

    invoke-static {v0}, Ltms/fi;->b(Ltms/fi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;
    .locals 1

    iget-object v0, p0, Ltms/fi$a;->b:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Ltms/fi$a;->d:Landroid/content/res/Resources;

    return-object v0
.end method
