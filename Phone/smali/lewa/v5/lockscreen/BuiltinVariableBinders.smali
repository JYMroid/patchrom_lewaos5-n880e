.class public Llewa/v5/lockscreen/BuiltinVariableBinders;
.super Ljava/lang/Object;
.source "BuiltinVariableBinders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fill(Llewa/laml/data/VariableBinderManager;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 10
    invoke-static {p0}, Llewa/v5/lockscreen/BuiltinVariableBinders;->fillMissedCall(Llewa/laml/data/VariableBinderManager;)V

    .line 11
    invoke-static {p0}, Llewa/v5/lockscreen/BuiltinVariableBinders;->fillUnreadSms(Llewa/laml/data/VariableBinderManager;)V

    .line 12
    return-void
.end method

.method private static fillMissedCall(Llewa/laml/data/VariableBinderManager;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 15
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "number"

    aput-object v3, v0, v2

    .line 18
    .local v0, columns:[Ljava/lang/String;
    const-string v1, "type=3 AND new=1"

    .line 19
    .local v1, where:Ljava/lang/String;
    const-string v2, "content://call_log/calls"

    invoke-virtual {p0, v2}, Llewa/laml/data/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Llewa/laml/data/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Llewa/laml/data/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v2

    const-string v3, "call_missed_count"

    invoke-virtual {v2, v3}, Llewa/laml/data/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    .line 21
    return-void
.end method

.method private static fillUnreadSms(Llewa/laml/data/VariableBinderManager;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 24
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 27
    .local v0, columns:[Ljava/lang/String;
    const-string v1, "content://sms/inbox"

    invoke-virtual {p0, v1}, Llewa/laml/data/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Llewa/laml/data/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v1

    const-string v2, "type=1 AND read=0"

    invoke-virtual {v1, v2}, Llewa/laml/data/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v1

    const-string v2, "sms_unread_count"

    invoke-virtual {v1, v2}, Llewa/laml/data/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;

    .line 29
    return-void
.end method
