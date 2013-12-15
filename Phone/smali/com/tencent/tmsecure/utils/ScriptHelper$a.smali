.class final Lcom/tencent/tmsecure/utils/ScriptHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/utils/ScriptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    array-length v0, v0

    iput v0, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:I

    const/16 v0, 0xc

    new-array v0, v0, [B

    iget v1, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->a:I

    invoke-static {v1}, Ltms/o;->a(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->b:I

    invoke-static {v1}, Ltms/o;->a(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:I

    invoke-static {v1}, Ltms/o;->a(I)[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const-string v0, "andysinguan"

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
