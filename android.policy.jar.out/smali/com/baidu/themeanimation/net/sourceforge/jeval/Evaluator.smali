.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"


# static fields
.field static mInstance:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private closedParenthesesOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

.field private functions:Ljava/util/Map;

.field private loadMathFunctions:Z

.field private loadMathVariables:Z

.field private loadStringFunctions:Z

.field numOperators:I

.field private openParenthesesOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

.field private operandStack:Ljava/util/Stack;

.field private operatorStack:Ljava/util/Stack;

.field private operators:Ljava/util/List;

.field private previousExpression:Ljava/lang/String;

.field private previousOperandStack:Ljava/util/Stack;

.field private previousOperatorStack:Ljava/util/Stack;

.field private processNestedFunctions:Z

.field private quoteCharacter:C

.field private variableResolver:Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

.field private variables:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 230
    const/16 v1, 0x27

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 231
    return-void
.end method

.method public constructor <init>(CZZZZ)V
    .locals 2
    .parameter "quoteCharacter"
    .parameter "loadMathVariables"
    .parameter "loadMathFunctions"
    .parameter "loadStringFunctions"
    .parameter "processNestedFunctions"

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    .line 185
    const/16 v0, 0x27

    iput-char v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    .line 188
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;

    invoke-direct {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->openParenthesesOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 191
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ClosedParenthesesOperator;

    invoke-direct {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ClosedParenthesesOperator;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->closedParenthesesOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 207
    iput-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousOperatorStack:Ljava/util/Stack;

    .line 213
    iput-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousOperandStack:Ljava/util/Stack;

    .line 216
    iput-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    .line 219
    iput-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    .line 222
    iput-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variableResolver:Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

    .line 260
    invoke-direct {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->installOperators()V

    .line 263
    iput-boolean p2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    .line 264
    invoke-direct {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadSystemVariables()V

    .line 267
    iput-boolean p3, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    .line 268
    iput-boolean p4, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    .line 269
    invoke-direct {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadSystemFunctions()V

    .line 272
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->setQuoteCharacter(C)V

    .line 275
    iput-boolean p5, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    .line 276
    return-void
.end method

.method public static getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;
    .locals 2

    .prologue
    .line 282
    sget-object v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->mInstance:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->mInstance:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    monitor-exit v1

    .line 289
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-direct {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->mInstance:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    .line 288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    sget-object v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->mInstance:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNextOperator(Ljava/lang/String;ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    .locals 11
    .parameter "expression"
    .parameter "start"
    .parameter "match"

    .prologue
    .line 1437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1438
    .local v3, numChars:I
    const/4 v5, 0x0

    .line 1440
    .local v5, numQuoteCharacters:I
    move v0, p2

    .local v0, charCtr:I
    :goto_0
    if-ge v0, v3, :cond_7

    .line 1442
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-char v9, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    if-ne v8, v9, :cond_0

    .line 1443
    add-int/lit8 v5, v5, 0x1

    .line 1447
    :cond_0
    rem-int/lit8 v8, v5, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1452
    :cond_2
    iget-object v8, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 1453
    .local v4, numOperators:I
    const/4 v7, 0x0

    .local v7, operatorCtr:I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 1454
    iget-object v8, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 1456
    .local v6, operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    if-eqz p3, :cond_4

    .line 1459
    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1453
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1465
    :cond_4
    invoke-interface {v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getLength()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 1466
    const/4 v1, -0x1

    .line 1467
    .local v1, endCtr:I
    add-int/lit8 v8, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_5

    .line 1468
    add-int/lit8 v1, v0, 0x2

    .line 1474
    :goto_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1476
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;

    invoke-direct {v2, v6, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;I)V

    .line 1494
    .end local v1           #endCtr:I
    .end local v4           #numOperators:I
    .end local v6           #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v7           #operatorCtr:I
    :goto_3
    return-object v2

    .line 1470
    .restart local v1       #endCtr:I
    .restart local v4       #numOperators:I
    .restart local v6       #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .restart local v7       #operatorCtr:I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    .line 1483
    .end local v1           #endCtr:I
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-interface {v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1485
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;

    invoke-direct {v2, v6, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;I)V

    .line 1488
    .local v2, nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    goto :goto_3

    .line 1494
    .end local v2           #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    .end local v4           #numOperators:I
    .end local v6           #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v7           #operatorCtr:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private getResult(Ljava/util/Stack;Ljava/util/Stack;Z)Ljava/lang/String;
    .locals 17
    .parameter "operatorStack"
    .parameter "operandStack"
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 1240
    const/4 v13, 0x0

    .line 1243
    .local v13, resultString:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Stack;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 1244
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processTree(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_0

    .line 1250
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->size()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 1251
    new-instance v14, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v15, "Expression is invalid."

    invoke-direct {v14, v15}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1254
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    .line 1257
    .local v6, finalOperand:Ljava/lang/Object;
    instance-of v14, v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;

    if-eqz v14, :cond_3

    .line 1259
    check-cast v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;

    .end local v6           #finalOperand:Ljava/lang/Object;
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;->evaluate(Z)Ljava/lang/String;

    move-result-object v13

    .line 1347
    :cond_2
    :goto_1
    return-object v13

    .line 1263
    .restart local v6       #finalOperand:Ljava/lang/Object;
    :cond_3
    instance-of v14, v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;

    if-eqz v14, :cond_6

    move-object v12, v6

    .line 1264
    check-cast v12, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;

    .line 1266
    .local v12, resultExpressionOperand:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;
    check-cast v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;

    .end local v6           #finalOperand:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1267
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1271
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1272
    const/4 v10, 0x0

    .line 1274
    .local v10, resultDouble:Ljava/lang/Double;
    :try_start_0
    new-instance v10, Ljava/lang/Double;

    .end local v10           #resultDouble:Ljava/lang/Double;
    invoke-direct {v10, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    .restart local v10       #resultDouble:Ljava/lang/Double;
    invoke-virtual {v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1281
    new-instance v11, Ljava/lang/Double;

    invoke-virtual {v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-interface/range {v14 .. v16}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    .end local v10           #resultDouble:Ljava/lang/Double;
    .local v11, resultDouble:Ljava/lang/Double;
    move-object v10, v11

    .line 1287
    .end local v11           #resultDouble:Ljava/lang/Double;
    .restart local v10       #resultDouble:Ljava/lang/Double;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1288
    goto :goto_1

    .line 1275
    .end local v10           #resultDouble:Ljava/lang/Double;
    :catch_0
    move-exception v4

    .line 1276
    .local v4, e:Ljava/lang/Exception;
    new-instance v14, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v15, "Expression is invalid."

    invoke-direct {v14, v15, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 1289
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1290
    new-instance v14, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v15, "Invalid operand for unary operator."

    invoke-direct {v14, v15}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1294
    .end local v12           #resultExpressionOperand:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;
    .restart local v6       #finalOperand:Ljava/lang/Object;
    :cond_6
    instance-of v14, v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;

    if-eqz v14, :cond_b

    move-object v9, v6

    .line 1295
    check-cast v9, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;

    .line 1296
    .local v9, parsedFunction:Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;->getFunction()Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;

    move-result-object v7

    .line 1297
    .local v7, function:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;->getArguments()Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, arguments:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    if-eqz v14, :cond_7

    .line 1300
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processNestedFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1303
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1307
    :try_start_1
    move-object/from16 v0, p0

    invoke-interface {v7, v0, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;->execute(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    move-result-object v8

    .line 1309
    .local v8, functionResult:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;
    invoke-virtual {v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;->getResult()Ljava/lang/String;

    move-result-object v13

    .line 1311
    invoke-virtual {v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v14

    if-nez v14, :cond_9

    .line 1314
    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1317
    .restart local v10       #resultDouble:Ljava/lang/Double;
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 1318
    new-instance v11, Ljava/lang/Double;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-interface/range {v14 .. v16}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    .end local v10           #resultDouble:Ljava/lang/Double;
    .restart local v11       #resultDouble:Ljava/lang/Double;
    move-object v10, v11

    .line 1324
    .end local v11           #resultDouble:Ljava/lang/Double;
    .restart local v10       #resultDouble:Ljava/lang/Double;
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1325
    goto/16 :goto_1

    .line 1326
    .end local v10           #resultDouble:Ljava/lang/Double;
    :cond_9
    invoke-virtual {v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 1330
    if-eqz p3, :cond_a

    .line 1331
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1335
    :cond_a
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1336
    new-instance v14, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v15, "Invalid operand for unary operator."

    invoke-direct {v14, v15}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1340
    .end local v8           #functionResult:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;
    :catch_1
    move-exception v5

    .line 1341
    .local v5, fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    new-instance v14, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 1344
    .end local v3           #arguments:Ljava/lang/String;
    .end local v5           #fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    .end local v7           #function:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    .end local v9           #parsedFunction:Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;
    :cond_b
    new-instance v14, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v15, "Expression is invalid."

    invoke-direct {v14, v15}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private installOperators()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->openParenthesesOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->closedParenthesesOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/AdditionOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/AdditionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/SubtractionOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/SubtractionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/MultiplicationOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/MultiplicationOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/DivisionOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/DivisionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/EqualOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/EqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/NotEqualOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/NotEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ModulusOperator;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ModulusOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->numOperators:I

    .line 895
    return-void
.end method

.method private loadSystemFunctions()V
    .locals 3

    .prologue
    .line 1610
    iget-boolean v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    if-eqz v2, :cond_0

    .line 1611
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;

    invoke-direct {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;-><init>()V

    .line 1613
    .local v0, mathFunctions:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;
    invoke-interface {v0, p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;->load(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;)V

    .line 1617
    .end local v0           #mathFunctions:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    if-eqz v2, :cond_1

    .line 1618
    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/StringFunctions;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/StringFunctions;-><init>()V

    .line 1620
    .local v1, stringFunctions:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;
    invoke-interface {v1, p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;->load(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;)V

    .line 1622
    .end local v1           #stringFunctions:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;
    :cond_1
    return-void
.end method

.method private loadSystemVariables()V
    .locals 4

    .prologue
    .line 1629
    iget-boolean v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    if-eqz v0, :cond_0

    .line 1631
    const-string v0, "E"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x4005bf0a8b145769L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string v0, "PI"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x400921fb54442d18L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :cond_0
    return-void
.end method

.method private processFunction(Ljava/lang/String;ILjava/util/Stack;)Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    .locals 14
    .parameter "expression"
    .parameter "operatorIndex"
    .parameter "operandStack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 1127
    const/4 v8, 0x1

    .line 1128
    .local v8, parenthesisCount:I
    const/4 v5, 0x0

    .line 1129
    .local v5, nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    move/from16 v6, p2

    .line 1132
    .local v6, nextOperatorIndex:I
    :goto_0
    if-lez v8, :cond_3

    .line 1133
    add-int/lit8 v11, v6, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, p1, v11, v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getNextOperator(Ljava/lang/String;ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;

    move-result-object v5

    .line 1136
    if-nez v5, :cond_0

    .line 1137
    new-instance v11, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v12, "Function is not closed."

    invoke-direct {v11, v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1138
    :cond_0
    invoke-virtual {v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v11

    instance-of v11, v11, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v11, :cond_2

    .line 1139
    add-int/lit8 v8, v8, 0x1

    .line 1145
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v6

    goto :goto_0

    .line 1140
    :cond_2
    invoke-virtual {v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v11

    instance-of v11, v11, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-eqz v11, :cond_1

    .line 1141
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1149
    :cond_3
    add-int/lit8 v11, p2, 0x1

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, arguments:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;

    .line 1155
    .local v7, operand:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;
    invoke-virtual {v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v10

    .line 1156
    .local v10, unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    invoke-virtual {v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, functionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    iget-object v11, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;

    .line 1169
    .local v2, function:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    if-nez v2, :cond_4

    .line 1170
    new-instance v11, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "A function is not defined (index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1161
    .end local v2           #function:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    :catch_0
    move-exception v4

    .line 1162
    .local v4, iae:Ljava/lang/IllegalArgumentException;
    new-instance v11, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid function name of \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .line 1174
    .end local v4           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v2       #function:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    :cond_4
    new-instance v9, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;

    invoke-direct {v9, v2, v1, v10}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;Ljava/lang/String;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V

    .line 1176
    .local v9, parsedFunction:Lcom/baidu/themeanimation/net/sourceforge/jeval/ParsedFunction;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    return-object v5
.end method

.method private processOperand(Ljava/lang/String;IILjava/util/Stack;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)I
    .locals 5
    .parameter "expression"
    .parameter "charCtr"
    .parameter "operatorIndex"
    .parameter "operandStack"
    .parameter "unaryOperator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 921
    const/4 v1, 0x0

    .line 922
    .local v1, operandString:Ljava/lang/String;
    const/4 v2, -0x1

    .line 925
    .local v2, rtnCtr:I
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 926
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 933
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 934
    new-instance v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v4, "Expression is invalid."

    invoke-direct {v3, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 929
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 930
    move v2, p3

    goto :goto_0

    .line 937
    :cond_1
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;

    invoke-direct {v0, v1, p5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;-><init>(Ljava/lang/String;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V

    .line 939
    .local v0, operand:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperand;
    invoke-virtual {p4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    return v2
.end method

.method private processOperator(Ljava/lang/String;ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Ljava/util/Stack;Ljava/util/Stack;ZLcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)I
    .locals 14
    .parameter "expression"
    .parameter "originalOperatorIndex"
    .parameter "originalOperator"
    .parameter "operatorStack"
    .parameter "operandStack"
    .parameter "haveOperand"
    .parameter "unaryOperator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 977
    move/from16 v11, p2

    .line 978
    .local v11, operatorIndex:I
    move-object/from16 v10, p3

    .line 982
    .local v10, operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    if-eqz p6, :cond_0

    instance-of v3, v10, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v3, :cond_0

    .line 983
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v11, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processFunction(Ljava/lang/String;ILjava/util/Stack;)Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;

    move-result-object v9

    .line 986
    .local v9, nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v10

    .line 987
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v3

    invoke-interface {v10}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getLength()I

    move-result v5

    add-int v11, v3, v5

    .line 989
    const/4 v3, 0x0

    invoke-direct {p0, p1, v11, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getNextOperator(Ljava/lang/String;ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;

    move-result-object v9

    .line 993
    if-eqz v9, :cond_2

    .line 994
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v10

    .line 995
    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v11

    .line 1003
    .end local v9           #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    :cond_0
    instance-of v3, v10, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v3, :cond_3

    .line 1004
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    move-object/from16 v0, p7

    invoke-direct {v8, v10, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V

    .line 1006
    .local v8, expressionOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    :cond_1
    :goto_0
    invoke-interface {v10}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getLength()I

    move-result v3

    add-int v12, v11, v3

    .line 1075
    .end local v8           #expressionOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    :goto_1
    return v12

    .restart local v9       #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    :cond_2
    move v12, v11

    .line 997
    goto :goto_1

    .line 1007
    .end local v9           #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    :cond_3
    instance-of v3, v10, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-eqz v3, :cond_9

    .line 1008
    const/4 v13, 0x0

    .line 1010
    .local v13, stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1011
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    check-cast v13, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    .line 1016
    .restart local v13       #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    :cond_4
    :goto_2
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v3

    instance-of v3, v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-nez v3, :cond_6

    .line 1017
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processTree(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 1019
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1020
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    check-cast v13, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    .restart local v13       #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    goto :goto_2

    .line 1022
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1026
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1027
    new-instance v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v5, "Expression is invalid."

    invoke-direct {v3, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1031
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    .line 1034
    .restart local v8       #expressionOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    invoke-virtual {v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v3

    instance-of v3, v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-nez v3, :cond_8

    .line 1035
    new-instance v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v5, "Expression is invalid."

    invoke-direct {v3, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1039
    :cond_8
    invoke-virtual {v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1040
    invoke-virtual/range {p5 .. p5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    .line 1042
    .local v4, operand:Ljava/lang/Object;
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V

    .line 1045
    .local v2, tree:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1049
    .end local v2           #tree:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;
    .end local v4           #operand:Ljava/lang/Object;
    .end local v8           #expressionOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    .end local v13           #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 1050
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    .line 1054
    .restart local v13       #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    :goto_3
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v3

    invoke-interface {v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getPrecedence()I

    move-result v3

    invoke-interface {v10}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getPrecedence()I

    move-result v5

    if-lt v3, v5, :cond_b

    .line 1056
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processTree(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 1058
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1059
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    check-cast v13, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    .restart local v13       #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    goto :goto_3

    .line 1062
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 1067
    .end local v13           #stackOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    :cond_b
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    move-object/from16 v0, p7

    invoke-direct {v8, v10, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V

    .line 1070
    .restart local v8       #expressionOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private processTree(Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 6
    .parameter "operandStack"
    .parameter "operatorStack"

    .prologue
    .line 1192
    const/4 v3, 0x0

    .line 1193
    .local v3, rightOperand:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1194
    .local v2, leftOperand:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1197
    .local v4, operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1198
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 1202
    .end local v3           #rightOperand:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1203
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1207
    .end local v2           #leftOperand:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v4

    .line 1210
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;-><init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V

    .line 1214
    .local v0, tree:Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionTree;
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    return-void
.end method

.method private processUnaryOperator(ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)I
    .locals 2
    .parameter "operatorIndex"
    .parameter "operator"

    .prologue
    .line 1093
    invoke-interface {p2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v0, p1, v1

    .line 1095
    .local v0, rtnCtr:I
    return v0
.end method


# virtual methods
.method public clearFunctions()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 383
    invoke-direct {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadSystemFunctions()V

    .line 384
    return-void
.end method

.method public clearVariables()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 496
    invoke-direct {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadSystemVariables()V

    .line 497
    return-void
.end method

.method public evaluate()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 582
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 584
    .local v0, expression:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 585
    :cond_0
    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v2, "No expression has been specified."

    invoke-direct {v1, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_1
    invoke-virtual {p0, v0, v2, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 559
    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .parameter "expression"
    .parameter "keepQuotes"
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->parse(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    invoke-direct {p0, v1, v2, p3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getResult(Ljava/util/Stack;Ljava/util/Stack;Z)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 626
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_0
    return-object v0
.end method

.method public evaluate(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "keepQuotes"
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 662
    .local v0, expression:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 663
    :cond_0
    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v2, "No expression has been specified."

    invoke-direct {v1, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBooleanResult(Ljava/lang/String;)Z
    .locals 8
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 688
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, doubleResult:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 694
    const/4 v3, 0x1

    .line 700
    .end local v0           #doubleResult:Ljava/lang/Double;
    :cond_0
    :goto_0
    return v3

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, exception:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getFunction(Ljava/lang/String;)Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    return-object v0
.end method

.method public getLoadMathFunctions()Z
    .locals 1

    .prologue
    .line 1794
    iget-boolean v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    return v0
.end method

.method public getLoadStringFunctions()Z
    .locals 1

    .prologue
    .line 1804
    iget-boolean v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    return v0
.end method

.method public getNumberResult(Ljava/lang/String;)D
    .locals 5
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 726
    .local v0, doubleResult:Ljava/lang/Double;
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    .end local v0           #doubleResult:Ljava/lang/Double;
    invoke-direct {v0, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .restart local v0       #doubleResult:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    return-wide v3

    .line 727
    .end local v0           #doubleResult:Ljava/lang/Double;
    :catch_0
    move-exception v1

    .line 728
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v4, "Expression does not produce a number."

    invoke-direct {v3, v4, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getProcessNestedFunctions()Z
    .locals 1

    .prologue
    .line 1814
    iget-boolean v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    return v0
.end method

.method public getQuoteCharacter()C
    .locals 1

    .prologue
    .line 298
    iget-char v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    return v0
.end method

.method public getVariableResolver()Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variableResolver:Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

    return-object v0
.end method

.method public getVariableValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "variableName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 445
    .local v1, variableValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variableResolver:Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

    if-eqz v2, :cond_0

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variableResolver:Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

    invoke-interface {v2, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;->resolveVariable(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    :cond_0
    if-nez v1, :cond_1

    .line 460
    iget-object v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #variableValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 463
    .restart local v1       #variableValue:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 465
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not resolve variable with name equal to \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 470
    .end local v0           #fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    :cond_2
    return-object v1
.end method

.method public getVariables()Ljava/util/Map;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    return-object v0
.end method

.method protected isExpressionString(Ljava/lang/String;)Z
    .locals 4
    .parameter "expressionString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1511
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    if-ne v2, v3, :cond_0

    .line 1521
    :goto_0
    return v0

    .line 1517
    :cond_0
    iget-char v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1518
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid use of quotes."

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 1521
    goto :goto_0
.end method

.method public isLoadMathVariables()Z
    .locals 1

    .prologue
    .line 1784
    iget-boolean v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    return v0
.end method

.method public isValidName(Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1545
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Variable is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1549
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1550
    .local v0, firstChar:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 1551
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not start with a number."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1556
    :cond_1
    const/16 v3, 0x27

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_2

    .line 1557
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a quote character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1559
    :cond_2
    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1560
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a quote character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1565
    :cond_3
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_4

    .line 1566
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain an open brace character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1568
    :cond_4
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_5

    .line 1569
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a closed brace character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1571
    :cond_5
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_6

    .line 1572
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a pound sign character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1577
    :cond_6
    iget-object v3, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1579
    .local v2, operatorIterator:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1580
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 1582
    .local v1, operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    invoke-interface {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_7

    .line 1583
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain an operator symbol."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1590
    .end local v1           #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    :cond_8
    const-string v3, "!"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_9

    .line 1591
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1593
    :cond_9
    const-string v3, "~"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_a

    .line 1594
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1596
    :cond_a
    const-string v3, "^"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_b

    .line 1597
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1599
    :cond_b
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_c

    .line 1600
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1603
    :cond_c
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 21
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 752
    const/16 v20, 0x1

    .line 753
    .local v20, parse:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 770
    :goto_0
    if-eqz v20, :cond_a

    .line 772
    :try_start_0
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    .line 773
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    .line 776
    const/4 v14, 0x0

    .line 777
    .local v14, haveOperand:Z
    const/16 v17, 0x0

    .line 778
    .local v17, haveOperator:Z
    const/4 v7, 0x0

    .line 782
    .local v7, unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    .line 783
    .local v19, numChars:I
    const/4 v4, 0x0

    .line 788
    .local v4, charCtr:I
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-ge v4, v0, :cond_9

    .line 789
    const/4 v11, 0x0

    .line 790
    .local v11, operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    const/4 v5, -0x1

    .line 793
    .local v5, operatorIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationHelper;->isSpace(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    add-int/lit8 v4, v4, 0x1

    .line 795
    goto :goto_1

    .line 764
    .end local v4           #charCtr:I
    .end local v5           #operatorIndex:I
    .end local v7           #unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v11           #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v14           #haveOperand:Z
    .end local v17           #haveOperator:Z
    .end local v19           #numChars:I
    :cond_1
    const/16 v20, 0x0

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousOperatorStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousOperandStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    goto :goto_0

    .line 799
    .restart local v4       #charCtr:I
    .restart local v5       #operatorIndex:I
    .restart local v7       #unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .restart local v11       #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .restart local v14       #haveOperand:Z
    .restart local v17       #haveOperator:Z
    .restart local v19       #numChars:I
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getNextOperator(Ljava/lang/String;ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;

    move-result-object v18

    .line 802
    .local v18, nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    if-eqz v18, :cond_3

    .line 803
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v11

    .line 804
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v5

    .line 808
    :cond_3
    if-gt v5, v4, :cond_4

    const/4 v2, -0x1

    if-ne v5, v2, :cond_5

    .line 809
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processOperand(Ljava/lang/String;IILjava/util/Stack;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)I

    move-result v4

    .line 812
    const/4 v14, 0x1

    .line 813
    const/16 v17, 0x0

    .line 814
    const/4 v7, 0x0

    .line 818
    :cond_5
    if-ne v5, v4, :cond_0

    .line 819
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v2

    invoke-interface {v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;->isUnary()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v17, :cond_6

    if-nez v4, :cond_8

    .line 821
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processUnaryOperator(ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)I

    move-result v4

    .line 824
    if-nez v7, :cond_7

    .line 826
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v7

    .line 841
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;->getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    move-result-object v2

    instance-of v2, v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-nez v2, :cond_0

    .line 842
    const/4 v14, 0x0

    .line 843
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 828
    :cond_7
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Consecutive unary operators are not allowed (index="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 856
    .end local v4           #charCtr:I
    .end local v5           #operatorIndex:I
    .end local v7           #unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v11           #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v14           #haveOperand:Z
    .end local v17           #haveOperator:Z
    .end local v18           #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    .end local v19           #numChars:I
    :catch_0
    move-exception v16

    .line 858
    .local v16, e:Ljava/lang/Exception;
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 860
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 834
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v4       #charCtr:I
    .restart local v5       #operatorIndex:I
    .restart local v7       #unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .restart local v11       #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .restart local v14       #haveOperand:Z
    .restart local v17       #haveOperator:Z
    .restart local v18       #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    .restart local v19       #numChars:I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v5

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processOperator(Ljava/lang/String;ILcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Ljava/util/Stack;Ljava/util/Stack;ZLcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)I

    move-result v4

    .line 838
    const/4 v7, 0x0

    goto :goto_2

    .line 849
    .end local v5           #operatorIndex:I
    .end local v11           #operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v18           #nextOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/NextOperator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousOperatorStack:Ljava/util/Stack;

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->previousOperandStack:Ljava/util/Stack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 862
    .end local v4           #charCtr:I
    .end local v7           #unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .end local v14           #haveOperand:Z
    .end local v17           #haveOperator:Z
    .end local v19           #numChars:I
    :cond_a
    return-void
.end method

.method protected processNestedFunctions(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2c

    .line 1728
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1731
    .local v11, evaluatedArguments:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1733
    new-instance v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    iget-char v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    iget-boolean v2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    iget-boolean v3, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    iget-boolean v4, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    iget-boolean v5, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    invoke-direct/range {v0 .. v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 1736
    .local v0, argumentsEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->setFunctions(Ljava/util/Map;)V

    .line 1737
    invoke-virtual {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->setVariables(Ljava/util/Map;)V

    .line 1738
    invoke-virtual {p0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariableResolver()Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->setVariableResolver(Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;)V

    .line 1740
    new-instance v12, Lcom/baidu/themeanimation/net/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v12, p1, v13}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 1743
    .local v12, tokenizer:Lcom/baidu/themeanimation/net/sourceforge/jeval/ArgumentTokenizer;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1744
    .local v8, evalautedArgumentList:Ljava/util/List;
    :goto_0
    invoke-virtual {v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    invoke-virtual {v12}, Lcom/baidu/themeanimation/net/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1749
    .local v6, argument:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1754
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1750
    :catch_0
    move-exception v7

    .line 1751
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1757
    .end local v6           #argument:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1760
    .local v10, evaluatedArgumentIterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1762
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1764
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1768
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1770
    .local v9, evaluatedArgument:Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1774
    .end local v0           #argumentsEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;
    .end local v8           #evalautedArgumentList:Ljava/util/List;
    .end local v9           #evaluatedArgument:Ljava/lang/String;
    .end local v10           #evaluatedArgumentIterator:Ljava/util/Iterator;
    .end local v12           #tokenizer:Lcom/baidu/themeanimation/net/sourceforge/jeval/ArgumentTokenizer;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public putFunction(Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 333
    invoke-interface {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;

    .line 339
    .local v0, existingFunction:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;
    if-nez v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void

    .line 342
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A function with the same name already exists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "variableName"
    .parameter "variableValue"

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public removeFunction(Ljava/lang/String;)V
    .locals 2
    .parameter "functionName"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The function does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeVaraible(Ljava/lang/String;)V
    .locals 2
    .parameter "variableName"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The variable does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceVariables(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 1652
    sget-object v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1654
    .local v3, openIndex:I
    if-gez v3, :cond_0

    .line 1712
    .end local p1
    :goto_0
    return-object p1

    .line 1658
    .restart local p1
    :cond_0
    move-object v4, p1

    .line 1660
    .local v4, replacedExpression:Ljava/lang/String;
    :goto_1
    if-ltz v3, :cond_2

    .line 1662
    const/4 v0, -0x1

    .line 1663
    .local v0, closedIndex:I
    if-ltz v3, :cond_1

    .line 1665
    sget-object v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->CLOSED_VARIABLE:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1667
    if-le v0, v3, :cond_2

    .line 1669
    sget-object v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1676
    .local v5, variableName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1684
    .local v7, variableValue:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->CLOSED_VARIABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1688
    .local v6, variableString:Ljava/lang/String;
    invoke-static {v4, v6, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationHelper;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1699
    .end local v5           #variableName:Ljava/lang/String;
    .end local v6           #variableString:Ljava/lang/String;
    .end local v7           #variableValue:Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1701
    goto :goto_1

    .line 1677
    .restart local v5       #variableName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1678
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid variable name of \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 1704
    .end local v0           #closedIndex:I
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    .end local v5           #variableName:Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1706
    .local v2, openBraceIndex:I
    const/4 v8, -0x1

    if-le v2, v8, :cond_3

    .line 1707
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "A variable has not been closed (index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object p1, v4

    .line 1712
    goto/16 :goto_0
.end method

.method public setFunctions(Ljava/util/Map;)V
    .locals 0
    .parameter "functions"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    .line 402
    return-void
.end method

.method public setQuoteCharacter(C)V
    .locals 2
    .parameter "quoteCharacter"

    .prologue
    .line 312
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 314
    :cond_0
    iput-char p1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->quoteCharacter:C

    .line 318
    return-void

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableResolver(Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;)V
    .locals 0
    .parameter "variableResolver"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variableResolver:Lcom/baidu/themeanimation/net/sourceforge/jeval/VariableResolver;

    .line 538
    return-void
.end method

.method public setVariables(Ljava/util/Map;)V
    .locals 0
    .parameter "variables"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    .line 515
    return-void
.end method