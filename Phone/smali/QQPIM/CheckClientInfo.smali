.class public final LQQPIM/CheckClientInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_connectType:I


# instance fields
.field public connectType:I

.field public engineVersion:I

.field public guid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public isRoot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/CheckClientInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/CheckClientInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    iput v1, p0, LQQPIM/CheckClientInfo;->connectType:I

    iput-boolean v1, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    iget v0, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setEngineVersion(I)V

    iget-object v0, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setImsi(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/CheckClientInfo;->connectType:I

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setConnectType(I)V

    iget-boolean v0, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setIsRoot(Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    iput v1, p0, LQQPIM/CheckClientInfo;->connectType:I

    iput-boolean v1, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    invoke-virtual {p0, p1}, LQQPIM/CheckClientInfo;->setEngineVersion(I)V

    invoke-virtual {p0, p2}, LQQPIM/CheckClientInfo;->setGuid(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/CheckClientInfo;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/CheckClientInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/CheckClientInfo;->setConnectType(I)V

    invoke-virtual {p0, p6}, LQQPIM/CheckClientInfo;->setIsRoot(Z)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CheckClientInfo"

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

    sget-boolean v1, LQQPIM/CheckClientInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    const-string v2, "engineVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CheckClientInfo;->connectType:I

    const-string v2, "connectType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    const-string v2, "isRoot"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/CheckClientInfo;

    iget v1, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    iget v2, p1, LQQPIM/CheckClientInfo;->engineVersion:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CheckClientInfo;->connectType:I

    iget v2, p1, LQQPIM/CheckClientInfo;->connectType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    iget-boolean v2, p1, LQQPIM/CheckClientInfo;->isRoot:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CheckClientInfo"

    return-object v0
.end method

.method public getConnectType()I
    .locals 1

    iget v0, p0, LQQPIM/CheckClientInfo;->connectType:I

    return v0
.end method

.method public getEngineVersion()I
    .locals 1

    iget v0, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRoot()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/CheckClientInfo;->isRoot:Z

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

    iget v0, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setEngineVersion(I)V

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setGuid(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setImei(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setImsi(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/CheckClientInfo;->connectType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setConnectType(I)V

    iget-boolean v0, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/CheckClientInfo;->setIsRoot(Z)V

    return-void
.end method

.method public setConnectType(I)V
    .locals 0

    iput p1, p0, LQQPIM/CheckClientInfo;->connectType:I

    return-void
.end method

.method public setEngineVersion(I)V
    .locals 0

    iput p1, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setIsRoot(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/CheckClientInfo;->engineVersion:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/CheckClientInfo;->guid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/CheckClientInfo;->imsi:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/CheckClientInfo;->connectType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-boolean v0, p0, LQQPIM/CheckClientInfo;->isRoot:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    return-void
.end method
