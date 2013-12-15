.class final Lcom/tencent/tmsecure/utils/ScriptHelper$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/utils/ScriptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "respond data is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Ltms/o;->b([B)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->a:I

    iget v0, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->a:I

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "respond data is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    const-string v1, "andysinguan"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
