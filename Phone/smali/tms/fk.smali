.class Ltms/fk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Ltms/fi;

.field final synthetic c:Ltms/fi$a;


# direct methods
.method constructor <init>(Ltms/fi$a;Ltms/fi;)V
    .locals 1

    iput-object p1, p0, Ltms/fk;->c:Ltms/fi$a;

    iput-object p2, p0, Ltms/fk;->b:Ltms/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ltms/fk;->c:Ltms/fi$a;

    iget-object v0, v0, Ltms/fi$a;->a:Ltms/fi;

    invoke-static {v0}, Ltms/fi;->b(Ltms/fi;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ltms/fk;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ltms/fk;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ltms/fk;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
