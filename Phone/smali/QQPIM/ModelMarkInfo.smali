.class public final LQQPIM/ModelMarkInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_marks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;"
        }
    .end annotation
.end field

.field static cache_mobile:LQQPIM/Mobile;


# instance fields
.field public mark:I

.field public marks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;"
        }
    .end annotation
.end field

.field public mobile:LQQPIM/Mobile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/ModelMarkInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ModelMarkInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    iput-object v0, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/ModelMarkInfo;->mark:I

    iget-object v0, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    invoke-virtual {p0, v0}, LQQPIM/ModelMarkInfo;->setMobile(LQQPIM/Mobile;)V

    iget-object v0, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/ModelMarkInfo;->setMarks(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/ModelMarkInfo;->mark:I

    invoke-virtual {p0, v0}, LQQPIM/ModelMarkInfo;->setMark(I)V

    return-void
.end method

.method public constructor <init>(LQQPIM/Mobile;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/Mobile;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    iput-object v0, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/ModelMarkInfo;->mark:I

    invoke-virtual {p0, p1}, LQQPIM/ModelMarkInfo;->setMobile(LQQPIM/Mobile;)V

    invoke-virtual {p0, p2}, LQQPIM/ModelMarkInfo;->setMarks(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LQQPIM/ModelMarkInfo;->setMark(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ModelMarkInfo"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/ModelMarkInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    const-string v2, "marks"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ModelMarkInfo;->mark:I

    const-string v2, "mark"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/ModelMarkInfo;

    iget-object v1, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    iget-object v2, p1, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ModelMarkInfo;->mark:I

    iget v2, p1, LQQPIM/ModelMarkInfo;->mark:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ModelMarkInfo"

    return-object v0
.end method

.method public getMark()I
    .locals 1

    iget v0, p0, LQQPIM/ModelMarkInfo;->mark:I

    return v0
.end method

.method public getMarks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMobile()LQQPIM/Mobile;
    .locals 1

    iget-object v0, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LQQPIM/ModelMarkInfo;->cache_mobile:LQQPIM/Mobile;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/Mobile;

    invoke-direct {v0}, LQQPIM/Mobile;-><init>()V

    sput-object v0, LQQPIM/ModelMarkInfo;->cache_mobile:LQQPIM/Mobile;

    :cond_0
    sget-object v0, LQQPIM/ModelMarkInfo;->cache_mobile:LQQPIM/Mobile;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/Mobile;

    invoke-virtual {p0, v0}, LQQPIM/ModelMarkInfo;->setMobile(LQQPIM/Mobile;)V

    sget-object v0, LQQPIM/ModelMarkInfo;->cache_marks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/ModelMarkInfo;->cache_marks:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/Mark;

    invoke-direct {v0}, LQQPIM/Mark;-><init>()V

    sget-object v1, LQQPIM/ModelMarkInfo;->cache_marks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/ModelMarkInfo;->cache_marks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/ModelMarkInfo;->setMarks(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/ModelMarkInfo;->mark:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/ModelMarkInfo;->setMark(I)V

    return-void
.end method

.method public setMark(I)V
    .locals 0

    iput p1, p0, LQQPIM/ModelMarkInfo;->mark:I

    return-void
.end method

.method public setMarks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    return-void
.end method

.method public setMobile(LQQPIM/Mobile;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/ModelMarkInfo;->mobile:LQQPIM/Mobile;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/ModelMarkInfo;->marks:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LQQPIM/ModelMarkInfo;->mark:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
