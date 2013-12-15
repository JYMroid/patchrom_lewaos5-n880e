.class final Lcom/tencent/tmsecure/common/TMSService$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/common/TMSService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/common/TMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/common/TMSService$b;->a:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/common/TMSService$b;->a:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->setForeground(Z)V

    return-void
.end method
