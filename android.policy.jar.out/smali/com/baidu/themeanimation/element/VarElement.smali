.class public Lcom/baidu/themeanimation/element/VarElement;
.super Ljava/lang/Object;
.source "VarElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VarElement"

.field private static final TYPE_NUM:I = 0x0

.field private static final TYPE_STR:I = 0x1


# instance fields
.field private mConst:Z

.field private mExpression:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    .line 23
    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mExpression:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getConst()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    return v0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    return v0
.end method

.method public setConst(Ljava/lang/String;)V
    .locals 1
    .parameter "_const"

    .prologue
    .line 57
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    goto :goto_0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VarElement;->mExpression:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VarElement;->mName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 50
    return-void
.end method

.method public update(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 77
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 78
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 69
    iget v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
