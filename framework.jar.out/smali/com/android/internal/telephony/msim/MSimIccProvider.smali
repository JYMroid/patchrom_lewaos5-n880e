.class public Lcom/android/internal/telephony/msim/MSimIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MSimIccProvider.java"


# static fields
.field private static final ADN_SUB1:I = 0x1

.field private static final ADN_SUB2:I = 0x2

.field private static final DBG:Z = true

.field private static final FDN_SUB1:I = 0x3

.field private static final FDN_SUB2:I = 0x4

.field private static final SDN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MSimIccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "adn"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "adn_sub2"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "fdn"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "fdn_sub2"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string/jumbo v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 398
    const/4 v10, 0x0

    .line 406
    .local v10, success:Z
    :try_start_0
    const-string/jumbo v2, "simphonebook_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v1

    .line 408
    .local v1, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v1, :cond_0

    .line 409
    const-string v3, ""

    const-string v4, ""

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 417
    .end local v1           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 418
    return v10

    .line 414
    :catch_0
    move-exception v9

    .line 415
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 452
    const/4 v10, 0x0

    .line 455
    .local v10, success:Z
    :try_start_0
    const-string/jumbo v2, "simphonebook_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v1

    .line 457
    .local v1, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v1, :cond_0

    .line 458
    const-string v5, ""

    const-string v6, ""

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 466
    .end local v1           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 467
    return v10

    .line 463
    :catch_0
    move-exception v9

    .line 464
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 5
    .parameter "efType"
    .parameter "values"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccRecordInEf: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 494
    const/4 v2, -0x1

    .line 497
    .local v2, index:I
    :try_start_0
    const-string/jumbo v3, "simphonebook_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v1

    .line 499
    .local v1, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v1, :cond_0

    .line 500
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearchEx(ILandroid/content/ContentValues;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 508
    .end local v1           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccRecordInEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 509
    return v2

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 428
    const/4 v10, 0x0

    .line 431
    .local v10, success:Z
    :try_start_0
    const-string/jumbo v2, "simphonebook_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v1

    .line 433
    .local v1, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 434
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 442
    .end local v1           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 443
    return v10

    .line 439
    :catch_0
    move-exception v9

    .line 440
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;I)Z
    .locals 8
    .parameter "efType"
    .parameter "values"
    .parameter "index"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 473
    const/4 v7, 0x0

    .line 476
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 478
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 479
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfByIndexEx(ILandroid/content/ContentValues;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 487
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 488
    return v7

    .line 484
    :catch_0
    move-exception v6

    .line 485
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 201
    const/4 v7, 0x0

    .line 203
    .local v7, subscription:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "delete,where="

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 205
    sget-object v2, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 206
    .local v12, match:I
    packed-switch v12, :pswitch_data_0

    .line 223
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot insert into URL: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :pswitch_0
    const/4 v7, 0x0

    .line 209
    const/16 v3, 0x6f3a

    .line 228
    .local v3, efType:I
    :goto_0
    const/16 v18, 0x0

    .line 229
    .local v18, tag:Ljava/lang/String;
    const/4 v14, 0x0

    .line 230
    .local v14, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 231
    .local v10, emails:Ljava/lang/String;
    const/4 v8, 0x0

    .line 232
    .local v8, anrs:Ljava/lang/String;
    const/4 v6, 0x0

    .line 233
    .local v6, pin2:Ljava/lang/String;
    const/4 v5, -0x1

    .line 235
    .local v5, deleteIndex:I
    const-string v2, " AND "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 236
    .local v19, tokens:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v13, v0

    .line 238
    .local v13, n:I
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_8

    .line 239
    aget-object v16, v19, v13

    .line 240
    .local v16, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "parsing \'"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, "\'"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 242
    const-string v2, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, pair:[Ljava/lang/String;
    array-length v2, v15

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v2, v0, :cond_2

    .line 245
    const-string v2, "MSimIccProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    .end local v3           #efType:I
    .end local v5           #deleteIndex:I
    .end local v6           #pin2:Ljava/lang/String;
    .end local v8           #anrs:Ljava/lang/String;
    .end local v10           #emails:Ljava/lang/String;
    .end local v13           #n:I
    .end local v14           #number:Ljava/lang/String;
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v18           #tag:Ljava/lang/String;
    .end local v19           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/4 v7, 0x1

    .line 213
    const/16 v3, 0x6f3a

    .line 214
    .restart local v3       #efType:I
    goto :goto_0

    .line 218
    .end local v3           #efType:I
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 219
    .restart local v3       #efType:I
    const/4 v2, 0x3

    if-ne v12, v2, :cond_1

    const/4 v7, 0x0

    .line 220
    :goto_2
    goto :goto_0

    .line 219
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 249
    .restart local v5       #deleteIndex:I
    .restart local v6       #pin2:Ljava/lang/String;
    .restart local v8       #anrs:Ljava/lang/String;
    .restart local v10       #emails:Ljava/lang/String;
    .restart local v13       #n:I
    .restart local v14       #number:Ljava/lang/String;
    .restart local v15       #pair:[Ljava/lang/String;
    .restart local v16       #param:Ljava/lang/String;
    .restart local v18       #tag:Ljava/lang/String;
    .restart local v19       #tokens:[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 252
    .local v20, val:Ljava/lang/String;
    const-string v2, "index"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto/16 :goto_1

    .line 255
    :catch_0
    move-exception v9

    .line 256
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "MSimIccProvider"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 258
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 260
    :cond_4
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 262
    :cond_5
    const-string v2, "emails"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 264
    :cond_6
    const-string v2, "anrs"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 266
    :cond_7
    const-string/jumbo v2, "pin2"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 275
    .end local v11           #key:Ljava/lang/String;
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v20           #val:Ljava/lang/String;
    :cond_8
    const/4 v2, 0x3

    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_a

    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 276
    const/4 v2, 0x0

    .line 303
    :goto_3
    return v2

    .line 279
    :cond_a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v4, mValues:Landroid/content/ContentValues;
    const-string/jumbo v2, "newTag"

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "newNumber"

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "newEmails"

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v2, "newAnrs"

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v17, 0x0

    .line 285
    .local v17, success:Z
    if-ltz v5, :cond_b

    move-object/from16 v2, p0

    .line 286
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;I)Z

    move-result v17

    .line 299
    :goto_4
    if-eqz v17, :cond_e

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/MSimIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 301
    const/4 v2, 0x1

    goto :goto_3

    .line 288
    :cond_b
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "number"

    invoke-virtual {v4, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v2, "emails"

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "anrs"

    invoke-virtual {v4, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 293
    const/4 v2, 0x0

    goto :goto_3

    .line 295
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "delete mvalues= "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_d

    const/16 v17, 0x1

    :goto_5
    goto :goto_4

    :cond_d
    const/16 v17, 0x0

    goto :goto_5

    .line 303
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 92
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 109
    const/4 v9, 0x0

    .line 110
    .local v9, pin2:Ljava/lang/String;
    const/4 v11, 0x0

    .line 112
    .local v11, subscription:I
    const-string v13, "insert"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 114
    sget-object v13, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 115
    .local v7, match:I
    packed-switch v7, :pswitch_data_0

    .line 134
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot insert into URL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 117
    :pswitch_0
    const/4 v11, 0x0

    .line 118
    const/16 v3, 0x6f3a

    .line 138
    .local v3, efType:I
    :goto_0
    const-string/jumbo v13, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, tag:Ljava/lang/String;
    const-string/jumbo v13, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, number:Ljava/lang/String;
    const-string v13, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, emails:Ljava/lang/String;
    const-string v13, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, anrs:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert values , ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 145
    const-string v13, ""

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, ""

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 146
    const/4 v10, 0x0

    .line 195
    :goto_1
    return-object v10

    .line 122
    .end local v1           #anrs:Ljava/lang/String;
    .end local v3           #efType:I
    .end local v4           #emails:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v12           #tag:Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x1

    .line 123
    const/16 v3, 0x6f3a

    .line 124
    .restart local v3       #efType:I
    goto :goto_0

    .line 128
    .end local v3           #efType:I
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 129
    .restart local v3       #efType:I
    const-string/jumbo v13, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    const-string/jumbo v13, "subscription"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 131
    goto :goto_0

    .line 148
    .restart local v1       #anrs:Ljava/lang/String;
    .restart local v4       #emails:Ljava/lang/String;
    .restart local v8       #number:Ljava/lang/String;
    .restart local v12       #tag:Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v6, mValues:Landroid/content/ContentValues;
    const-string/jumbo v13, "tag"

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v13, "number"

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v13, "emails"

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v13, "anrs"

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v13, "newTag"

    invoke-virtual {v6, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v13, "newNumber"

    invoke-virtual {v6, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v13, "newEmails"

    invoke-virtual {v6, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v13, "newAnrs"

    invoke-virtual {v6, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v9, v11}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v5

    .line 160
    .local v5, index:I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_1

    .line 161
    const/4 v10, 0x0

    goto :goto_1

    .line 164
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "content://iccmsim/"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, buf:Ljava/lang/StringBuilder;
    packed-switch v7, :pswitch_data_1

    .line 184
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 188
    .local v10, resultUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/MSimIccProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 167
    .end local v10           #resultUri:Landroid/net/Uri;
    :pswitch_3
    const-string v13, "adn/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    :pswitch_4
    const-string v13, "adn_sub2/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 175
    :pswitch_5
    const-string v13, "fdn/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 179
    :pswitch_6
    const-string v13, "fdn_sub2/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .parameter "efType"
    .parameter "subscription"

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "subscription = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 364
    :try_start_0
    const-string/jumbo v6, "simphonebook_msim"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v5

    .line 366
    .local v5, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v5, :cond_0

    .line 367
    invoke-interface {v5, p1, p2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getAdnRecordsInEf(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 374
    .end local v5           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 376
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 377
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 378
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 379
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 380
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0, v6, v2, v4}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 379
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 371
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 372
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v3           #ex:Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "MSimIccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v2, 0x0

    :cond_2
    return-object v2

    .line 369
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 514
    const-string v0, "MSimIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/16 v4, 0x6f3b

    const/16 v3, 0x6f3a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_4
    const/16 v0, 0x6f49

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 310
    const/4 v4, 0x0

    .line 311
    .local v4, pin2:Ljava/lang/String;
    const/4 v5, 0x0

    .line 313
    .local v5, subscription:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update values="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimIccProvider;->log(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 316
    .local v7, match:I
    packed-switch v7, :pswitch_data_0

    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_0
    const/4 v5, 0x0

    .line 319
    const/16 v1, 0x6f3a

    .line 338
    .local v1, efType:I
    :goto_0
    const/4 v8, 0x0

    .line 339
    .local v8, success:Z
    const/4 v3, -0x1

    .line 341
    .local v3, index:I
    :try_start_0
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 345
    :goto_1
    if-ltz v3, :cond_0

    move-object v0, p0

    move-object v2, p2

    .line 346
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;I)Z

    move-result v8

    .line 350
    :goto_2
    if-nez v8, :cond_2

    .line 355
    :goto_3
    return v10

    .line 322
    .end local v1           #efType:I
    .end local v3           #index:I
    .end local v8           #success:Z
    :pswitch_1
    const/4 v5, 0x1

    .line 323
    const/16 v1, 0x6f3a

    .line 324
    .restart local v1       #efType:I
    goto :goto_0

    .line 328
    .end local v1           #efType:I
    :pswitch_2
    const/16 v1, 0x6f3b

    .line 329
    .restart local v1       #efType:I
    const-string/jumbo v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    const-string/jumbo v0, "subscription"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 331
    goto :goto_0

    .line 342
    .restart local v3       #index:I
    .restart local v8       #success:Z
    :catch_0
    move-exception v6

    .line 343
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MSimIccProvider"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v1, p2, v4, v5}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    move v8, v9

    :goto_4
    goto :goto_2

    :cond_1
    move v8, v10

    goto :goto_4

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v10, v9

    .line 355
    goto :goto_3

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
