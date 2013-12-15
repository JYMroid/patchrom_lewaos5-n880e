.class public Lcom/tencent/tmsecure/aresengine/dao/EntityConvert;
.super Ljava/lang/Object;
.source "EntityConvert.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 1
    .parameter "entity"

    .prologue
    .line 18
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    .line 19
    .local v0, calllog:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    return-object v0
.end method

.method public convert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1
    .parameter "entity"

    .prologue
    .line 12
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    .line 13
    .local v0, sms:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    return-object v0
.end method
