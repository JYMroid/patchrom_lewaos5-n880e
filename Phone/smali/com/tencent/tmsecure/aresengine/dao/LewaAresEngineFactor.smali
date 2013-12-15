.class public final Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;
.super Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;
.source "LewaAresEngineFactor.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/CallLogDao;

    move-result-object v0

    return-object v0
.end method

.method public getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/EntityConvert;

    invoke-direct {v0}, Lcom/tencent/tmsecure/aresengine/dao/EntityConvert;-><init>()V

    return-object v0
.end method

.method public getKeyWordDao()Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/KeyWordDao;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/LastCallLogDao;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/PrivateCallLogDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/PrivateCallLogDao;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/PrivateListDao;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/PrivateSmsDao;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/tmsecure/aresengine/dao/SmsDao;->getInstance()Lcom/tencent/tmsecure/aresengine/dao/SmsDao;

    move-result-object v0

    return-object v0
.end method

.method public getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;

    iget-object v1, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/aresengine/dao/LewaAbsSysDao;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/tmsecure/aresengine/dao/LewaAresEngineFactor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    move-result-object v0

    return-object v0
.end method
