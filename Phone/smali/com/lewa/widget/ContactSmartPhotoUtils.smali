.class public Lcom/lewa/widget/ContactSmartPhotoUtils;
.super Ljava/lang/Object;
.source "ContactSmartPhotoUtils.java"


# static fields
.field private static final HANDWRITING_FILEPATH:Ljava/lang/String; = "/system/fonts/TobysHand.ttf"

.field private static final TAG:Ljava/lang/String; = "ContactSmartPhotoUtils"

.field private static final WORD_PHOTO:Ljava/lang/String; = "smart_photo"

.field private static sAsiaLangPattern:Ljava/util/regex/Pattern;

.field private static sBitmap:Landroid/graphics/Bitmap;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sPt:Landroid/graphics/Paint;

.field private static suffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sPt:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sPt:Landroid/graphics/Paint;

    .line 40
    sget-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sPt:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 41
    sget-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sPt:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "name"
    .parameter "nameColor"
    .parameter "textSize"
    .parameter "photoSize"
    .parameter "bgResId"

    .prologue
    .line 45
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-nez p4, :cond_1

    .line 46
    :cond_0
    const/4 v7, 0x0

    .line 92
    :goto_0
    return-object v7

    .line 48
    :cond_1
    move-object/from16 v11, p1

    .line 49
    .local v11, wordName:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 50
    const/4 v7, 0x0

    goto :goto_0

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    .local v2, bgDrawable:Landroid/graphics/drawable/Drawable;
    if-lez p5, :cond_5

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    if-nez p4, :cond_3

    move-object v12, v2

    .line 56
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 61
    :cond_3
    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, p4

    move/from16 v1, p4

    invoke-direct {v9, v12, v13, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .local v9, rect:Landroid/graphics/Rect;
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p4

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 63
    .local v7, out:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v3, canvas:Landroid/graphics/Canvas;
    if-eqz v2, :cond_4

    .line 65
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    :cond_4
    const/4 v10, 0x0

    .line 70
    .local v10, top:F
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-static {v11}, Lcom/lewa/widget/ContactSmartPhotoUtils;->filterChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 75
    if-eqz v11, :cond_6

    .line 76
    move/from16 v0, p3

    int-to-float v12, v0

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 79
    .local v4, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v12, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v13, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v5, v12, v13

    .line 80
    .local v5, fontTotalHeight:F
    const/high16 v12, 0x4000

    div-float v12, v5, v12

    iget v13, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v6, v12, v13

    .line 81
    .local v6, offY:F
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    div-int/lit8 v13, p4, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, p4, 0x2

    int-to-float v14, v14

    add-float/2addr v14, v6

    invoke-virtual {v3, v12, v13, v14, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 57
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    .end local v5           #fontTotalHeight:F
    .end local v6           #offY:F
    .end local v7           #out:Landroid/graphics/Bitmap;
    .end local v8           #paint:Landroid/graphics/Paint;
    .end local v9           #rect:Landroid/graphics/Rect;
    .end local v10           #top:F
    :cond_5
    if-nez p4, :cond_3

    .line 58
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 87
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v7       #out:Landroid/graphics/Bitmap;
    .restart local v8       #paint:Landroid/graphics/Paint;
    .restart local v9       #rect:Landroid/graphics/Rect;
    .restart local v10       #top:F
    :cond_6
    move/from16 v0, p3

    int-to-float v12, v0

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 89
    .restart local v4       #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v12, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v13, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v5, v12, v13

    .line 90
    .restart local v5       #fontTotalHeight:F
    const/high16 v12, 0x4000

    div-float v12, v5, v12

    iget v13, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v6, v12, v13

    .line 91
    .restart local v6       #offY:F
    div-int/lit8 v12, p4, 0x4

    int-to-float v12, v12

    div-int/lit8 v13, p4, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v6

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v12, v13, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "nameColor"
    .parameter "textSize"
    .parameter "photoSize"
    .parameter "bgResId"
    .parameter "fgResId"

    .prologue
    .line 97
    invoke-static/range {p0 .. p5}, Lcom/lewa/widget/ContactSmartPhotoUtils;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p4, p5, p6}, Lcom/lewa/widget/ContactSmartPhotoUtils;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "bitmap"
    .parameter "photoSize"
    .parameter "bgResId"
    .parameter "fgResId"

    .prologue
    const/4 v5, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, localBitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-object v5

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 108
    .local v4, resource:Landroid/content/res/Resources;
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 109
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    .local v3, rect:Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    .local v1, localCanvas:Landroid/graphics/Canvas;
    invoke-static {v4, p1, p2, p3}, Lcom/lewa/widget/ContactSmartPhotoUtils;->cutBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    .line 118
    sget-object v5, Lcom/lewa/widget/ContactSmartPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    if-eqz p4, :cond_2

    .line 120
    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    .local v2, localDrawable2:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2           #localDrawable2:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v5, v0

    .line 129
    goto :goto_0

    .line 127
    .end local v1           #localCanvas:Landroid/graphics/Canvas;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #resource:Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    throw v5
.end method

.method private static cutBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V
    .locals 10
    .parameter "resources"
    .parameter "bitmap"
    .parameter "photoSize"
    .parameter "bgResId"

    .prologue
    const/4 v6, 0x0

    .line 133
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .local v4, rect:Landroid/graphics/Rect;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/lewa/widget/ContactSmartPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    .line 135
    sget-object v6, Lcom/lewa/widget/ContactSmartPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    sget-object v7, Lcom/lewa/widget/ContactSmartPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    if-eqz p3, :cond_0

    .line 137
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 139
    sget-object v6, Lcom/lewa/widget/ContactSmartPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    .end local v0           #bgDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 142
    .local v5, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 143
    .local v1, height:I
    const/4 v2, 0x0

    .line 144
    .local v2, k:I
    const/4 v3, 0x0

    .line 145
    .local v3, m:I
    if-le v5, v1, :cond_2

    .line 146
    sub-int v6, v5, v1

    div-int/lit8 v3, v6, 0x2

    .line 147
    move v5, v1

    .line 152
    :cond_1
    :goto_0
    sget-object v6, Lcom/lewa/widget/ContactSmartPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v5

    add-int v9, v2, v1

    invoke-direct {v7, v3, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v8, Lcom/lewa/widget/ContactSmartPhotoUtils;->sPt:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v7, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    return-void

    .line 148
    :cond_2
    if-ge v5, v1, :cond_1

    .line 149
    sub-int v6, v1, v5

    div-int/lit8 v2, v6, 0x2

    .line 150
    move v1, v5

    goto :goto_0
.end method

.method private static filterChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v0, filter:Ljava/lang/StringBuffer;
    sget-object v2, Lcom/lewa/widget/ContactSmartPhotoUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 175
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/lewa/widget/ContactSmartPhotoUtils;->isChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-static {p0}, Lcom/lewa/widget/ContactSmartPhotoUtils;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 p0, 0x0

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 165
    .local v0, i:I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local v0           #i:I
    .end local v1           #str:Ljava/lang/String;
    .end local p0
    :cond_1
    return-object p0
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 1
    .parameter "paramString"

    .prologue
    .line 169
    sget-object v0, Lcom/lewa/widget/ContactSmartPhotoUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "name"

    .prologue
    .line 185
    return-object p0
.end method
