.class abstract Ltms/as$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field protected c:Landroid/content/pm/ServiceInfo;

.field protected d:Lcom/tencent/tmsecure/common/ISDKClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltms/as$a;->c:Landroid/content/pm/ServiceInfo;

    return-void
.end method
