.class Ltms/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# instance fields
.field final synthetic a:Ltms/ap;


# direct methods
.method constructor <init>(Ltms/ap;)V
    .locals 0

    iput-object p1, p0, Ltms/aq;->a:Ltms/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 2

    iget-object v0, p0, Ltms/aq;->a:Ltms/ap;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-static {v0, v1}, Ltms/ap;->a(Ltms/ap;LQQPIM/SoftListType;)V

    return-void
.end method
