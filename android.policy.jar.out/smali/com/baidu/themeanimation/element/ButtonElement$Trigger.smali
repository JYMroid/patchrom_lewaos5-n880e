.class public final Lcom/baidu/themeanimation/element/ButtonElement$Trigger;
.super Ljava/lang/Object;
.source "ButtonElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/ButtonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trigger"
.end annotation


# instance fields
.field mAction:I

.field mProperty:Ljava/lang/String;

.field mTarget:Ljava/lang/String;

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 115
    iget v0, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mAction:I

    if-ne p1, v0, :cond_0

    .line 118
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mProperty:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->execElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 91
    iput p1, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mAction:I

    .line 92
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, tAction:I
    const-string v1, "double"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->setAction(I)V

    .line 100
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0
    .parameter "property"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mProperty:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mTarget:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->mValue:Ljava/lang/String;

    .line 112
    return-void
.end method
