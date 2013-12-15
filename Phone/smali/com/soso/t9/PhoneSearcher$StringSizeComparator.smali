.class Lcom/soso/t9/PhoneSearcher$StringSizeComparator;
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
    name = "StringSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/soso/t9/IndexTerm;",
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
    .line 198
    iput-object p1, p0, Lcom/soso/t9/PhoneSearcher$StringSizeComparator;->this$0:Lcom/soso/t9/PhoneSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/soso/t9/PhoneSearcher;Lcom/soso/t9/PhoneSearcher$StringSizeComparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/soso/t9/PhoneSearcher$StringSizeComparator;-><init>(Lcom/soso/t9/PhoneSearcher;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/soso/t9/IndexTerm;Lcom/soso/t9/IndexTerm;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 202
    iget-object v0, p1, Lcom/soso/t9/IndexTerm;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lcom/soso/t9/IndexTerm;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/soso/t9/IndexTerm;

    check-cast p2, Lcom/soso/t9/IndexTerm;

    invoke-virtual {p0, p1, p2}, Lcom/soso/t9/PhoneSearcher$StringSizeComparator;->compare(Lcom/soso/t9/IndexTerm;Lcom/soso/t9/IndexTerm;)I

    move-result v0

    return v0
.end method
