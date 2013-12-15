.class public final Ltms/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/ch$e;,
        Ltms/ch$d;,
        Ltms/ch$c;,
        Ltms/ch$b;,
        Ltms/ch$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

.field static final b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;


# instance fields
.field c:Ltms/ch$a;

.field d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/tencent/tmsecure/module/aresengine/DataHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    sput-object v0, Ltms/ch;->a:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    sput-object v0, Ltms/ch;->b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltms/ch$a;

    invoke-direct {v0}, Ltms/ch$a;-><init>()V

    iput-object v0, p0, Ltms/ch;->c:Ltms/ch$a;

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;-><init>()V

    iput-object v0, p0, Ltms/ch;->e:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    const-string v0, "incoming_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ltms/ch$b;

    invoke-direct {v0}, Ltms/ch$b;-><init>()V

    iput-object v0, p0, Ltms/ch;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "incoming_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ltms/ch$c;

    invoke-direct {v0}, Ltms/ch$c;-><init>()V

    iput-object v0, p0, Ltms/ch;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_0

    :cond_2
    const-string v0, "outing_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ltms/ch$d;

    invoke-direct {v0}, Ltms/ch$d;-><init>()V

    iput-object v0, p0, Ltms/ch;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_0

    :cond_3
    const-string v0, "system_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ltms/ch$e;

    invoke-direct {v0}, Ltms/ch$e;-><init>()V

    iput-object v0, p0, Ltms/ch;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_0
.end method


# virtual methods
.method public dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/ch;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    return-object v0
.end method

.method public dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;
    .locals 1

    iget-object v0, p0, Ltms/ch;->e:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    return-object v0
.end method

.method public dataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/ch;->c:Ltms/ch$a;

    return-object v0
.end method
