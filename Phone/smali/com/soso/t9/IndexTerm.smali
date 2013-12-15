.class Lcom/soso/t9/IndexTerm;
.super Ljava/lang/Object;
.source "Indexer.java"


# instance fields
.field phone:Lcom/soso/t9/Phone;

.field phoneNumber:Ljava/lang/String;

.field positions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/soso/t9/IndexTerm;->phone:Lcom/soso/t9/Phone;

    invoke-virtual {v0}, Lcom/soso/t9/Phone;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/soso/t9/IndexTerm;

    .end local p1
    iget-object v1, p1, Lcom/soso/t9/IndexTerm;->phone:Lcom/soso/t9/Phone;

    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/soso/t9/IndexTerm;->phone:Lcom/soso/t9/Phone;

    invoke-virtual {v0}, Lcom/soso/t9/Phone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soso/t9/IndexTerm;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method
