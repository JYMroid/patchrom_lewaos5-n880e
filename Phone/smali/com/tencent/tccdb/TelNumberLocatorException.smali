.class public Lcom/tencent/tccdb/TelNumberLocatorException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x1cdd146d27c7c27dL


# instance fields
.field private error:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelNumberLocator error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/tccdb/TelNumberLocatorException;->error:I

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocatorException;->error:I

    return v0
.end method
