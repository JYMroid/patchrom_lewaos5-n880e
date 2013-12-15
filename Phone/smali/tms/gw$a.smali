.class Ltms/gw$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field final synthetic c:Ltms/gw;


# direct methods
.method private constructor <init>(Ltms/gw;)V
    .locals 0

    iput-object p1, p0, Ltms/gw$a;->c:Ltms/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/gw;Ltms/gw$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/gw$a;-><init>(Ltms/gw;)V

    return-void
.end method
