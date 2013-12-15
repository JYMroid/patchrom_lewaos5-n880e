.class public final LQQPIM/STCloudOrderReq;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_stCodeNow:LQQPIM/STQueryInfo;

.field static cache_vecCodeMuilty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field static cache_vecFail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public block:Z

.field public nFrequency:I

.field public stCodeNow:LQQPIM/STQueryInfo;

.field public strCity:Ljava/lang/String;

.field public strHardInfo:Ljava/lang/String;

.field public strMonthBalance:Ljava/lang/String;

.field public strProvince:Ljava/lang/String;

.field public strTaocan:Ljava/lang/String;

.field public strTime:Ljava/lang/String;

.field public strsimtype:Ljava/lang/String;

.field public vecCodeMuilty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public vecFail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/STCloudOrderReq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/STCloudOrderReq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/STCloudOrderReq;->block:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    iput-object v1, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    iput-object v1, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    iput-object v1, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    iget-boolean v0, p0, LQQPIM/STCloudOrderReq;->block:Z

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setBlock(Z)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrProvince(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrCity(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrsimtype(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrTaocan(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setVecCodeMuilty(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStCodeNow(LQQPIM/STQueryInfo;)V

    iget v0, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setNFrequency(I)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrTime(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrHardInfo(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrMonthBalance(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setVecFail(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;LQQPIM/STQueryInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;",
            "LQQPIM/STQueryInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/STCloudOrderReq;->block:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    iput-object v1, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    iput-object v1, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    iput-object v1, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LQQPIM/STCloudOrderReq;->setBlock(Z)V

    invoke-virtual {p0, p2}, LQQPIM/STCloudOrderReq;->setStrProvince(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/STCloudOrderReq;->setStrCity(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/STCloudOrderReq;->setStrsimtype(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/STCloudOrderReq;->setStrTaocan(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/STCloudOrderReq;->setVecCodeMuilty(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p7}, LQQPIM/STCloudOrderReq;->setStCodeNow(LQQPIM/STQueryInfo;)V

    invoke-virtual {p0, p8}, LQQPIM/STCloudOrderReq;->setNFrequency(I)V

    invoke-virtual {p0, p9}, LQQPIM/STCloudOrderReq;->setStrTime(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/STCloudOrderReq;->setStrHardInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p11}, LQQPIM/STCloudOrderReq;->setStrMonthBalance(Ljava/lang/String;)V

    invoke-virtual {p0, p12}, LQQPIM/STCloudOrderReq;->setVecFail(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STCloudOrderReq"

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

    sget-boolean v1, LQQPIM/STCloudOrderReq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-boolean v1, p0, LQQPIM/STCloudOrderReq;->block:Z

    const-string v2, "block"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    const-string v2, "strProvince"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    const-string v2, "strCity"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    const-string v2, "strsimtype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    const-string v2, "strTaocan"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    const-string v2, "vecCodeMuilty"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    const-string v2, "stCodeNow"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    const-string v2, "nFrequency"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    const-string v2, "strTime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    const-string v2, "strHardInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    const-string v2, "strMonthBalance"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    const-string v2, "vecFail"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/STCloudOrderReq;

    iget-boolean v1, p0, LQQPIM/STCloudOrderReq;->block:Z

    iget-boolean v2, p1, LQQPIM/STCloudOrderReq;->block:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    iget v2, p1, LQQPIM/STCloudOrderReq;->nFrequency:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STCloudOrderReq"

    return-object v0
.end method

.method public getBlock()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/STCloudOrderReq;->block:Z

    return v0
.end method

.method public getNFrequency()I
    .locals 1

    iget v0, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    return v0
.end method

.method public getStCodeNow()LQQPIM/STQueryInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    return-object v0
.end method

.method public getStrCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    return-object v0
.end method

.method public getStrHardInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMonthBalance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getStrProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getStrTaocan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    return-object v0
.end method

.method public getStrTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStrsimtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    return-object v0
.end method

.method public getVecCodeMuilty()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVecFail()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

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

    const/4 v2, 0x0

    iget-boolean v0, p0, LQQPIM/STCloudOrderReq;->block:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setBlock(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrProvince(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrCity(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrsimtype(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrTaocan(Ljava/lang/String;)V

    sget-object v0, LQQPIM/STCloudOrderReq;->cache_vecCodeMuilty:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/STCloudOrderReq;->cache_vecCodeMuilty:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/STQueryInfo;

    invoke-direct {v0}, LQQPIM/STQueryInfo;-><init>()V

    sget-object v1, LQQPIM/STCloudOrderReq;->cache_vecCodeMuilty:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/STCloudOrderReq;->cache_vecCodeMuilty:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setVecCodeMuilty(Ljava/util/ArrayList;)V

    sget-object v0, LQQPIM/STCloudOrderReq;->cache_stCodeNow:LQQPIM/STQueryInfo;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/STQueryInfo;

    invoke-direct {v0}, LQQPIM/STQueryInfo;-><init>()V

    sput-object v0, LQQPIM/STCloudOrderReq;->cache_stCodeNow:LQQPIM/STQueryInfo;

    :cond_1
    sget-object v0, LQQPIM/STCloudOrderReq;->cache_stCodeNow:LQQPIM/STQueryInfo;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStCodeNow(LQQPIM/STQueryInfo;)V

    iget v0, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setNFrequency(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrTime(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrHardInfo(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setStrMonthBalance(Ljava/lang/String;)V

    sget-object v0, LQQPIM/STCloudOrderReq;->cache_vecFail:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/STCloudOrderReq;->cache_vecFail:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LQQPIM/STCloudOrderReq;->cache_vecFail:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, LQQPIM/STCloudOrderReq;->cache_vecFail:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderReq;->setVecFail(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setBlock(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/STCloudOrderReq;->block:Z

    return-void
.end method

.method public setNFrequency(I)V
    .locals 0

    iput p1, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    return-void
.end method

.method public setStCodeNow(LQQPIM/STQueryInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    return-void
.end method

.method public setStrCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    return-void
.end method

.method public setStrHardInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    return-void
.end method

.method public setStrMonthBalance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    return-void
.end method

.method public setStrProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    return-void
.end method

.method public setStrTaocan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    return-void
.end method

.method public setStrTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    return-void
.end method

.method public setStrsimtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    return-void
.end method

.method public setVecCodeMuilty(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    return-void
.end method

.method public setVecFail(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-boolean v0, p0, LQQPIM/STCloudOrderReq;->block:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_5
    iget v0, p0, LQQPIM/STCloudOrderReq;->nFrequency:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_9
    return-void
.end method
