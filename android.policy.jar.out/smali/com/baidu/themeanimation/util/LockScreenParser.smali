.class public Lcom/baidu/themeanimation/util/LockScreenParser;
.super Ljava/lang/Object;
.source "LockScreenParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenParser"

.field static mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

.field static final mInstanceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/baidu/themeanimation/util/LockScreenParser;
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    monitor-exit v1

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/util/LockScreenParser;

    invoke-direct {v0}, Lcom/baidu/themeanimation/util/LockScreenParser;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private inflateAnimationImage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/AnimationImageViewElement;
    .locals 13
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    const-string v9, "LockScreenParser"

    const-string v10, "AnimationImageViewElement"

    invoke-static {v9, v10}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, aniElement:Lcom/baidu/themeanimation/element/AnimationImageViewElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 278
    .local v4, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AnimationImage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x2

    if-ne v4, v9, :cond_1

    .line 280
    new-instance v0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;

    .end local v0           #aniElement:Lcom/baidu/themeanimation/element/AnimationImageViewElement;
    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;-><init>()V

    .line 287
    .restart local v0       #aniElement:Lcom/baidu/themeanimation/element/AnimationImageViewElement;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 288
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, attrValue:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 297
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v6           #method:Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #methodName:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 306
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, name:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 310
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 312
    :goto_2
    const/4 v9, 0x1

    if-eq v4, v9, :cond_1

    .line 313
    const/4 v9, 0x3

    if-ne v4, v9, :cond_2

    const-string v9, "AnimationImage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 353
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    return-object v0

    .line 342
    .restart local v5       #i:I
    .restart local v8       #name:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    .line 343
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->getAnimatorParser()Lcom/baidu/themeanimation/element/AnimatorParser;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 346
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 347
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private inflateContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/manager/ContentManager$Content;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, content:Lcom/baidu/themeanimation/manager/ContentManager$Content;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 386
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderBinder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderBinder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-ne v1, v6, :cond_1

    .line 391
    new-instance v0, Lcom/baidu/themeanimation/manager/ContentManager$Content;

    .end local v0           #content:Lcom/baidu/themeanimation/manager/ContentManager$Content;
    invoke-direct {v0}, Lcom/baidu/themeanimation/manager/ContentManager$Content;-><init>()V

    .line 392
    .restart local v0       #content:Lcom/baidu/themeanimation/manager/ContentManager$Content;
    invoke-static {p1, v0, v5}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;I)V

    .line 395
    :goto_0
    if-eq v1, v5, :cond_1

    .line 396
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderBinder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderBinder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    :cond_1
    return-object v0

    .line 403
    :cond_2
    if-ne v1, v6, :cond_4

    .line 406
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, name:Ljava/lang/String;
    const-string v3, "Variable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Variable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 410
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateContentVariable(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->addContentVariable(Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;)V

    .line 414
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method

.method private inflateContentVariable(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, contentValues:Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 360
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Variable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Variable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 364
    new-instance v0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;

    .end local v0           #contentValues:Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    invoke-direct {v0}, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;-><init>()V

    .line 365
    .restart local v0       #contentValues:Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    invoke-static {p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 367
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 368
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Variable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Variable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    :cond_1
    return-object v0

    .line 375
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method

.method private inflateDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/DateElement;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, dateElement:Lcom/baidu/themeanimation/element/DateElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 426
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 430
    new-instance v0, Lcom/baidu/themeanimation/element/DateElement;

    .end local v0           #dateElement:Lcom/baidu/themeanimation/element/DateElement;
    invoke-direct {v0}, Lcom/baidu/themeanimation/element/DateElement;-><init>()V

    .line 431
    .restart local v0       #dateElement:Lcom/baidu/themeanimation/element/DateElement;
    invoke-static {p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 433
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 434
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    :cond_1
    return-object v0

    .line 440
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method

.method private inflateEndPoint(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 730
    new-instance v0, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;-><init>()V

    .line 733
    .local v0, endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    invoke-static {p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 739
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 740
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, parserName:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 743
    const-string v4, "NormalState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 744
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->setNormalElements(Ljava/util/List;)V

    .line 792
    :cond_1
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EndPoint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-ne v1, v6, :cond_0

    .line 799
    :cond_3
    return-object v0

    .line 745
    :cond_4
    const-string v4, "PressedState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 747
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->setPressedElements(Ljava/util/List;)V

    goto :goto_0

    .line 748
    :cond_5
    const-string v4, "ReachedState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 750
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->setReachedElements(Ljava/util/List;)V

    goto :goto_0

    .line 751
    :cond_6
    const-string v4, "Intent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 752
    new-instance v2, Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;

    invoke-direct {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;-><init>()V

    .line 753
    .local v2, intentWrapper:Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;
    invoke-static {p1, v2, v6}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;I)V

    .line 755
    invoke-virtual {v0, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->setIntent(Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;)V

    goto :goto_0

    .line 786
    .end local v2           #intentWrapper:Lcom/baidu/themeanimation/element/UnlockerElement$IntentWrapper;
    :cond_7
    const-string v4, "Path"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 788
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateLockPath(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->setLockPath(Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;)V

    goto :goto_0
.end method

.method private inflateLockPath(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 689
    new-instance v2, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    invoke-direct {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;-><init>()V

    .line 691
    .local v2, lockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
    invoke-static {p1, v2}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 692
    const/4 v1, 0x0

    .line 694
    .local v1, index:I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 695
    .local v0, eventType:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 696
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, parserName:Ljava/lang/String;
    const-string v5, "Position"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 702
    if-nez v1, :cond_5

    .line 704
    new-instance v4, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    invoke-direct {v4}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;-><init>()V

    .line 705
    .local v4, position:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;
    invoke-static {p1, v4}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 706
    invoke-virtual {v2, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->setStartPoint(Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;)V

    .line 713
    .end local v4           #position:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 717
    .end local v3           #parserName:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Path"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-ne v0, v7, :cond_0

    .line 724
    :cond_4
    return-object v2

    .line 707
    .restart local v3       #parserName:Ljava/lang/String;
    :cond_5
    if-ne v1, v7, :cond_1

    .line 709
    new-instance v4, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    invoke-direct {v4}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;-><init>()V

    .line 710
    .restart local v4       #position:Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;
    invoke-static {p1, v4}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 711
    invoke-virtual {v2, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->setEndPoint(Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;)V

    goto :goto_0
.end method

.method private inflateStartPoint(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 647
    const/4 v2, 0x0

    .line 649
    .local v2, startPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 650
    .local v0, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StartPoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v0, v5, :cond_3

    .line 653
    new-instance v2, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    .end local v2           #startPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;-><init>()V

    .line 654
    .restart local v2       #startPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-static {p1, v2}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 660
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 661
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, parserName:Ljava/lang/String;
    if-ne v0, v5, :cond_1

    .line 663
    const-string v3, "NormalState"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setNormalElements(Ljava/util/List;)V

    .line 674
    :cond_1
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StartPoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 682
    .end local v1           #parserName:Ljava/lang/String;
    :cond_3
    return-object v2

    .line 665
    .restart local v1       #parserName:Ljava/lang/String;
    :cond_4
    const-string v3, "PressedState"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 667
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setPressedElements(Ljava/util/List;)V

    goto :goto_0

    .line 668
    :cond_5
    const-string v3, "ReachedState"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->setReachedElements(Ljava/util/List;)V

    goto :goto_0
.end method

.method private inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, stateName:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 609
    .local v1, eventType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 610
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, parserName:Ljava/lang/String;
    const-string v4, "Image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ImageElement"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 614
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateImageElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ImageElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v2           #parserName:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 641
    :cond_4
    return-object v0

    .line 615
    .restart local v2       #parserName:Ljava/lang/String;
    :cond_5
    const-string v4, "Text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "TextElement"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 618
    :cond_6
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateTextElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TextElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_7
    const-string v4, "DateTime"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "DateElement"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 622
    :cond_8
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/DateElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    :cond_9
    const-string v4, "Time"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "TimeElement"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 626
    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateTime(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TimeElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_b
    const-string v4, "Wallpaper"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "WallpaperElement"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    :cond_c
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateWallpaper(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/WallpaperElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private inflateVariableBinders(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, contentValues:Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 233
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VariableBinders"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VariableBinders"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    if-ne v1, v6, :cond_5

    .line 238
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 239
    :goto_0
    if-eq v1, v5, :cond_5

    .line 240
    if-ne v1, v6, :cond_4

    .line 243
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "ContentProviderBinder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ContentProviderBinder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    :cond_1
    :goto_1
    if-eq v1, v5, :cond_2

    .line 248
    if-ne v1, v7, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderBinder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderBinder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    .end local v2           #tagName:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 254
    .restart local v2       #tagName:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 258
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    if-ne v1, v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VariableBinders"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VariableBinders"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    :cond_5
    return-object v0
.end method


# virtual methods
.method public inflate(Ljava/io/InputStream;)Lcom/baidu/themeanimation/element/LockScreenElement;
    .locals 7
    .parameter "manifestStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, lsElement:Lcom/baidu/themeanimation/element/LockScreenElement;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 72
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->reset()V

    .line 74
    invoke-virtual {v1, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 75
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 76
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 78
    .local v0, eventType:I
    :goto_0
    if-eq v0, v6, :cond_4

    .line 80
    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 83
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, tagNameString:Ljava/lang/String;
    const-string v5, "Lockscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "BaiduLockscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateLockScreen(Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/baidu/themeanimation/element/LockScreenElement;

    move-result-object v2

    goto :goto_1

    .line 89
    .end local v4           #tagNameString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 91
    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    goto :goto_1

    .line 98
    :cond_4
    return-object v2
.end method

.method public inflateButtonElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ButtonElement;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, buttonElement:Lcom/baidu/themeanimation/element/ButtonElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 848
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Button"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ButtonElement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    if-ne v1, v6, :cond_3

    .line 851
    new-instance v0, Lcom/baidu/themeanimation/element/ButtonElement;

    .end local v0           #buttonElement:Lcom/baidu/themeanimation/element/ButtonElement;
    invoke-direct {v0}, Lcom/baidu/themeanimation/element/ButtonElement;-><init>()V

    .line 853
    .restart local v0       #buttonElement:Lcom/baidu/themeanimation/element/ButtonElement;
    invoke-static {p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 857
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 859
    if-ne v1, v6, :cond_2

    .line 860
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, parserName:Ljava/lang/String;
    const-string v4, "Normal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 862
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/themeanimation/element/ButtonElement;->setNormalState(Ljava/util/List;)V

    .line 873
    .end local v2           #parserName:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Button"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ButtonElement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 881
    :cond_3
    return-object v0

    .line 863
    .restart local v2       #parserName:Ljava/lang/String;
    :cond_4
    const-string v4, "Pressed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 864
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateState(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/themeanimation/element/ButtonElement;->setPressedState(Ljava/util/List;)V

    goto :goto_0

    .line 865
    :cond_5
    const-string v4, "Trigger"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 866
    new-instance v3, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;

    invoke-direct {v3}, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;-><init>()V

    .line 867
    .local v3, trigger:Lcom/baidu/themeanimation/element/ButtonElement$Trigger;
    invoke-static {p1, v3}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 868
    invoke-virtual {v0, v3}, Lcom/baidu/themeanimation/element/ButtonElement;->addTrigger(Lcom/baidu/themeanimation/element/ButtonElement$Trigger;)V

    goto :goto_0
.end method

.method public inflateImageElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ImageElement;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 958
    const/4 v3, 0x0

    .line 959
    .local v3, imageElement:Lcom/baidu/themeanimation/element/ImageElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 961
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImageElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    if-ne v2, v7, :cond_7

    .line 966
    new-instance v3, Lcom/baidu/themeanimation/element/ImageElement;

    .end local v3           #imageElement:Lcom/baidu/themeanimation/element/ImageElement;
    invoke-direct {v3}, Lcom/baidu/themeanimation/element/ImageElement;-><init>()V

    .line 968
    .restart local v3       #imageElement:Lcom/baidu/themeanimation/element/ImageElement;
    invoke-static {p1, v3}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 972
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 974
    const/4 v1, 0x0

    .line 976
    .local v1, animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 977
    if-ne v2, v7, :cond_5

    .line 981
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, name:Ljava/lang/String;
    const-string v5, "Mask"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ImageFilter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 986
    :cond_1
    invoke-virtual {v3, p1}, Lcom/baidu/themeanimation/element/ImageElement;->inflateMask(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1010
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 988
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->inflaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/BaseAnimationElement;

    move-result-object v0

    .line 991
    .local v0, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    if-eqz v0, :cond_2

    .line 992
    if-nez v1, :cond_4

    .line 993
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .restart local v1       #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1000
    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 1001
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImageElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1012
    :cond_6
    invoke-virtual {v3, v1}, Lcom/baidu/themeanimation/element/ImageElement;->setAnimationElements(Ljava/util/List;)V

    .line 1015
    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_7
    return-object v3
.end method

.method public inflateLockScreen(Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/baidu/themeanimation/element/LockScreenElement;
    .locals 13
    .parameter "parser"
    .parameter "inPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 103
    new-instance v5, Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-direct {v5}, Lcom/baidu/themeanimation/element/LockScreenElement;-><init>()V

    .line 105
    .local v5, lsElement:Lcom/baidu/themeanimation/element/LockScreenElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 109
    .local v3, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lockscreen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BaiduLockscreen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    :cond_0
    if-ne v3, v10, :cond_20

    .line 114
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 115
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, attrValue:Ljava/lang/String;
    :try_start_0
    const-string v7, "version"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->setVersion(I)V

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_2
    const-string v7, "frameRate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->setFrameRate(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "LockScreenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v7, "displayDesktop"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    const-string v7, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->setDisplayDesktop(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 134
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 135
    :goto_2
    if-eq v3, v11, :cond_20

    .line 136
    if-ne v3, v10, :cond_6

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, tagName:Ljava/lang/String;
    const-string v7, "Image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ImageElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 146
    :cond_5
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateImageElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ImageElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    .line 222
    .end local v6           #tagName:Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_2

    .line 147
    .restart local v6       #tagName:Ljava/lang/String;
    :cond_7
    const-string v7, "Text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "TextElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 150
    :cond_8
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateTextElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TextElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_3

    .line 151
    :cond_9
    const-string v7, "Time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "TimeElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 153
    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateTime(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TimeElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_3

    .line 154
    :cond_b
    const-string v7, "Wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "WallpaperElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 156
    :cond_c
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateWallpaper(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/WallpaperElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_3

    .line 157
    :cond_d
    const-string v7, "Unlocker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "UnlockerElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 159
    :cond_e
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateUnlockerElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_3

    .line 160
    :cond_f
    const-string v7, "Button"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "ButtonElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 162
    :cond_10
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateButtonElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ButtonElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_3

    .line 163
    :cond_11
    const-string v7, "MusicControl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string v7, "MusicControlElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 168
    :cond_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MusicControl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MusicControlElement"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_13
    if-ne v3, v10, :cond_6

    .line 172
    :goto_4
    if-eq v3, v11, :cond_6

    .line 173
    if-ne v3, v12, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MusicControl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MusicControlElement"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 180
    :cond_14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_4

    .line 183
    :cond_15
    const-string v7, "DateTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "DateElement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 185
    :cond_16
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/DateElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto/16 :goto_3

    .line 186
    :cond_17
    const-string v7, "ContentProviderBinder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "ContentProviderBinder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 190
    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContentProviderBinder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContentProviderBinder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_19
    if-ne v3, v10, :cond_6

    .line 193
    :goto_5
    if-eq v3, v11, :cond_6

    .line 194
    if-ne v3, v12, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContentProviderBinder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContentProviderBinder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 200
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_5

    .line 203
    :cond_1b
    const-string v7, "Var"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "Variable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 205
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateVar(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/VarElement;

    goto/16 :goto_3

    .line 206
    :cond_1d
    const-string v7, "VariableBinders"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "VariableBinders"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 208
    :cond_1e
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateVariableBinders(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;

    goto/16 :goto_3

    .line 209
    :cond_1f
    const-string v7, "AnimationImage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 210
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateAnimationImage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/AnimationImageViewElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto/16 :goto_3

    .line 226
    .end local v4           #i:I
    .end local v6           #tagName:Ljava/lang/String;
    :cond_20
    return-object v5
.end method

.method public inflateMCElement(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/LockScreenElement;)Lcom/baidu/themeanimation/element/BaseElement;
    .locals 6
    .parameter "parser"
    .parameter "lsElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 887
    const/4 v1, 0x0

    .line 888
    .local v1, musicControlElement:Lcom/baidu/themeanimation/element/MusicControlElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 889
    .local v0, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicControl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicControlElement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    if-ne v0, v5, :cond_5

    .line 892
    new-instance v1, Lcom/baidu/themeanimation/element/MusicControlElement;

    .end local v1           #musicControlElement:Lcom/baidu/themeanimation/element/MusicControlElement;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/MusicControlElement;-><init>()V

    .line 894
    .restart local v1       #musicControlElement:Lcom/baidu/themeanimation/element/MusicControlElement;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 898
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 900
    if-ne v0, v5, :cond_3

    .line 901
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, parserName:Ljava/lang/String;
    const-string v3, "Image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ImageElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 906
    :cond_2
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateImageElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ImageElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/MusicControlElement;->addElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    .line 939
    .end local v2           #parserName:Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicControl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicControlElement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    :cond_4
    invoke-virtual {p2, v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->addElements(Lcom/baidu/themeanimation/element/BaseElement;)V

    .line 948
    :cond_5
    return-object v1

    .line 908
    .restart local v2       #parserName:Ljava/lang/String;
    :cond_6
    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "TextElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 912
    :cond_7
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateTextElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TextElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/MusicControlElement;->addElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_0

    .line 914
    :cond_8
    const-string v3, "DateTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "DateElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 918
    :cond_9
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/DateElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/MusicControlElement;->addElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_0

    .line 919
    :cond_a
    const-string v3, "Time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "TimeElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 923
    :cond_b
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateTime(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TimeElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/MusicControlElement;->addElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_0

    .line 924
    :cond_c
    const-string v3, "Wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "WallpaperElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 928
    :cond_d
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateWallpaper(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/WallpaperElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/MusicControlElement;->addElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto :goto_0

    .line 930
    :cond_e
    const-string v3, "Button"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "ButtonElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 934
    :cond_f
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateButtonElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/ButtonElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/MusicControlElement;->addElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    goto/16 :goto_0
.end method

.method public inflateTextElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TextElement;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 1025
    const/4 v4, 0x0

    .line 1027
    .local v4, textElement:Lcom/baidu/themeanimation/element/TextElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1029
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_0
    if-ne v2, v7, :cond_6

    .line 1034
    new-instance v4, Lcom/baidu/themeanimation/element/TextElement;

    .end local v4           #textElement:Lcom/baidu/themeanimation/element/TextElement;
    invoke-direct {v4}, Lcom/baidu/themeanimation/element/TextElement;-><init>()V

    .line 1036
    .restart local v4       #textElement:Lcom/baidu/themeanimation/element/TextElement;
    invoke-static {p1, v4}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 1037
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/TextElement;->getCategory()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1044
    :cond_1
    const/4 v1, 0x0

    .line 1046
    .local v1, animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :goto_0
    if-ne v2, v7, :cond_4

    .line 1048
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1050
    .local v3, name:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->inflaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/BaseAnimationElement;

    move-result-object v0

    .line 1052
    .local v0, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    if-eqz v0, :cond_3

    .line 1053
    if-nez v1, :cond_2

    .line 1054
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .restart local v1       #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 1061
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 1062
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1073
    :cond_5
    invoke-virtual {v4, v1}, Lcom/baidu/themeanimation/element/TextElement;->setAnimationElements(Ljava/util/List;)V

    .line 1076
    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_6
    return-object v4
.end method

.method public inflateTime(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/TimeElement;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    const/4 v1, 0x0

    .line 519
    .local v1, timeElement:Lcom/baidu/themeanimation/element/TimeElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 520
    .local v0, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 524
    new-instance v1, Lcom/baidu/themeanimation/element/TimeElement;

    .end local v1           #timeElement:Lcom/baidu/themeanimation/element/TimeElement;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/TimeElement;-><init>()V

    .line 525
    .restart local v1       #timeElement:Lcom/baidu/themeanimation/element/TimeElement;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 527
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 528
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeElement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    :cond_1
    return-object v1

    .line 534
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method public inflateUnlockerElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, unlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 807
    .local v0, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unlocker"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnlockerElement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-ne v0, v5, :cond_3

    .line 812
    new-instance v2, Lcom/baidu/themeanimation/element/UnlockerElement;

    .end local v2           #unlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;-><init>()V

    .line 814
    .restart local v2       #unlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;
    invoke-static {p1, v2}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 819
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 821
    if-ne v0, v5, :cond_2

    .line 822
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, parserName:Ljava/lang/String;
    const-string v3, "StartPoint"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 824
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateStartPoint(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->setStartPoint(Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)V

    .line 832
    .end local v1           #parserName:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unlocker"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnlockerElement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    :cond_3
    return-object v2

    .line 826
    .restart local v1       #parserName:Ljava/lang/String;
    :cond_4
    const-string v3, "EndPoint"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 828
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflateEndPoint(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->addEndPoint(Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;)V

    goto :goto_0
.end method

.method public inflateVar(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/VarElement;
    .locals 17
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v11, 0x0

    .line 449
    .local v11, varElement:Lcom/baidu/themeanimation/element/VarElement;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 450
    .local v7, eventType:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Var"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Variable"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    const/4 v12, 0x2

    if-ne v7, v12, :cond_2

    .line 454
    new-instance v11, Lcom/baidu/themeanimation/element/VarElement;

    .end local v11           #varElement:Lcom/baidu/themeanimation/element/VarElement;
    invoke-direct {v11}, Lcom/baidu/themeanimation/element/VarElement;-><init>()V

    .line 461
    .restart local v11       #varElement:Lcom/baidu/themeanimation/element/VarElement;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v8, v12, :cond_1

    .line 462
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, attrName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, attrValue:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 468
    .local v10, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v12, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 475
    .local v9, method:Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v9           #method:Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 477
    :catch_0
    move-exception v3

    .line 478
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 483
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v10           #methodName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "update"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 485
    .restart local v9       #method:Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/VarElement;->getExpression()Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_3

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/VarElement;->getExpression()Ljava/lang/String;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_3

    .line 487
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/VarElement;->getExpression()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    .line 502
    .end local v9           #method:Ljava/lang/reflect/Method;
    :goto_2
    const/4 v12, 0x1

    if-eq v7, v12, :cond_2

    .line 503
    const/4 v12, 0x3

    if-ne v7, v12, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Var"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Variable"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 513
    .end local v8           #i:I
    :cond_2
    return-object v11

    .line 489
    .restart local v8       #i:I
    .restart local v9       #method:Ljava/lang/reflect/Method;
    :cond_3
    :try_start_2
    new-instance v12, Lcom/baidu/themeanimation/manager/Expression;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/VarElement;->getExpression()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v11, v9}, Lcom/baidu/themeanimation/manager/Expression;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 492
    .end local v9           #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 493
    .local v4, e1:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 494
    .end local v4           #e1:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v5

    .line 495
    .local v5, e2:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 496
    .end local v5           #e2:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 497
    .local v6, e3:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 498
    .end local v6           #e3:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 499
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 509
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_2
.end method

.method public inflateWallpaper(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/WallpaperElement;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 544
    const/4 v4, 0x0

    .line 545
    .local v4, wallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 546
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    if-ne v2, v7, :cond_7

    .line 549
    new-instance v4, Lcom/baidu/themeanimation/element/WallpaperElement;

    .end local v4           #wallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;
    invoke-direct {v4}, Lcom/baidu/themeanimation/element/WallpaperElement;-><init>()V

    .line 550
    .restart local v4       #wallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;
    invoke-static {p1, v4}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 556
    if-ne v2, v7, :cond_5

    .line 559
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, name:Ljava/lang/String;
    const-string v5, "Mask"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ImageFilter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 563
    :cond_1
    const-string v5, "mask"

    const-string v6, "Generate Mask Element!"

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v4, p1}, Lcom/baidu/themeanimation/element/WallpaperElement;->inflateMask(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 590
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 566
    .restart local v3       #name:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->inflaAnimationElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/BaseAnimationElement;

    move-result-object v0

    .line 569
    .local v0, animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    if-eqz v0, :cond_2

    .line 570
    if-nez v1, :cond_4

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .restart local v1       #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/BaseAnimationElement;
    .end local v3           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 579
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    :cond_6
    invoke-virtual {v4, v1}, Lcom/baidu/themeanimation/element/WallpaperElement;->setAnimationElements(Ljava/util/List;)V

    .line 595
    .end local v1           #animationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseAnimationElement;>;"
    :cond_7
    return-object v4
.end method
