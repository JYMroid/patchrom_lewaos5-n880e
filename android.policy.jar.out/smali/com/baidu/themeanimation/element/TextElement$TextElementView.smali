.class public Lcom/baidu/themeanimation/element/TextElement$TextElementView;
.super Landroid/view/View;
.source "TextElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/TextElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextElementView"
.end annotation


# static fields
.field private static final mTruncate:Ljava/lang/String; = "..."


# instance fields
.field private mEndIndex:I

.field private mTextHeight:I

.field private mTextWidth:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/TextElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/TextElement;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x2

    .line 203
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    .line 204
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 200
    iput v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    .line 201
    iput v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    .line 252
    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 206
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getX()I

    move-result v2

    .line 207
    .local v2, posX:I
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getY()I

    move-result v3

    .line 209
    .local v3, posY:I
    iget-object v4, p1, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v4, p1, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p1, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getAlign()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 217
    iget v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 222
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 223
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    .line 239
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    iget v5, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getW()I

    move-result v4

    if-lez v4, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getW()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->truncateText(I)V

    .line 250
    :cond_2
    return-void

    .line 218
    .end local v0           #fm:Landroid/graphics/Paint$FontMetrics;
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getAlign()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 219
    iget v4, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    sub-int/2addr v2, v4

    goto :goto_0
.end method

.method private truncateText(I)V
    .locals 8
    .parameter "length"

    .prologue
    .line 256
    const/4 v6, -0x1

    iput v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 257
    iget v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    if-ge p1, v6, :cond_0

    .line 259
    iget-object v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 263
    .local v0, end:I
    const/4 v1, 0x0

    .line 264
    .local v1, middle:I
    const/4 v3, 0x0

    .line 266
    .local v3, tempLength:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 267
    add-int v6, v2, v0

    div-int/lit8 v1, v6, 0x2

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, tempTextString:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v3, v6

    .line 273
    if-gt v3, p1, :cond_1

    add-int/lit8 v6, p1, -0xa

    if-le v3, v6, :cond_1

    .line 275
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 290
    .end local v0           #end:I
    .end local v1           #middle:I
    .end local v2           #start:I
    .end local v3           #tempLength:I
    .end local v4           #tempTextString:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 277
    .restart local v0       #end:I
    .restart local v1       #middle:I
    .restart local v2       #start:I
    .restart local v3       #tempLength:I
    .restart local v4       #tempTextString:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    :cond_1
    if-le v3, p1, :cond_2

    .line 278
    move v0, v1

    goto :goto_0

    .line 280
    :cond_2
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 281
    if-ne v2, v1, :cond_3

    .line 282
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 284
    :cond_3
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0x3fe999999999999aL

    .line 295
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v0, v0, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TextElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    if-ltz v0, :cond_1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v2, v2, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v2, v2, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public updateText(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    .line 311
    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 312
    if-eqz p1, :cond_3

    .line 315
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v2, v2, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, sd:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getW()I

    move-result v2

    if-lez v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getW()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 325
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getW()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->truncateText(I)V

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getAlign()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 328
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getX()I

    move-result v2

    iget v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 332
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getH()I

    move-result v2

    if-lez v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getH()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getW()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->truncateText(I)V

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getAlignV()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 337
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getY()I

    move-result v2

    iget v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 349
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #sd:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->requestLayout()V

    .line 350
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->invalidate()V

    .line 351
    return-void

    .line 329
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #sd:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getAlign()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 330
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getX()I

    move-result v2

    iget v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 338
    :cond_5
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getAlignV()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 339
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TextElement;->getY()I

    move-result v2

    iget v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method
