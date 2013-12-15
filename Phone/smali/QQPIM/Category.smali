.class public final LQQPIM/Category;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_expand:[B

.field static cache_vecSubtitle:Ljava/util/ArrayList;
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
.field public autoalert:I

.field public categorytype:I

.field public count:I

.field public description:Ljava/lang/String;

.field public endtime:I

.field public expand:[B

.field public icon:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public sign:I

.field public source:I

.field public state:I

.field public vecSubtitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public viewtimes:I

.field public welcome:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/Category;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/Category;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/Category;->id:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/Category;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    iput v1, p0, LQQPIM/Category;->count:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    iput v1, p0, LQQPIM/Category;->autoalert:I

    iput v1, p0, LQQPIM/Category;->endtime:I

    iput v1, p0, LQQPIM/Category;->categorytype:I

    const/4 v0, 0x1

    iput v0, p0, LQQPIM/Category;->source:I

    iput-object v2, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/Category;->description:Ljava/lang/String;

    iput v1, p0, LQQPIM/Category;->sign:I

    iput v1, p0, LQQPIM/Category;->state:I

    iput v1, p0, LQQPIM/Category;->viewtimes:I

    iput-object v2, p0, LQQPIM/Category;->expand:[B

    iget v0, p0, LQQPIM/Category;->id:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setId(I)V

    iget-object v0, p0, LQQPIM/Category;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/Category;->setName(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/Category;->setIcon(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/Category;->count:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setCount(I)V

    iget-object v0, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/Category;->setWelcome(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/Category;->autoalert:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setAutoalert(I)V

    iget v0, p0, LQQPIM/Category;->endtime:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setEndtime(I)V

    iget v0, p0, LQQPIM/Category;->categorytype:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setCategorytype(I)V

    iget v0, p0, LQQPIM/Category;->source:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setSource(I)V

    iget-object v0, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/Category;->setVecSubtitle(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/Category;->description:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/Category;->setDescription(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/Category;->sign:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setSign(I)V

    iget v0, p0, LQQPIM/Category;->state:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setState(I)V

    iget v0, p0, LQQPIM/Category;->viewtimes:I

    invoke-virtual {p0, v0}, LQQPIM/Category;->setViewtimes(I)V

    iget-object v0, p0, LQQPIM/Category;->expand:[B

    invoke-virtual {p0, v0}, LQQPIM/Category;->setExpand([B)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/util/ArrayList;Ljava/lang/String;III[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "III[B)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->id:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/Category;->name:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->count:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->autoalert:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->endtime:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->categorytype:I

    const/4 v1, 0x1

    iput v1, p0, LQQPIM/Category;->source:I

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/Category;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->sign:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->state:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/Category;->viewtimes:I

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/Category;->expand:[B

    invoke-virtual {p0, p1}, LQQPIM/Category;->setId(I)V

    invoke-virtual {p0, p2}, LQQPIM/Category;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/Category;->setIcon(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/Category;->setCount(I)V

    invoke-virtual {p0, p5}, LQQPIM/Category;->setWelcome(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/Category;->setAutoalert(I)V

    invoke-virtual {p0, p7}, LQQPIM/Category;->setEndtime(I)V

    invoke-virtual {p0, p8}, LQQPIM/Category;->setCategorytype(I)V

    invoke-virtual {p0, p9}, LQQPIM/Category;->setSource(I)V

    invoke-virtual {p0, p10}, LQQPIM/Category;->setVecSubtitle(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p11}, LQQPIM/Category;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0, p12}, LQQPIM/Category;->setSign(I)V

    invoke-virtual {p0, p13}, LQQPIM/Category;->setState(I)V

    move/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/Category;->setViewtimes(I)V

    move-object/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/Category;->setExpand([B)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.Category"

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

    sget-boolean v1, LQQPIM/Category;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/Category;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/Category;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->count:I

    const-string v2, "count"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    const-string v2, "welcome"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->autoalert:I

    const-string v2, "autoalert"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->endtime:I

    const-string v2, "endtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->categorytype:I

    const-string v2, "categorytype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->source:I

    const-string v2, "source"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    const-string v2, "vecSubtitle"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/Category;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->sign:I

    const-string v2, "sign"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->state:I

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Category;->viewtimes:I

    const-string v2, "viewtimes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/Category;->expand:[B

    const-string v2, "expand"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/Category;

    iget v1, p0, LQQPIM/Category;->id:I

    iget v2, p1, LQQPIM/Category;->id:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/Category;->name:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/Category;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/Category;->icon:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->count:I

    iget v2, p1, LQQPIM/Category;->count:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/Category;->welcome:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->autoalert:I

    iget v2, p1, LQQPIM/Category;->autoalert:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->endtime:I

    iget v2, p1, LQQPIM/Category;->endtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->categorytype:I

    iget v2, p1, LQQPIM/Category;->categorytype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->source:I

    iget v2, p1, LQQPIM/Category;->source:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/Category;->description:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/Category;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->sign:I

    iget v2, p1, LQQPIM/Category;->sign:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->state:I

    iget v2, p1, LQQPIM/Category;->state:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Category;->viewtimes:I

    iget v2, p1, LQQPIM/Category;->viewtimes:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/Category;->expand:[B

    iget-object v2, p1, LQQPIM/Category;->expand:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.Category"

    return-object v0
.end method

.method public getAutoalert()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->autoalert:I

    return v0
.end method

.method public getCategorytype()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->categorytype:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->count:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/Category;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndtime()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->endtime:I

    return v0
.end method

.method public getExpand()[B
    .locals 1

    iget-object v0, p0, LQQPIM/Category;->expand:[B

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->sign:I

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->source:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->state:I

    return v0
.end method

.method public getVecSubtitle()Ljava/util/ArrayList;
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

    iget-object v0, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewtimes()I
    .locals 1

    iget v0, p0, LQQPIM/Category;->viewtimes:I

    return v0
.end method

.method public getWelcome()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, LQQPIM/Category;->id:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setId(I)V

    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setName(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setIcon(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/Category;->count:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setCount(I)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setWelcome(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/Category;->autoalert:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setAutoalert(I)V

    iget v0, p0, LQQPIM/Category;->endtime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setEndtime(I)V

    iget v0, p0, LQQPIM/Category;->categorytype:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setCategorytype(I)V

    iget v0, p0, LQQPIM/Category;->source:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setSource(I)V

    sget-object v0, LQQPIM/Category;->cache_vecSubtitle:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/Category;->cache_vecSubtitle:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LQQPIM/Category;->cache_vecSubtitle:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/Category;->cache_vecSubtitle:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/Category;->setVecSubtitle(Ljava/util/ArrayList;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setDescription(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/Category;->sign:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setSign(I)V

    iget v0, p0, LQQPIM/Category;->state:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setState(I)V

    iget v0, p0, LQQPIM/Category;->viewtimes:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/Category;->setViewtimes(I)V

    sget-object v0, LQQPIM/Category;->cache_expand:[B

    if-nez v0, :cond_1

    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, LQQPIM/Category;->cache_expand:[B

    sget-object v0, LQQPIM/Category;->cache_expand:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    :cond_1
    sget-object v0, LQQPIM/Category;->cache_expand:[B

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, LQQPIM/Category;->setExpand([B)V

    return-void
.end method

.method public setAutoalert(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->autoalert:I

    return-void
.end method

.method public setCategorytype(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->categorytype:I

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->count:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/Category;->description:Ljava/lang/String;

    return-void
.end method

.method public setEndtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->endtime:I

    return-void
.end method

.method public setExpand([B)V
    .locals 0

    iput-object p1, p0, LQQPIM/Category;->expand:[B

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/Category;->name:Ljava/lang/String;

    return-void
.end method

.method public setSign(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->sign:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->source:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->state:I

    return-void
.end method

.method public setVecSubtitle(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    return-void
.end method

.method public setViewtimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/Category;->viewtimes:I

    return-void
.end method

.method public setWelcome(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/Category;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/Category;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/Category;->icon:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/Category;->count:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/Category;->welcome:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/Category;->autoalert:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Category;->endtime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Category;->categorytype:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Category;->source:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/Category;->vecSubtitle:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/Category;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/Category;->description:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget v0, p0, LQQPIM/Category;->sign:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Category;->state:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Category;->viewtimes:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/Category;->expand:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/Category;->expand:[B

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_3
    return-void
.end method
