.class public Lcom/android/phone/LewaBlocker;
.super Ljava/lang/Object;
.source "LewaBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LewaBlocker$UpdateHanlder;,
        Lcom/android/phone/LewaBlocker$CallLogImport;,
        Lcom/android/phone/LewaBlocker$SmsListQueryHandler;
    }
.end annotation


# static fields
.field private static final COUNTRY_CALL_CODES:[Ljava/lang/String; = null

.field private static DBUG:Z = false

.field private static final DELETE_FROM_BLACKLIST:I = 0x3

.field private static final DELETE_SMS_FROM_SMS:I = 0x1

.field private static final LEWA_INTERCEPT_INSERTBLACK2CACHE_ACTION:Ljava/lang/String; = "android.provider.lewa.intercept.insertBlack2Cache"

.field public static final MIN_NUMBER_LENGTH_INCLUDE_COUNTRY_CODE:I = 0xb

.field private static final MSG_HIDE_CHECK_PROGRESS:I = 0x0

.field private static final MSG_HIDE_UPDATE_PROGRESS:I = 0x1

.field static MSG_INBOX_URI:Landroid/net/Uri; = null

.field private static final MSG_NETWORK_ERROR:I = 0x3

.field private static final MSG_NONEED_TOUPDATE:I = 0x4

.field private static final MSG_UPDATE_PROGRESS:I = 0x2

.field private static final QUERY_FROM_BLACKLIST:I = 0x2

.field private static final QUERY_SMS_BY_ADDRESS_TO_BLACKLIST:I = 0x0

.field private static SINSTANCE:Lcom/android/phone/LewaBlocker; = null

.field private static final SMS_TYPE_INBOX:I = 0x1

.field private static final SPECIAL_PREFIX_IN_NUMBER:[Ljava/lang/String; = null

.field private static final STATE_READ:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LewaBlocker"

.field private static final TYPE_BLACK:I = 0x2

.field private static final TYPE_CALL:I = 0x0

.field private static final TYPE_SMS:I = 0x1

.field private static mLewaFilter:Lcom/android/phone/LewaFilter;


# instance fields
.field private hasNetworkError:Z

.field private isAutoUpdate:Z

.field private mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;

.field private mContentValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

.field private mUpdateManager:Lcom/tencent/tmsecure/module/update/UpdateManager;

.field private updateInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    sput-boolean v3, Lcom/android/phone/LewaBlocker;->DBUG:Z

    .line 77
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/LewaBlocker;->MSG_INBOX_URI:Landroid/net/Uri;

    .line 92
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+86"

    aput-object v1, v0, v4

    const-string v1, "+852"

    aput-object v1, v0, v3

    const-string v1, "+853"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "+886"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "+27"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "+31"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+33"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "+44"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+49"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "+55"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "+61"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "+64"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "+65"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+81"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "+82"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LewaBlocker;->COUNTRY_CALL_CODES:[Ljava/lang/String;

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "12520026"

    aput-object v1, v0, v4

    const-string v1, "12520"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/LewaBlocker;->SPECIAL_PREFIX_IN_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LewaBlocker;->mContentValuesList:Ljava/util/ArrayList;

    .line 119
    invoke-static {p1}, Lcom/android/phone/LewaFilter;->getInstance(Landroid/content/Context;)Lcom/android/phone/LewaFilter;

    move-result-object v0

    sput-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    .line 121
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/phone/LewaBlocker;->DBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/LewaBlocker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LewaBlocker;->mContentValuesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LewaBlocker;Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/LewaBlocker;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/LewaBlocker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/CheckResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/LewaBlocker;Lcom/tencent/tmsecure/module/update/CheckResult;)Lcom/tencent/tmsecure/module/update/CheckResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/LewaBlocker;)Lcom/tencent/tmsecure/module/update/UpdateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LewaBlocker;->mUpdateManager:Lcom/tencent/tmsecure/module/update/UpdateManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/LewaBlocker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/LewaBlocker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/LewaBlocker;->hasNetworkError:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/LewaBlocker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/phone/LewaBlocker;->hasNetworkError:Z

    return p1
.end method

.method private checkUpdatelist()V
    .locals 3

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_intercept_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "startCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    iget-object v1, p0, Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 913
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/LewaBlocker;->hasNetworkError:Z

    .line 914
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/LewaBlocker$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaBlocker$1;-><init>(Lcom/android/phone/LewaBlocker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 940
    return-void
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getChinaCallCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    const-string v0, "+86"

    return-object v0
.end method

.method public static getContactId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 15
    .parameter "context"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 716
    const/4 v4, 0x0

    .line 717
    .local v4, strWhere:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 762
    :goto_0
    const-wide/16 v8, 0x0

    .line 763
    .local v8, contactId:J
    const/4 v10, 0x0

    .line 765
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "data1"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "contact_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 771
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    const-string v1, "contact_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 779
    :cond_0
    if-eqz v10, :cond_1

    .line 780
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 784
    .end local v8           #contactId:J
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-wide v8

    .line 719
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 720
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 721
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 722
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 725
    :cond_3
    const-string v13, "REPLACE(TRIM(data1), \'-\', \'\')"

    .line 727
    .local v13, strippedNumber:Ljava/lang/String;
    const-string v14, "REPLACE(TRIM(data1), \' \', \'\')"

    .line 729
    .local v14, trimNumber:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/phone/LewaBlocker;->stripNumberSpecialPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 730
    const/16 v1, 0x2b

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/android/phone/LewaBlocker;->getCountryCodeLength(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 735
    :cond_4
    invoke-static {}, Lcom/android/phone/LewaBlocker;->getChinaCallCode()Ljava/lang/String;

    move-result-object v7

    .line 736
    .local v7, chinaCallCode:Ljava/lang/String;
    const/4 v12, 0x0

    .line 738
    .local v12, ipPrefix:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 745
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 750
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 757
    .end local v7           #chinaCallCode:Ljava/lang/String;
    .end local v12           #ipPrefix:Ljava/lang/String;
    .end local v13           #strippedNumber:Ljava/lang/String;
    .end local v14           #trimNumber:Ljava/lang/String;
    :cond_7
    const-wide/16 v8, 0x0

    goto/16 :goto_1

    .line 776
    .restart local v8       #contactId:J
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 777
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    if-eqz v10, :cond_1

    .line 780
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 779
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_8

    .line 780
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method private static getCountryCodeLength(Ljava/lang/String;)I
    .locals 6
    .parameter "number"

    .prologue
    .line 788
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 789
    sget-object v0, Lcom/android/phone/LewaBlocker;->COUNTRY_CALL_CODES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 790
    .local v1, countryCallCode:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 796
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #countryCallCode:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 789
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #countryCallCode:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #countryCallCode:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/LewaBlocker;
    .locals 3
    .parameter "context"

    .prologue
    .line 124
    const-class v2, Lcom/android/phone/LewaBlocker;

    monitor-enter v2

    .line 125
    :try_start_0
    sget-object v1, Lcom/android/phone/LewaBlocker;->SINSTANCE:Lcom/android/phone/LewaBlocker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 127
    :try_start_1
    new-instance v1, Lcom/android/phone/LewaBlocker;

    invoke-direct {v1, p0}, Lcom/android/phone/LewaBlocker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/phone/LewaBlocker;->SINSTANCE:Lcom/android/phone/LewaBlocker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    sget-object v1, Lcom/android/phone/LewaBlocker;->SINSTANCE:Lcom/android/phone/LewaBlocker;

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/LewaBlocker;->SINSTANCE:Lcom/android/phone/LewaBlocker;

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private insert(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "contentValues"

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    .local v1, resolver:Landroid/content/ContentResolver;
    packed-switch p2, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 203
    :pswitch_0
    :try_start_0
    sget-object v3, Landroid/provider/InterceptConstants;->CALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget-object v3, Landroid/provider/InterceptConstants;->MSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    .line 214
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    sget-object v3, Landroid/provider/InterceptConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_0

    .line 221
    :catch_2
    move-exception v0

    .line 222
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startDeleteMessages(Landroid/content/AsyncQueryHandler;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 6
    .parameter "handler"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "cookie"
    .parameter "token"

    .prologue
    .line 507
    move-object v0, p0

    move v1, p5

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public static startQueryMessages(Landroid/content/AsyncQueryHandler;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 8
    .parameter "handler"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "cookie"
    .parameter "token"

    .prologue
    const/4 v4, 0x0

    .line 501
    move-object v0, p0

    move v1, p5

    move-object v2, p4

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public static final stripNumberSpecialPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 800
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 802
    sget-object v0, Lcom/android/phone/LewaBlocker;->SPECIAL_PREFIX_IN_NUMBER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 803
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 804
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 809
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #prefix:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0

    .line 802
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #prefix:Ljava/lang/String;
    .restart local p0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private trimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 817
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 820
    :cond_0
    return-object p1
.end method


# virtual methods
.method public MatchOneRingBlockCondition(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, flag:Z
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaBlocker;->interceptSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/LewaBlocker;->interceptOneRingSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v1, p1}, Lcom/android/phone/LewaFilter;->isInBlockTime(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-static {p1, v1, p2}, Lcom/android/phone/LewaBlocker;->getContactId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 550
    const/4 v0, 0x1

    .line 552
    :cond_0
    return v0
.end method

.method public addToBlackList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .parameter "context"
    .parameter "addressList"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 312
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;

    .line 313
    new-instance v3, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;-><init>(Lcom/android/phone/LewaBlocker;Landroid/content/ContentResolver;Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/LewaBlocker;->mQueryHandler:Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

    .line 315
    const-string v5, "address = ? or address = ?"

    .line 316
    .local v5, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .line 317
    .local v11, addressPrefix:Ljava/lang/String;
    const/4 v10, 0x0

    .line 318
    .local v10, addressNoPrefix:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/LewaBlocker;->MSG_INBOX_URI:Landroid/net/Uri;

    .line 319
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_1

    .line 359
    :cond_0
    return-void

    .line 322
    :cond_1
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 323
    .local v17, numberList:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 324
    .local v13, i:I
    move-object/from16 v12, p2

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    move v14, v13

    .end local v13           #i:I
    .local v14, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v9, v12, v15

    .line 325
    .local v9, address:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v3, :cond_2

    .line 326
    const-string v3, "LewaBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "LewaBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/LewaBlocker;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 330
    const-string v3, "-"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "-"

    const-string v7, ""

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    :cond_3
    const-string v3, "+86"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 333
    move-object v11, v9

    .line 334
    const-string v3, "+86"

    const-string v7, ""

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 335
    move-object v10, v9

    .line 340
    :goto_1
    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    aput-object v10, v17, v14

    .line 341
    sget-boolean v3, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v3, :cond_4

    .line 342
    const-string v3, "LewaBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addressPrefix:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v3, "LewaBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_4
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v6, v3

    const/4 v3, 0x1

    aput-object v11, v6, v3

    .line 347
    .local v6, addressParams:[Ljava/lang/String;
    if-nez p4, :cond_8

    .line 348
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/phone/LewaBlocker;->addToBlackOrWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    :cond_5
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 356
    new-instance v3, Lcom/android/phone/LewaBlocker$CallLogImport;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/LewaBlocker$CallLogImport;-><init>(Lcom/android/phone/LewaBlocker;)V

    const/4 v7, 0x1

    new-array v7, v7, [[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    invoke-virtual {v3, v7}, Lcom/android/phone/LewaBlocker$CallLogImport;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    :cond_6
    add-int/lit8 v15, v15, 0x1

    move v14, v13

    .end local v13           #i:I
    .restart local v14       #i:I
    goto/16 :goto_0

    .line 337
    .end local v6           #addressParams:[Ljava/lang/String;
    :cond_7
    move-object v10, v9

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+86"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 350
    .end local v14           #i:I
    .restart local v6       #addressParams:[Ljava/lang/String;
    .restart local v13       #i:I
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/LewaBlocker;->mQueryHandler:Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

    const/4 v8, 0x0

    move-object v7, v6

    invoke-static/range {v3 .. v8}, Lcom/android/phone/LewaBlocker;->startQueryMessages(Landroid/content/AsyncQueryHandler;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method public addToBlackOrWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "number"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 397
    const-string v3, "number = ?"

    .line 398
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/InterceptConstants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 404
    .local v7, oriType:I
    if-ne v7, p4, :cond_0

    .line 459
    .end local v7           #oriType:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 460
    return-void

    .line 411
    .restart local v7       #oriType:I
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/InterceptConstants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 416
    packed-switch p4, :pswitch_data_0

    .line 427
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 418
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/LewaBlocker;->insertBlackNumber2Cache(Landroid/content/Context;Ljava/lang/String;I)V

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/LewaBlocker;->deleteWhiteNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/LewaBlocker;->insertWhiteNumber2Cache(Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/LewaBlocker;->deleteBlackNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 434
    .end local v7           #oriType:I
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 435
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "number"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v0, "mode"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    const-string v0, "provacy"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v8}, Lcom/android/phone/LewaBlocker;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 444
    packed-switch p4, :pswitch_data_1

    .line 453
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 446
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/LewaBlocker;->insertBlackNumber2Cache(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 450
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/LewaBlocker;->insertWhiteNumber2Cache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addToWhiteList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "addressList"
    .parameter "name"

    .prologue
    .line 373
    array-length v4, p2

    if-nez v4, :cond_1

    .line 393
    :cond_0
    return-void

    .line 377
    :cond_1
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 378
    .local v0, address:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v4, :cond_2

    .line 379
    const-string v4, "LewaBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/LewaBlocker;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_3
    const-string v4, "+86"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 385
    const-string v4, "+86"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_4
    sget-boolean v4, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v4, :cond_5

    .line 388
    const-string v4, "LewaBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_5
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v0, p3, v4}, Lcom/android/phone/LewaBlocker;->addToBlackOrWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public block(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Z
    .locals 5
    .parameter "c"
    .parameter "phone"
    .parameter "number"
    .parameter "cardInfo"

    .prologue
    const/4 v1, 0x1

    .line 513
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/LewaBlocker;->interceptSwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/phone/LewaBlocker;->isBlockCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    sget-boolean v2, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v2, :cond_0

    .line 517
    const-string v2, "LewaBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercept number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 520
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p0, v2, p3, v3, p4}, Lcom/android/phone/LewaBlocker;->interceptCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/LewaBlocker;->interceptNotifySwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.lewa.intercept.notification"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, notifiyIntent:Landroid/content/Intent;
    const-string v2, "callCount"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const-string v2, "number"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v2, "cardInfo"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    .end local v0           #notifiyIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return v1

    .line 531
    :cond_2
    sget-boolean v1, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v1, :cond_3

    .line 532
    const-string v1, "LewaBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject the incoming call in BL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public check(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 903
    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object v0, p0, Lcom/android/phone/LewaBlocker;->mUpdateManager:Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 904
    iput-object p1, p0, Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;

    .line 905
    new-instance v0, Lcom/android/phone/LewaBlocker$UpdateHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LewaBlocker$UpdateHanlder;-><init>(Lcom/android/phone/LewaBlocker;Lcom/android/phone/LewaBlocker$1;)V

    iput-object v0, p0, Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;

    .line 906
    invoke-direct {p0}, Lcom/android/phone/LewaBlocker;->checkUpdatelist()V

    .line 907
    return-void
.end method

.method public deleteBlackNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 157
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LewaFilter;->deleteBlackNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public deleteFromBlackOrWhiteList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "addressList"
    .parameter "type"

    .prologue
    .line 283
    new-instance v0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;-><init>(Lcom/android/phone/LewaBlocker;Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LewaBlocker;->mQueryHandler:Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

    .line 285
    const-string v2, "number =  ? and type = ?"

    .line 287
    .local v2, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/InterceptConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 288
    .local v1, uri:Landroid/net/Uri;
    array-length v0, p2

    if-nez v0, :cond_1

    .line 300
    :cond_0
    return-void

    .line 291
    :cond_1
    move-object v6, p2

    .local v6, arr$:[Ljava/lang/String;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v6, v7

    .line 292
    .local v4, address:Ljava/lang/String;
    sget-boolean v0, Lcom/android/phone/LewaBlocker;->DBUG:Z

    if-eqz v0, :cond_2

    .line 293
    const-string v0, "LewaBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/LewaBlocker;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {p0, v4}, Lcom/android/phone/LewaBlocker;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v0, p0, Lcom/android/phone/LewaBlocker;->mQueryHandler:Lcom/android/phone/LewaBlocker$SmsListQueryHandler;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/LewaBlocker;->startDeleteMessages(Landroid/content/AsyncQueryHandler;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;I)V

    .line 291
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public deleteWhiteNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 166
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LewaFilter;->deleteWhiteNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public insertBlackNumber2Cache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/LewaFilter;->insertBlackNumber2Cache(Landroid/content/Context;Ljava/lang/String;I)V

    .line 149
    return-void
.end method

.method public insertWhiteNumber2Cache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 161
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LewaFilter;->insertWhiteNumber2Cache(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public interceptCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "incomingNumber"
    .parameter "cause"
    .parameter "cardInfo"

    .prologue
    const/4 v4, 0x0

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "location"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "blocktype"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "cause"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string v1, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v1, "cardinfo"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "last_intercept_simcard"

    invoke-static {v1, v2, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    invoke-direct {p0, p1, v4, v0}, Lcom/android/phone/LewaBlocker;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 250
    return-void
.end method

.method public interceptMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "incomingNumber"
    .parameter "body"
    .parameter "simId"
    .parameter "serviceCenter"

    .prologue
    const/4 v4, 0x1

    .line 254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "address"

    invoke-virtual {p0, p2}, Lcom/android/phone/LewaBlocker;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "location"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "subject"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v1, "cardinfo"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "service_center"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "last_intercept_simcard"

    invoke-static {v1, v2, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    invoke-direct {p0, p1, v4, v0}, Lcom/android/phone/LewaBlocker;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 271
    return-void
.end method

.method public interceptNotifySwitch(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intercept_notification_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptOneRingSwitch(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intercept_onering_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptSwitch(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 464
    sget-boolean v2, Llewa/os/Build;->LEWA_INTERCEPT_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intercept_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 469
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 466
    goto :goto_0

    :cond_1
    move v0, v1

    .line 469
    goto :goto_0
.end method

.method public isBlockCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "incomingNumber"

    .prologue
    .line 139
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LewaFilter;->isBlockCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBlockMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "incomingNumber"
    .parameter "body"

    .prologue
    .line 144
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/LewaFilter;->isBlockMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notificationSwitch(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intercept_notification_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public oneringblock(Lcom/android/internal/telephony/Call;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "c"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, flag:Z
    invoke-virtual {p0, p2}, Lcom/android/phone/LewaBlocker;->interceptSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/phone/LewaBlocker;->interceptOneRingSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    :try_start_0
    sget-object v1, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v1, p2}, Lcom/android/phone/LewaFilter;->isInBlockTime(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-static {p2, v1, p3}, Lcom/android/phone/LewaBlocker;->getContactId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    const/4 v0, 0x1

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 568
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeAllNumber(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 180
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 183
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/aresengine/dao/BlackListDao;->clearAll()Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 187
    invoke-static {p1}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/aresengine/dao/WhiteListDao;->clearAll()Z

    goto :goto_0
.end method

.method public removePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNum"

    .prologue
    .line 492
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 493
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "+86"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 496
    :cond_0
    return-object p1
.end method

.method public setAutoUpdate(Z)V
    .locals 0
    .parameter "autoUpdate"

    .prologue
    .line 899
    iput-boolean p1, p0, Lcom/android/phone/LewaBlocker;->isAutoUpdate:Z

    .line 900
    return-void
.end method

.method public updateBlackNumberInCache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "newNumberType"

    .prologue
    .line 153
    sget-object v0, Lcom/android/phone/LewaBlocker;->mLewaFilter:Lcom/android/phone/LewaFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/LewaFilter;->updateBlackNumberInCache(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public updateData()V
    .locals 3

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/LewaBlocker;->mCheckResults:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 945
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_intercept_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "startUpdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    iget-object v1, p0, Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 948
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/LewaBlocker$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LewaBlocker$2;-><init>(Lcom/android/phone/LewaBlocker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 991
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LewaBlocker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
