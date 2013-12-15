.class public final LQQPIM/STReportError;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public nCollocateNum:I

.field public nUsedNum:I

.field public nerrorcode:I

.field public noptype:I

.field public ntime:I

.field public sms:Ljava/lang/String;

.field public strHardInfo:Ljava/lang/String;

.field public strarea:Ljava/lang/String;

.field public strqueryorder:Ljava/lang/String;

.field public strsimtype:Ljava/lang/String;

.field public strversion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/STReportError;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/STReportError;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/STReportError;->nerrorcode:I

    iput v1, p0, LQQPIM/STReportError;->ntime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    iput v1, p0, LQQPIM/STReportError;->noptype:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    iput v1, p0, LQQPIM/STReportError;->nCollocateNum:I

    iput v1, p0, LQQPIM/STReportError;->nUsedNum:I

    iget v0, p0, LQQPIM/STReportError;->nerrorcode:I

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNerrorcode(I)V

    iget v0, p0, LQQPIM/STReportError;->ntime:I

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNtime(I)V

    iget-object v0, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrarea(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrsimtype(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrqueryorder(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setSms(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STReportError;->noptype:I

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNoptype(I)V

    iget-object v0, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrversion(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrHardInfo(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STReportError;->nCollocateNum:I

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNCollocateNum(I)V

    iget v0, p0, LQQPIM/STReportError;->nUsedNum:I

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNUsedNum(I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/STReportError;->nerrorcode:I

    iput v1, p0, LQQPIM/STReportError;->ntime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    iput v1, p0, LQQPIM/STReportError;->noptype:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    iput v1, p0, LQQPIM/STReportError;->nCollocateNum:I

    iput v1, p0, LQQPIM/STReportError;->nUsedNum:I

    invoke-virtual {p0, p1}, LQQPIM/STReportError;->setNerrorcode(I)V

    invoke-virtual {p0, p2}, LQQPIM/STReportError;->setNtime(I)V

    invoke-virtual {p0, p3}, LQQPIM/STReportError;->setStrarea(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/STReportError;->setStrsimtype(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/STReportError;->setStrqueryorder(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/STReportError;->setSms(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/STReportError;->setNoptype(I)V

    invoke-virtual {p0, p8}, LQQPIM/STReportError;->setStrversion(Ljava/lang/String;)V

    invoke-virtual {p0, p9}, LQQPIM/STReportError;->setStrHardInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/STReportError;->setNCollocateNum(I)V

    invoke-virtual {p0, p11}, LQQPIM/STReportError;->setNUsedNum(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STReportError"

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

    sget-boolean v1, LQQPIM/STReportError;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/STReportError;->nerrorcode:I

    const-string v2, "nerrorcode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STReportError;->ntime:I

    const-string v2, "ntime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    const-string v2, "strarea"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    const-string v2, "strsimtype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    const-string v2, "strqueryorder"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STReportError;->noptype:I

    const-string v2, "noptype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    const-string v2, "strversion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    const-string v2, "strHardInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STReportError;->nCollocateNum:I

    const-string v2, "nCollocateNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STReportError;->nUsedNum:I

    const-string v2, "nUsedNum"

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
    check-cast p1, LQQPIM/STReportError;

    iget v1, p0, LQQPIM/STReportError;->nerrorcode:I

    iget v2, p1, LQQPIM/STReportError;->nerrorcode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STReportError;->ntime:I

    iget v2, p1, LQQPIM/STReportError;->ntime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STReportError;->sms:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STReportError;->noptype:I

    iget v2, p1, LQQPIM/STReportError;->noptype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STReportError;->nCollocateNum:I

    iget v2, p1, LQQPIM/STReportError;->nCollocateNum:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STReportError;->nUsedNum:I

    iget v2, p1, LQQPIM/STReportError;->nUsedNum:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STReportError"

    return-object v0
.end method

.method public getNCollocateNum()I
    .locals 1

    iget v0, p0, LQQPIM/STReportError;->nCollocateNum:I

    return v0
.end method

.method public getNUsedNum()I
    .locals 1

    iget v0, p0, LQQPIM/STReportError;->nUsedNum:I

    return v0
.end method

.method public getNerrorcode()I
    .locals 1

    iget v0, p0, LQQPIM/STReportError;->nerrorcode:I

    return v0
.end method

.method public getNoptype()I
    .locals 1

    iget v0, p0, LQQPIM/STReportError;->noptype:I

    return v0
.end method

.method public getNtime()I
    .locals 1

    iget v0, p0, LQQPIM/STReportError;->ntime:I

    return v0
.end method

.method public getSms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    return-object v0
.end method

.method public getStrHardInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStrarea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    return-object v0
.end method

.method public getStrqueryorder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    return-object v0
.end method

.method public getStrsimtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    return-object v0
.end method

.method public getStrversion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

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
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/STReportError;->nerrorcode:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNerrorcode(I)V

    iget v0, p0, LQQPIM/STReportError;->ntime:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNtime(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrarea(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrsimtype(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrqueryorder(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setSms(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STReportError;->noptype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNoptype(I)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrversion(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setStrHardInfo(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STReportError;->nCollocateNum:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNCollocateNum(I)V

    iget v0, p0, LQQPIM/STReportError;->nUsedNum:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STReportError;->setNUsedNum(I)V

    return-void
.end method

.method public setNCollocateNum(I)V
    .locals 0

    iput p1, p0, LQQPIM/STReportError;->nCollocateNum:I

    return-void
.end method

.method public setNUsedNum(I)V
    .locals 0

    iput p1, p0, LQQPIM/STReportError;->nUsedNum:I

    return-void
.end method

.method public setNerrorcode(I)V
    .locals 0

    iput p1, p0, LQQPIM/STReportError;->nerrorcode:I

    return-void
.end method

.method public setNoptype(I)V
    .locals 0

    iput p1, p0, LQQPIM/STReportError;->noptype:I

    return-void
.end method

.method public setNtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/STReportError;->ntime:I

    return-void
.end method

.method public setSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    return-void
.end method

.method public setStrHardInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    return-void
.end method

.method public setStrarea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    return-void
.end method

.method public setStrqueryorder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    return-void
.end method

.method public setStrsimtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    return-void
.end method

.method public setStrversion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/STReportError;->nerrorcode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STReportError;->ntime:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/STReportError;->sms:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/STReportError;->noptype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/STReportError;->nCollocateNum:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STReportError;->nUsedNum:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
