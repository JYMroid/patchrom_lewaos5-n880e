.class public final Ltms/fc;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field static final a:Ljava/lang/String; = "IpDialManagerImpl"

.field private static final e:Ljava/lang/String; = "ip_dial_setting"


# instance fields
.field b:Ltms/ac;

.field c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

.field d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private b()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;
    .locals 4

    new-instance v1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    iget-object v0, p0, Ltms/fc;->b:Ltms/ac;

    const-string v2, "ip_dial_setting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ltms/o;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "call [getIpDialSettingFromDB]"

    invoke-direct {p0, v0}, Ltms/fc;->b(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "IpDialManagerImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "IpDialManagerImpl"

    invoke-static {v0, p1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "IpDialManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING Dial Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "IpDialManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING Ip Head: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "IpDialManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING Local Phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "IpDialManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING Excluded Area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedAreaList()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->listToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "IpDialManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING Excluded Phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->listToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v3, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "17911"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    const-string v1, "IpDialManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "has IP header, remove the header("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v4, "17951"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "10193"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "17910"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "12520"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "12583"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "96688"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "17901"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "12593"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "17909"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    move v1, v2

    goto/16 :goto_1

    :cond_6
    const-string v0, "IpDialManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "don\'t has IP header, go to next step!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltms/fc;->d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>()V

    array-length v3, v0

    if-le v3, v5, :cond_0

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setCity(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedAreaList()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->existed(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)Z

    move-result v2

    const-string v0, "IpDialManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "IpDialManagerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_1

    const-string v0, " existed"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in EXCLUDED-AREA list!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_0
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, " not existed"

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    move-result-object v0

    new-instance v1, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->existed(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)Z

    move-result v1

    const-string v2, "IpDialManagerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_0

    const-string v0, " existed"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in EXCLUDED-PHONE list!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string v0, " not existed"

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltms/fc;->d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpDialManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationTrime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} compare localPhone{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "400"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "800"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "IpDialManagerImpl"

    const-string v1, "WHEN-DIAL-LONG-DISTANCE-CALL: You are dialing local call"

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_2
    const-string v0, "IpDialManagerImpl"

    const-string v1, "WHEN-DIAL-LONG-DISTANCE-CALL: You are dialing IP call"

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ltms/fc;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Ltms/fc;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v1, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Ltms/fc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltms/fc;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ltms/fc;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in excluded area or phone list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "call [getDialPhoneNumber]"

    invoke-direct {p0, v1}, Ltms/fc;->b(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "IpDialManagerImpl"

    const-string v2, "use IP-DIAL-MODE when dialing long-distance calls."

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_2

    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s length less than 8, so do nothing!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "IpDialManagerImpl"

    const-string v2, "not use IP-DIAL-MODE."

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "IpDialManagerImpl"

    const-string v2, "use IP-DIAL-MODE when dialing any calls."

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltms/fc;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Ltms/fc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    .locals 4

    if-eqz p1, :cond_0

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ltms/o;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    iget-object v1, p0, Ltms/fc;->b:Ltms/ac;

    const-string v2, "ip_dial_setting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ltms/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "call [SetIpDialSetting]"

    invoke-direct {p0, v0}, Ltms/fc;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "IpDialManagerImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ltms/ac;

    const-string v1, "IpDialProperty"

    invoke-direct {v0, v1}, Ltms/ac;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/fc;->b:Ltms/ac;

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Ltms/fc;->d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    iput-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v0, p0, Ltms/fc;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {p0}, Ltms/fc;->b()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    return-void
.end method
