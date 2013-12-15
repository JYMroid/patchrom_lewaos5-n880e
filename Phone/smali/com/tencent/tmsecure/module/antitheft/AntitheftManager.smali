.class public final Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ai;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltms/al;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHelperNumber()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {v0}, Ltms/ai;->a()Ltms/al;

    move-result-object v0

    invoke-virtual {v0}, Ltms/al;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {v0}, Ltms/ai;->a()Ltms/al;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltms/al;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleSmsCommand(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {v0, p1, p2, p3}, Ltms/ai;->a(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ai;

    invoke-direct {v0}, Ltms/ai;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {v0, p1}, Ltms/ai;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setHelperNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {v0}, Ltms/ai;->a()Ltms/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltms/al;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/ai;

    invoke-virtual {v0}, Ltms/ai;->a()Ltms/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltms/al;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
