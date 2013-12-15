.class public Lcom/baidu/themeanimation/util/XmlParserHelper;
.super Ljava/lang/Object;
.source "XmlParserHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlParserHelper"

.field private static attrName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/BaseAnimationElement;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, name:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 152
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 153
    const-string v3, "AlphaAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-static {p0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->inflateAlphaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    const-string v3, "PositionAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-static {p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->inflatePositionAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/PositionAnimationElement;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    const-string v3, "RotationAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    invoke-static {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->inflateAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/RotateAnimationElement;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    const-string v3, "SizeAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    invoke-static {p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->inflateSizeAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/SizeAnimationElement;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_4
    const-string v3, "SourcesAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-static {p0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->inflateSourceAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/SourceAnimationElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static isNum(Ljava/lang/String;)I
    .locals 7
    .parameter "str"

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x2f

    const/4 v3, -0x1

    .line 127
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, chr:I
    const/4 v2, 0x1

    .line 130
    .local v2, result:I
    if-le v0, v5, :cond_0

    if-lt v0, v6, :cond_2

    :cond_0
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_2

    .line 143
    :cond_1
    :goto_0
    return v3

    .line 133
    :cond_2
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    if-le v0, v5, :cond_3

    if-ge v0, v6, :cond_3

    .line 133
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_3
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_1

    .line 138
    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    move v3, v2

    .line 143
    goto :goto_0
.end method

.method public static setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V
    .locals 1
    .parameter "parser"
    .parameter "receiver"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;I)V

    .line 29
    return-void
.end method

.method public static setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;I)V
    .locals 16
    .parameter "parser"
    .parameter "receiver"
    .parameter "type"

    .prologue
    .line 41
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v6, v12, :cond_7

    .line 42
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/baidu/themeanimation/util/XmlParserHelper;->attrName:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, attrValue:Ljava/lang/String;
    sget-object v12, Lcom/baidu/themeanimation/util/XmlParserHelper;->attrName:Ljava/lang/String;

    if-eqz v12, :cond_0

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/16 v12, 0x23

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 48
    .local v9, num1:I
    const/16 v12, 0x40

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 50
    .local v10, num2:I
    sget-object v12, Lcom/baidu/themeanimation/util/XmlParserHelper;->attrName:Ljava/lang/String;

    const-string v13, "name"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 51
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v1, v0}, Lcom/baidu/themeanimation/manager/ExpressionManager;->monitorElement(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/baidu/themeanimation/util/XmlParserHelper;->attrName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/baidu/themeanimation/util/XmlParserHelper;->attrName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v12, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 75
    .local v7, method:Ljava/lang/reflect/Method;
    sget-object v12, Lcom/baidu/themeanimation/util/XmlParserHelper;->attrName:Ljava/lang/String;

    const-string v13, "color"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v12

    if-nez v12, :cond_3

    if-gez v9, :cond_5

    if-gez v10, :cond_5

    .line 77
    :cond_3
    const/4 v12, 0x1

    :try_start_1
    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v3

    .line 80
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->isNum(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_4

    .line 82
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v12, "#"

    invoke-direct {v2, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, decimalFormat:Ljava/text/DecimalFormat;
    sget-object v12, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v12}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 84
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, realValue:Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 98
    .end local v2           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v11           #realValue:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 100
    .local v4, e2:Ljava/lang/Exception;
    const/4 v12, 0x1

    :try_start_3
    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "0"

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 105
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 91
    .end local v4           #e2:Ljava/lang/Exception;
    :cond_4
    :try_start_4
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v12, "#"

    invoke-direct {v2, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v2       #decimalFormat:Ljava/text/DecimalFormat;
    sget-object v12, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v12}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 93
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 96
    .restart local v11       #realValue:Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 112
    .end local v2           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v11           #realValue:Ljava/lang/String;
    :cond_5
    if-ltz v9, :cond_6

    if-gez v10, :cond_0

    .line 113
    :cond_6
    :try_start_5
    new-instance v12, Lcom/baidu/themeanimation/manager/Expression;

    move-object/from16 v0, p1

    invoke-direct {v12, v1, v0, v7}, Lcom/baidu/themeanimation/manager/Expression;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 116
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v12

    goto/16 :goto_1

    .line 121
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v8           #methodName:Ljava/lang/String;
    .end local v9           #num1:I
    .end local v10           #num2:I
    :cond_7
    const/4 v7, 0x0

    .line 122
    .restart local v7       #method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 123
    .local v5, expression:Lcom/baidu/themeanimation/manager/Expression;
    return-void
.end method
