.class Lcom/soso/t9/PhoneSearcher$ListSizeComparator;
.super Ljava/lang/Object;
.source "PhoneSearcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soso/t9/PhoneSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soso/t9/PhoneSearcher;


# direct methods
.method private constructor <init>(Lcom/soso/t9/PhoneSearcher;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/soso/t9/PhoneSearcher$ListSizeComparator;->this$0:Lcom/soso/t9/PhoneSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/soso/t9/PhoneSearcher;Lcom/soso/t9/PhoneSearcher$ListSizeComparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/soso/t9/PhoneSearcher$ListSizeComparator;-><init>(Lcom/soso/t9/PhoneSearcher;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/soso/t9/PhoneSearcher$ListSizeComparator;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
