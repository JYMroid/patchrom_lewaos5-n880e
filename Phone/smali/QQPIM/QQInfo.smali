.class public final LQQPIM/QQInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_cmdinfo:LQQPIM/ServerCmdInfo;

.field static cache_vecclient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cmdinfo:LQQPIM/ServerCmdInfo;

.field public loginkey:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public vecclient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/QQInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/QQInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    iput-object v1, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    iput-object v1, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    iget-object v0, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setLoginkey(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setVecclient(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setCmdinfo(LQQPIM/ServerCmdInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;LQQPIM/ServerCmdInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;",
            "LQQPIM/ServerCmdInfo;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    iput-object v1, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    iput-object v1, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    invoke-virtual {p0, p1}, LQQPIM/QQInfo;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/QQInfo;->setLoginkey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/QQInfo;->setVecclient(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p4}, LQQPIM/QQInfo;->setCmdinfo(LQQPIM/ServerCmdInfo;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QQInfo"

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

    sget-boolean v1, LQQPIM/QQInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    const-string v2, "loginkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    const-string v2, "vecclient"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    const-string v2, "cmdinfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/QQInfo;

    iget-object v1, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/QQInfo;->username:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    iget-object v2, p1, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QQInfo"

    return-object v0
.end method

.method public getCmdinfo()LQQPIM/ServerCmdInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    return-object v0
.end method

.method public getLoginkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVecclient()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setLoginkey(Ljava/lang/String;)V

    sget-object v0, LQQPIM/QQInfo;->cache_vecclient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/QQInfo;->cache_vecclient:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/ClientVersionInfo;

    invoke-direct {v0}, LQQPIM/ClientVersionInfo;-><init>()V

    sget-object v1, LQQPIM/QQInfo;->cache_vecclient:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/QQInfo;->cache_vecclient:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setVecclient(Ljava/util/ArrayList;)V

    sget-object v0, LQQPIM/QQInfo;->cache_cmdinfo:LQQPIM/ServerCmdInfo;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/ServerCmdInfo;

    invoke-direct {v0}, LQQPIM/ServerCmdInfo;-><init>()V

    sput-object v0, LQQPIM/QQInfo;->cache_cmdinfo:LQQPIM/ServerCmdInfo;

    :cond_1
    sget-object v0, LQQPIM/QQInfo;->cache_cmdinfo:LQQPIM/ServerCmdInfo;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    invoke-virtual {p0, v0}, LQQPIM/QQInfo;->setCmdinfo(LQQPIM/ServerCmdInfo;)V

    return-void
.end method

.method public setCmdinfo(LQQPIM/ServerCmdInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    return-void
.end method

.method public setLoginkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    return-void
.end method

.method public setVecclient(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/QQInfo;->username:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/QQInfo;->loginkey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/QQInfo;->vecclient:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/QQInfo;->cmdinfo:LQQPIM/ServerCmdInfo;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_1
    return-void
.end method
