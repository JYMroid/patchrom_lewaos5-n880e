.class public final LQQPIM/MySoftSimpleInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;


# instance fields
.field public official:I

.field public reportFeature:I

.field public softSimpleInfo:LQQPIM/SoftSimpleInfo;

.field public update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/MySoftSimpleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/MySoftSimpleInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    iget-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setReportFeature(I)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setOfficial(I)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setUpdate(I)V

    return-void
.end method

.method public constructor <init>(LQQPIM/SoftSimpleInfo;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    invoke-virtual {p0, p1}, LQQPIM/MySoftSimpleInfo;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    invoke-virtual {p0, p2}, LQQPIM/MySoftSimpleInfo;->setReportFeature(I)V

    invoke-virtual {p0, p3}, LQQPIM/MySoftSimpleInfo;->setOfficial(I)V

    invoke-virtual {p0, p4}, LQQPIM/MySoftSimpleInfo;->setUpdate(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MySoftSimpleInfo"

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

    sget-boolean v1, LQQPIM/MySoftSimpleInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    const-string v2, "softSimpleInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    const-string v2, "reportFeature"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    const-string v2, "official"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    const-string v2, "update"

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
    check-cast p1, LQQPIM/MySoftSimpleInfo;

    iget-object v1, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iget-object v2, p1, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iget v2, p1, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iget v2, p1, LQQPIM/MySoftSimpleInfo;->official:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    iget v2, p1, LQQPIM/MySoftSimpleInfo;->update:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MySoftSimpleInfo"

    return-object v0
.end method

.method public getOfficial()I
    .locals 1

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    return v0
.end method

.method public getReportFeature()I
    .locals 1

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    return v0
.end method

.method public getSoftSimpleInfo()LQQPIM/SoftSimpleInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    return-object v0
.end method

.method public getUpdate()I
    .locals 1

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return v0
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/MySoftSimpleInfo;->cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftSimpleInfo;

    invoke-direct {v0}, LQQPIM/SoftSimpleInfo;-><init>()V

    sput-object v0, LQQPIM/MySoftSimpleInfo;->cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;

    :cond_0
    sget-object v0, LQQPIM/MySoftSimpleInfo;->cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setReportFeature(I)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setOfficial(I)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/MySoftSimpleInfo;->setUpdate(I)V

    return-void
.end method

.method public setOfficial(I)V
    .locals 0

    iput p1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    return-void
.end method

.method public setReportFeature(I)V
    .locals 0

    iput p1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    return-void
.end method

.method public setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    return-void
.end method

.method public setUpdate(I)V
    .locals 0

    iput p1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
