.class Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/RuimRecords;Lcom/android/internal/telephony/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "EF_CSIM_IMSIM"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 378
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 379
    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSIM_IMSIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    #setter for: Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/internal/telephony/RuimRecords;->access$302(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    #setter for: Lcom/android/internal/telephony/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/internal/telephony/RuimRecords;->access$402(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    :goto_0
    return-void

    .line 387
    :cond_1
    const/4 v3, 0x7

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_4

    const/4 v2, 0x1

    .line 389
    .local v2, provisioned:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    iget-object v5, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    #calls: Lcom/android/internal/telephony/RuimRecords;->decodeImsi([B)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/internal/telephony/RuimRecords;->access$500(Lcom/android/internal/telephony/RuimRecords;[B)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/RuimRecords;->access$302(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    #getter for: Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/RuimRecords;->access$300(Lcom/android/internal/telephony/RuimRecords;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    iget-object v5, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    #getter for: Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/RuimRecords;->access$300(Lcom/android/internal/telephony/RuimRecords;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/RuimRecords;->access$402(Lcom/android/internal/telephony/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    #getter for: Lcom/android/internal/telephony/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/RuimRecords;->access$300(Lcom/android/internal/telephony/RuimRecords;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    .line 400
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, operatorNumeric:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 402
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_3

    .line 403
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .end local v1           #operatorNumeric:Ljava/lang/String;
    .end local v2           #provisioned:Z
    :cond_4
    move v2, v4

    .line 387
    goto :goto_1

    .line 396
    .restart local v2       #provisioned:Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/RuimRecords;

    const-string/jumbo v4, "min not present"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_2
.end method
