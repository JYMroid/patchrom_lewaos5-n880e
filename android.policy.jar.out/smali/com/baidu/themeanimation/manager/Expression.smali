.class public Lcom/baidu/themeanimation/manager/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# static fields
.field public static final EXPRESSION_TYPE_INT:I = 0x0

.field public static final EXPRESSION_TYPE_STRING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mExpressionString:Ljava/lang/String;

.field private mFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsValid:Z

.field private mMethod:Ljava/lang/reflect/Method;

.field private mObject:Ljava/lang/Object;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    .line 26
    iput-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mFunctions:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 30
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    .line 33
    iput-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    .line 34
    iput-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "expressionString"
    .parameter "object"
    .parameter "method"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mFunctions:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 30
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    .line 38
    iput-object p2, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    .line 39
    iput-object p3, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    .line 40
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/manager/Expression;->setExpressionString(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public checkExpression()Z
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_1
    return v1

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public exec()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->exec(I)Z

    move-result v0

    return v0
.end method

.method public exec(I)Z
    .locals 9
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 169
    const/4 v3, 0x1

    .line 173
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/baidu/themeanimation/manager/Expression;->checkExpression()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/baidu/themeanimation/manager/Expression;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v5

    .line 175
    :cond_1
    const/4 v2, 0x0

    .line 176
    .local v2, realValue:Ljava/lang/String;
    const/4 v4, 0x0

    .line 178
    .local v4, value:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 180
    :try_start_0
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 196
    :goto_1
    if-eqz v4, :cond_2

    :try_start_1
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 197
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, decimalFormat:Ljava/text/DecimalFormat;
    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 199
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #decimalFormat:Ljava/text/DecimalFormat;
    :cond_2
    :goto_2
    move v5, v3

    .line 231
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 185
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    goto :goto_1

    .line 226
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 203
    :cond_3
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    iget-object v7, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_0

    .line 210
    if-eqz v4, :cond_4

    :try_start_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    .line 211
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v5, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 223
    :cond_4
    :goto_3
    if-eqz v4, :cond_2

    :try_start_3
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 224
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 216
    :catch_2
    move-exception v1

    .line 217
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 147
    :cond_1
    return v0
.end method

.method public setExpressionString(Ljava/lang/String;)V
    .locals 9
    .parameter "expressionString"

    .prologue
    const/16 v7, 0x40

    const/16 v8, 0x23

    .line 56
    const/4 v2, 0x1

    .line 57
    .local v2, isValid:Z
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 66
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 130
    :goto_1
    return-void

    .line 63
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 74
    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_3

    const/16 v6, 0x28

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_3

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "paras("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_3
    const-string v6, ""

    iput-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 86
    const/4 v4, 0x0

    .line 87
    .local v4, start:I
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 88
    .local v1, index:I
    const/4 v5, 0x0

    .line 90
    .local v5, variableName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 91
    .local v3, length:I
    if-ltz v1, :cond_8

    .line 93
    :goto_2
    if-ltz v1, :cond_7

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    move v4, v1

    .line 99
    :goto_3
    if-ge v1, v3, :cond_4

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .local v0, c:C
    const/16 v6, 0x30

    if-ge v0, v6, :cond_6

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_6

    .line 110
    .end local v0           #c:C
    :cond_4
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 113
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    invoke-virtual {v6, v5, p0}, Lcom/baidu/themeanimation/manager/ExpressionManager;->monitorVariable(Ljava/lang/String;Lcom/baidu/themeanimation/manager/Expression;)V

    .line 120
    :cond_5
    move v4, v1

    .line 121
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 107
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    .end local v0           #c:C
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    goto/16 :goto_1

    .line 127
    :cond_8
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    .line 139
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setValue(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 1
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->exec(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->exec(I)Z

    move-result v0

    return v0
.end method
