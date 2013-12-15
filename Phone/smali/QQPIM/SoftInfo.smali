.class public final LQQPIM/SoftInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_asopt:I

.field static cache_comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Comment;",
            ">;"
        }
    .end annotation
.end field

.field static cache_expand:[B

.field static cache_logourls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_picurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_procinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field static cache_softkey:LQQPIM/SoftKey;

.field static cache_srcpicurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public asopt:I

.field public autostart:I

.field public cn_fee:F

.field public cn_lfee:F

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public downloadtimes:I

.field public expand:[B

.field public fee:F

.field public feetype:I

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public function:Ljava/lang/String;

.field public hprice:Ljava/lang/String;

.field public iFileID:I

.field public iProductID:I

.field public iSoftID:I

.field public isoftclass:I

.field public lfee:F

.field public logourl:Ljava/lang/String;

.field public logourls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public netaccess:I

.field public nick_name:Ljava/lang/String;

.field public official:I

.field public pageurl:Ljava/lang/String;

.field public phonemonitor:I

.field public picurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pname:Ljava/lang/String;

.field public procinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field public publishtime:Ljava/lang/String;

.field public reportFeature:I

.field public score:I

.field public short_desc:Ljava/lang/String;

.field public smsmonitor:I

.field public softDescTimestamp:I

.field public softclass:Ljava/lang/String;

.field public softkey:LQQPIM/SoftKey;

.field public srcpicurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public strLinkContent:Ljava/lang/String;

.field public strLinkUrl:Ljava/lang/String;

.field public strSource:Ljava/lang/String;

.field public suser:I

.field public type:Ljava/lang/String;

.field public update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v2, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    iput-object v2, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    iput v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    iput v1, p0, LQQPIM/SoftInfo;->netaccess:I

    iput v1, p0, LQQPIM/SoftInfo;->autostart:I

    sget-object v0, LQQPIM/EAutoStartOption;->EASO_NONE:LQQPIM/EAutoStartOption;

    invoke-virtual {v0}, LQQPIM/EAutoStartOption;->value()I

    move-result v0

    iput v0, p0, LQQPIM/SoftInfo;->asopt:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftInfo;->filesize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    iput-object v2, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SoftInfo;->official:I

    iput v1, p0, LQQPIM/SoftInfo;->update:I

    iput v1, p0, LQQPIM/SoftInfo;->score:I

    iput v1, p0, LQQPIM/SoftInfo;->suser:I

    iput v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    iput v1, p0, LQQPIM/SoftInfo;->iProductID:I

    iput v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    iput v1, p0, LQQPIM/SoftInfo;->iFileID:I

    iput v1, p0, LQQPIM/SoftInfo;->feetype:I

    iput v3, p0, LQQPIM/SoftInfo;->fee:F

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    iput-object v2, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    iput-object v2, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    iput v3, p0, LQQPIM/SoftInfo;->lfee:F

    iput v1, p0, LQQPIM/SoftInfo;->isoftclass:I

    iput v3, p0, LQQPIM/SoftInfo;->cn_fee:F

    iput v3, p0, LQQPIM/SoftInfo;->cn_lfee:F

    iput-object v2, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    iput-object v2, p0, LQQPIM/SoftInfo;->expand:[B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setShort_desc(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setType(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftclass(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setProcinfo(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSmsmonitor(I)V

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPhonemonitor(I)V

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setNetaccess(I)V

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setAutostart(I)V

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setAsopt(I)V

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setNick_name(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setReportFeature(I)V

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFilesize(I)V

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPublishtime(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setDownloadtimes(I)V

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFunction(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFileurl(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPicurls(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftInfo;->official:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setOfficial(I)V

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setUpdate(I)V

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setScore(I)V

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSuser(I)V

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftDescTimestamp(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIProductID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setISoftID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIFileID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->feetype:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFeetype(I)V

    iget v0, p0, LQQPIM/SoftInfo;->fee:F

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFee(F)V

    iget-object v0, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPname(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setHprice(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setComments(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourls(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPageurl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->lfee:F

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLfee(F)V

    iget v0, p0, LQQPIM/SoftInfo;->isoftclass:I

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIsoftclass(I)V

    iget v0, p0, LQQPIM/SoftInfo;->cn_fee:F

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setCn_fee(F)V

    iget v0, p0, LQQPIM/SoftInfo;->cn_lfee:F

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setCn_lfee(F)V

    iget-object v0, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSrcpicurls(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->expand:[B

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setExpand([B)V

    iget-object v0, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrSource(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrLinkContent(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrLinkUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LQQPIM/SoftKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IIIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;FIFFLjava/util/ArrayList;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/SoftKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ProcInfo;",
            ">;IIIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IIIIIIIIIF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Comment;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FIFF",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->netaccess:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->autostart:I

    sget-object v1, LQQPIM/EAutoStartOption;->EASO_NONE:LQQPIM/EAutoStartOption;

    invoke-virtual {v1}, LQQPIM/EAutoStartOption;->value()I

    move-result v1

    iput v1, p0, LQQPIM/SoftInfo;->asopt:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->filesize:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->official:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->update:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->score:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->suser:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->iProductID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->iFileID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->feetype:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->fee:F

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->lfee:F

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->isoftclass:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->cn_fee:F

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->cn_lfee:F

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->expand:[B

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/SoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    invoke-virtual {p0, p2}, LQQPIM/SoftInfo;->setShort_desc(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/SoftInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/SoftInfo;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/SoftInfo;->setSoftclass(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/SoftInfo;->setProcinfo(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p7}, LQQPIM/SoftInfo;->setSmsmonitor(I)V

    invoke-virtual {p0, p8}, LQQPIM/SoftInfo;->setPhonemonitor(I)V

    invoke-virtual {p0, p9}, LQQPIM/SoftInfo;->setNetaccess(I)V

    invoke-virtual {p0, p10}, LQQPIM/SoftInfo;->setAutostart(I)V

    invoke-virtual {p0, p11}, LQQPIM/SoftInfo;->setAsopt(I)V

    invoke-virtual {p0, p12}, LQQPIM/SoftInfo;->setNick_name(Ljava/lang/String;)V

    invoke-virtual {p0, p13}, LQQPIM/SoftInfo;->setReportFeature(I)V

    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourl(Ljava/lang/String;)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFilesize(I)V

    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPublishtime(Ljava/lang/String;)V

    move/from16 v0, p17

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setDownloadtimes(I)V

    move-object/from16 v0, p18

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFunction(Ljava/lang/String;)V

    move-object/from16 v0, p19

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFileurl(Ljava/lang/String;)V

    move-object/from16 v0, p20

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPicurls(Ljava/util/ArrayList;)V

    move/from16 v0, p21

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setOfficial(I)V

    move/from16 v0, p22

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setUpdate(I)V

    move/from16 v0, p23

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setScore(I)V

    move/from16 v0, p24

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSuser(I)V

    move/from16 v0, p25

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftDescTimestamp(I)V

    move/from16 v0, p26

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIProductID(I)V

    move/from16 v0, p27

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setISoftID(I)V

    move/from16 v0, p28

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIFileID(I)V

    move/from16 v0, p29

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFeetype(I)V

    move/from16 v0, p30

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFee(F)V

    move-object/from16 v0, p31

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPname(Ljava/lang/String;)V

    move-object/from16 v0, p32

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setHprice(Ljava/lang/String;)V

    move-object/from16 v0, p33

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setComments(Ljava/util/ArrayList;)V

    move-object/from16 v0, p34

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourls(Ljava/util/ArrayList;)V

    move-object/from16 v0, p35

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPageurl(Ljava/lang/String;)V

    move/from16 v0, p36

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLfee(F)V

    move/from16 v0, p37

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIsoftclass(I)V

    move/from16 v0, p38

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setCn_fee(F)V

    move/from16 v0, p39

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setCn_lfee(F)V

    move-object/from16 v0, p40

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSrcpicurls(Ljava/util/ArrayList;)V

    move-object/from16 v0, p41

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setExpand([B)V

    move-object/from16 v0, p42

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrSource(Ljava/lang/String;)V

    move-object/from16 v0, p43

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrLinkContent(Ljava/lang/String;)V

    move-object/from16 v0, p44

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrLinkUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftInfo"

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

    sget-boolean v1, LQQPIM/SoftInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const-string v2, "short_desc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    const-string v2, "softclass"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const-string v2, "procinfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const-string v2, "smsmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const-string v2, "phonemonitor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->netaccess:I

    const-string v2, "netaccess"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->autostart:I

    const-string v2, "autostart"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->asopt:I

    const-string v2, "asopt"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    const-string v2, "nick_name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    const-string v2, "reportFeature"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    const-string v2, "logourl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->filesize:I

    const-string v2, "filesize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    const-string v2, "publishtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const-string v2, "downloadtimes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    const-string v2, "fileurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    const-string v2, "picurls"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->official:I

    const-string v2, "official"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->update:I

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->score:I

    const-string v2, "score"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->suser:I

    const-string v2, "suser"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const-string v2, "softDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->iProductID:I

    const-string v2, "iProductID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    const-string v2, "iSoftID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->iFileID:I

    const-string v2, "iFileID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->feetype:I

    const-string v2, "feetype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->fee:F

    const-string v2, "fee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    const-string v2, "pname"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    const-string v2, "hprice"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    const-string v2, "comments"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    const-string v2, "logourls"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    const-string v2, "pageurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->lfee:F

    const-string v2, "lfee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->isoftclass:I

    const-string v2, "isoftclass"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->cn_fee:F

    const-string v2, "cn_fee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftInfo;->cn_lfee:F

    const-string v2, "cn_lfee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    const-string v2, "srcpicurls"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->expand:[B

    const-string v2, "expand"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    const-string v2, "strSource"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    const-string v2, "strLinkContent"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    const-string v2, "strLinkUrl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/SoftInfo;

    iget-object v1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    iget-object v2, p1, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    iget v2, p1, LQQPIM/SoftInfo;->smsmonitor:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    iget v2, p1, LQQPIM/SoftInfo;->phonemonitor:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->netaccess:I

    iget v2, p1, LQQPIM/SoftInfo;->netaccess:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->autostart:I

    iget v2, p1, LQQPIM/SoftInfo;->autostart:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->asopt:I

    iget v2, p1, LQQPIM/SoftInfo;->asopt:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    iget v2, p1, LQQPIM/SoftInfo;->reportFeature:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->filesize:I

    iget v2, p1, LQQPIM/SoftInfo;->filesize:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    iget v2, p1, LQQPIM/SoftInfo;->downloadtimes:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->official:I

    iget v2, p1, LQQPIM/SoftInfo;->official:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->update:I

    iget v2, p1, LQQPIM/SoftInfo;->update:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->score:I

    iget v2, p1, LQQPIM/SoftInfo;->score:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->suser:I

    iget v2, p1, LQQPIM/SoftInfo;->suser:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    iget v2, p1, LQQPIM/SoftInfo;->softDescTimestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->iProductID:I

    iget v2, p1, LQQPIM/SoftInfo;->iProductID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    iget v2, p1, LQQPIM/SoftInfo;->iSoftID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->iFileID:I

    iget v2, p1, LQQPIM/SoftInfo;->iFileID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->feetype:I

    iget v2, p1, LQQPIM/SoftInfo;->feetype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->fee:F

    iget v2, p1, LQQPIM/SoftInfo;->fee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->lfee:F

    iget v2, p1, LQQPIM/SoftInfo;->lfee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->isoftclass:I

    iget v2, p1, LQQPIM/SoftInfo;->isoftclass:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->cn_fee:F

    iget v2, p1, LQQPIM/SoftInfo;->cn_fee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftInfo;->cn_lfee:F

    iget v2, p1, LQQPIM/SoftInfo;->cn_lfee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->expand:[B

    iget-object v2, p1, LQQPIM/SoftInfo;->expand:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftInfo"

    return-object v0
.end method

.method public getAsopt()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    return v0
.end method

.method public getAutostart()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    return v0
.end method

.method public getCn_fee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->cn_fee:F

    return v0
.end method

.method public getCn_lfee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->cn_lfee:F

    return v0
.end method

.method public getComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadtimes()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    return v0
.end method

.method public getExpand()[B
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->expand:[B

    return-object v0
.end method

.method public getFee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->fee:F

    return v0
.end method

.method public getFeetype()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->feetype:I

    return v0
.end method

.method public getFilesize()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    return v0
.end method

.method public getFileurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getHprice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    return-object v0
.end method

.method public getIFileID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    return v0
.end method

.method public getIProductID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    return v0
.end method

.method public getISoftID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    return v0
.end method

.method public getIsoftclass()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->isoftclass:I

    return v0
.end method

.method public getLfee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->lfee:F

    return v0
.end method

.method public getLogourl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogourls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNetaccess()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    return v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficial()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->official:I

    return v0
.end method

.method public getPageurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonemonitor()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    return v0
.end method

.method public getPicurls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    return-object v0
.end method

.method public getProcinfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ProcInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPublishtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    return-object v0
.end method

.method public getReportFeature()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    return v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    return v0
.end method

.method public getShort_desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsmonitor()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    return v0
.end method

.method public getSoftDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    return v0
.end method

.method public getSoftclass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public getSrcpicurls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrLinkContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    return-object v0
.end method

.method public getStrLinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSuser()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->update:I

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
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/SoftInfo;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_softkey:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/SoftInfo;->cache_softkey:LQQPIM/SoftKey;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setShort_desc(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setDescription(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setType(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftclass(Ljava/lang/String;)V

    sget-object v0, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/ProcInfo;

    invoke-direct {v0}, LQQPIM/ProcInfo;-><init>()V

    sget-object v1, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setProcinfo(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSmsmonitor(I)V

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPhonemonitor(I)V

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setNetaccess(I)V

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setAutostart(I)V

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setAsopt(I)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setNick_name(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setReportFeature(I)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFilesize(I)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPublishtime(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setDownloadtimes(I)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFunction(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFileurl(Ljava/lang/String;)V

    sget-object v0, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPicurls(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftInfo;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setOfficial(I)V

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setUpdate(I)V

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setScore(I)V

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSuser(I)V

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftDescTimestamp(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIProductID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setISoftID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIFileID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->feetype:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFeetype(I)V

    iget v0, p0, LQQPIM/SoftInfo;->fee:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFee(F)V

    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPname(Ljava/lang/String;)V

    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setHprice(Ljava/lang/String;)V

    sget-object v0, LQQPIM/SoftInfo;->cache_comments:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_comments:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/Comment;

    invoke-direct {v0}, LQQPIM/Comment;-><init>()V

    sget-object v1, LQQPIM/SoftInfo;->cache_comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, LQQPIM/SoftInfo;->cache_comments:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setComments(Ljava/util/ArrayList;)V

    sget-object v0, LQQPIM/SoftInfo;->cache_logourls:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_logourls:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LQQPIM/SoftInfo;->cache_logourls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, LQQPIM/SoftInfo;->cache_logourls:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourls(Ljava/util/ArrayList;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPageurl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->lfee:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLfee(F)V

    iget v0, p0, LQQPIM/SoftInfo;->isoftclass:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIsoftclass(I)V

    iget v0, p0, LQQPIM/SoftInfo;->cn_fee:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setCn_fee(F)V

    iget v0, p0, LQQPIM/SoftInfo;->cn_lfee:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setCn_lfee(F)V

    sget-object v0, LQQPIM/SoftInfo;->cache_srcpicurls:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_srcpicurls:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LQQPIM/SoftInfo;->cache_srcpicurls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, LQQPIM/SoftInfo;->cache_srcpicurls:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSrcpicurls(Ljava/util/ArrayList;)V

    sget-object v0, LQQPIM/SoftInfo;->cache_expand:[B

    if-nez v0, :cond_6

    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, LQQPIM/SoftInfo;->cache_expand:[B

    sget-object v0, LQQPIM/SoftInfo;->cache_expand:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    :cond_6
    sget-object v0, LQQPIM/SoftInfo;->cache_expand:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setExpand([B)V

    const/16 v0, 0x29

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrSource(Ljava/lang/String;)V

    const/16 v0, 0x2a

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrLinkContent(Ljava/lang/String;)V

    const/16 v0, 0x2b

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setStrLinkUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setAsopt(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->asopt:I

    return-void
.end method

.method public setAutostart(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->autostart:I

    return-void
.end method

.method public setCn_fee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->cn_fee:F

    return-void
.end method

.method public setCn_lfee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->cn_lfee:F

    return-void
.end method

.method public setComments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Comment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownloadtimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    return-void
.end method

.method public setExpand([B)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->expand:[B

    return-void
.end method

.method public setFee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->fee:F

    return-void
.end method

.method public setFeetype(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->feetype:I

    return-void
.end method

.method public setFilesize(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->filesize:I

    return-void
.end method

.method public setFileurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    return-void
.end method

.method public setHprice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    return-void
.end method

.method public setIFileID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->iFileID:I

    return-void
.end method

.method public setIProductID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->iProductID:I

    return-void
.end method

.method public setISoftID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->iSoftID:I

    return-void
.end method

.method public setIsoftclass(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->isoftclass:I

    return-void
.end method

.method public setLfee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->lfee:F

    return-void
.end method

.method public setLogourl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    return-void
.end method

.method public setLogourls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    return-void
.end method

.method public setNetaccess(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->netaccess:I

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setOfficial(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->official:I

    return-void
.end method

.method public setPageurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    return-void
.end method

.method public setPhonemonitor(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    return-void
.end method

.method public setPicurls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    return-void
.end method

.method public setProcinfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ProcInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    return-void
.end method

.method public setPublishtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    return-void
.end method

.method public setReportFeature(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->reportFeature:I

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->score:I

    return-void
.end method

.method public setShort_desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    return-void
.end method

.method public setSmsmonitor(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    return-void
.end method

.method public setSoftDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    return-void
.end method

.method public setSoftclass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    return-void
.end method

.method public setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public setSrcpicurls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    return-void
.end method

.method public setStrLinkContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    return-void
.end method

.method public setStrLinkUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    return-void
.end method

.method public setStrSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    return-void
.end method

.method public setSuser(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->suser:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->update:I

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_4
    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_9
    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_a
    iget v0, p0, LQQPIM/SoftInfo;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->feetype:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->fee:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget-object v0, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, LQQPIM/SoftInfo;->pname:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_b
    iget-object v0, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, LQQPIM/SoftInfo;->hprice:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_c
    iget-object v0, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, LQQPIM/SoftInfo;->comments:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_d
    iget-object v0, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, LQQPIM/SoftInfo;->logourls:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_e
    iget-object v0, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, LQQPIM/SoftInfo;->pageurl:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_f
    iget v0, p0, LQQPIM/SoftInfo;->lfee:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget v0, p0, LQQPIM/SoftInfo;->isoftclass:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftInfo;->cn_fee:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget v0, p0, LQQPIM/SoftInfo;->cn_lfee:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget-object v0, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, LQQPIM/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_10
    iget-object v0, p0, LQQPIM/SoftInfo;->expand:[B

    if-eqz v0, :cond_11

    iget-object v0, p0, LQQPIM/SoftInfo;->expand:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_11
    iget-object v0, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, LQQPIM/SoftInfo;->strSource:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_12
    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkContent:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_13
    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, LQQPIM/SoftInfo;->strLinkUrl:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_14
    return-void
.end method
