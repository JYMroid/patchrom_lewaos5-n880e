.class Ltms/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ltms/ay$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltms/ay$c;


# direct methods
.method constructor <init>(Ltms/ay$c;)V
    .locals 0

    iput-object p1, p0, Ltms/bc;->a:Ltms/ay$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltms/ay$d;Ltms/ay$d;)I
    .locals 2

    iget v0, p1, Ltms/ay$d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Ltms/ay$d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ltms/ay$d;

    check-cast p2, Ltms/ay$d;

    invoke-virtual {p0, p1, p2}, Ltms/bc;->a(Ltms/ay$d;Ltms/ay$d;)I

    move-result v0

    return v0
.end method
