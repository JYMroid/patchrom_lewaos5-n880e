.class Ltms/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/aw;


# direct methods
.method constructor <init>(Ltms/aw;)V
    .locals 0

    iput-object p1, p0, Ltms/ax;->a:Ltms/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ltms/ax;->a:Ltms/aw;

    invoke-virtual {v0}, Ltms/aw;->cancelMissCall()V

    return-void
.end method
