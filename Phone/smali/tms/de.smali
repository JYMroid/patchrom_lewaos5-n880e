.class public final Ltms/de;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static final a:Ljava/lang/String; = "firewall.dat"

.field private static final b:Ljava/lang/String; = "/proc/net/ip_tables_names"

.field private static final c:Ljava/lang/String; = "/proc/net/ip_tables_matches"

.field private static final d:Ljava/lang/String; = "/proc/net/ip_tables_targets"

.field private static final e:Ljava/lang/String; = "/proc/net/netfilter/nfnetlink_queue"


# instance fields
.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ltms/de;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/de;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Ltms/de;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ltms/de;->f:I

    :goto_0
    return v0

    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "cat /proc/net/ip_tables_names"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cat /proc/net/ip_tables_matches"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "cat /proc/net/ip_tables_targets"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iput v4, p0, Ltms/de;->f:I

    iget v0, p0, Ltms/de;->f:I

    goto :goto_0

    :cond_2
    const-string v3, "filter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "owner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput v4, p0, Ltms/de;->f:I

    :goto_1
    iget v0, p0, Ltms/de;->f:I

    goto :goto_0

    :cond_4
    const-string v0, "MARK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/net/netfilter/nfnetlink_queue"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Ltms/de;->f:I

    goto :goto_1

    :cond_5
    iput v5, p0, Ltms/de;->f:I

    goto :goto_1
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Ltms/df;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/tencent/tmsecure/module/netsetting/Rule;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ltms/de;->b(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Ltms/df;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ltms/de;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    invoke-static {v0}, Ltms/df;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltms/de;->g:Z

    :cond_0
    iget-boolean v0, p0, Ltms/de;->g:Z

    if-eqz v0, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/Rule;

    iget v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    const-string v4, "ACCEPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    const-string v4, "ACCEPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    const-string v4, "ACCEPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Ltms/de;->b(Ljava/util/List;)V

    :cond_5
    iget-boolean v0, p0, Ltms/de;->g:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Ltms/df;->a(Ljava/lang/String;Ljava/util/List;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    invoke-static {v0}, Ltms/df;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltms/de;->g:Z

    iget-boolean v0, p0, Ltms/de;->g:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    invoke-static {v0}, Ltms/df;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "firewall.dat"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltms/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/de;->h:Ljava/lang/String;

    return-void
.end method
