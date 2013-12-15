.class public Lcom/baidu/themeanimation/manager/ExpressionManager;
.super Ljava/lang/Object;
.source "ExpressionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpressionManager"

.field static mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private mElementsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/manager/Expression;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOperandStackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorStackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack;",
            ">;"
        }
    .end annotation
.end field

.field private mVariablesValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private previousExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->previousExpression:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method public static getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    monitor-exit v1

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/manager/ExpressionManager;

    invoke-direct {v0}, Lcom/baidu/themeanimation/manager/ExpressionManager;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public execElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 154
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 155
    .local v2, elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 156
    .local v1, element:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 158
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 159
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, tMethodName:Ljava/lang/String;
    const/4 v3, 0x0

    .end local v1           #element:Ljava/lang/Object;
    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 164
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 165
    .restart local v1       #element:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 166
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v1           #element:Ljava/lang/Object;
    .end local v3           #i:I
    .end local v5           #tMethodName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getCategoryValue()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 236
    const-wide/16 v0, 0x3

    .line 238
    .local v0, category:J
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 243
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public getOperandStack(Ljava/lang/String;)Ljava/util/Stack;
    .locals 2
    .parameter "_expression"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, localStack:Ljava/util/Stack;
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #localStack:Ljava/util/Stack;
    check-cast v0, Ljava/util/Stack;

    .line 97
    .restart local v0       #localStack:Ljava/util/Stack;
    :cond_0
    return-object v0
.end method

.method public getOperatorStack(Ljava/lang/String;)Ljava/util/Stack;
    .locals 2
    .parameter "_expression"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, localStack:Ljava/util/Stack;
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #localStack:Ljava/util/Stack;
    check-cast v0, Ljava/util/Stack;

    .line 82
    .restart local v0       #localStack:Ljava/util/Stack;
    :cond_0
    return-object v0
.end method

.method public monitorElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "element"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .restart local v0       #elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public monitorVariable(Ljava/lang/String;Lcom/baidu/themeanimation/manager/Expression;)V
    .locals 2
    .parameter "variableName"
    .parameter "expression"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .restart local v0       #expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    :cond_4
    return-void
.end method

.method public setOperandStack(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .parameter "_expression"
    .parameter "_stack"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setOperatorStack(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .parameter "_expression"
    .parameter "_stack"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setVariableValue(IJ)V
    .locals 7
    .parameter "va_index"
    .parameter "value"

    .prologue
    .line 214
    const-wide v0, 0x7fffffffffffffffL

    .line 215
    .local v0, currentValue:J
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 219
    :cond_0
    cmp-long v4, v0, p2

    if-nez v4, :cond_2

    .line 233
    :cond_1
    return-void

    .line 222
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 225
    .local v2, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v4

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz v2, :cond_1

    .line 228
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 229
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/manager/Expression;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/baidu/themeanimation/manager/Expression;->setValue(Ljava/lang/String;J)Ljava/lang/Boolean;

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setVariableValue(Ljava/lang/String;J)V
    .locals 6
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 192
    const-wide v0, 0x7fffffffffffffffL

    .line 193
    .local v0, currentValue:J
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 197
    :cond_0
    cmp-long v4, v0, p2

    if-nez v4, :cond_2

    .line 208
    :cond_1
    return-void

    .line 200
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 201
    .local v2, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v2, :cond_1

    .line 204
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 205
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/manager/Expression;

    invoke-virtual {v4, p1, p2, p3}, Lcom/baidu/themeanimation/manager/Expression;->setValue(Ljava/lang/String;J)Ljava/lang/Boolean;

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setVariableValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 182
    .local v0, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/manager/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/baidu/themeanimation/manager/Expression;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1           #i:I
    :cond_0
    return-void
.end method
