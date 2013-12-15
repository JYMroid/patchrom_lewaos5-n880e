.class Ltms/dp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# instance fields
.field final synthetic a:Ltms/do;


# direct methods
.method constructor <init>(Ltms/do;)V
    .locals 0

    iput-object p1, p0, Ltms/dp;->a:Ltms/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 1

    iget-object v0, p0, Ltms/dp;->a:Ltms/do;

    invoke-static {v0}, Ltms/do;->a(Ltms/do;)I

    return-void
.end method
