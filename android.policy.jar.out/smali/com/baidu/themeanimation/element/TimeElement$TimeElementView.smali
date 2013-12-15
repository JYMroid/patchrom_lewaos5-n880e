.class public Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
.super Landroid/widget/LinearLayout;
.source "TimeElement.java"

# interfaces
.implements Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/TimeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeElementView"
.end annotation


# instance fields
.field private mHour:I

.field private mMinute:I

.field private mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/TimeElement;Landroid/content/Context;)V
    .locals 12
    .parameter "timeElement"
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 120
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    .line 123
    invoke-virtual {p0, v11}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->setOrientation(I)V

    .line 125
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/TimeElement;->getX()I

    move-result v5

    .line 129
    .local v5, posX:I
    iget-object v10, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/TimeElement;->getY()I

    move-result v6

    .line 131
    .local v6, posY:I
    invoke-virtual {v2, v5, v6, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 137
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 138
    iget v9, v8, Landroid/text/format/Time;->year:I

    .line 139
    .local v9, year:I
    iget v4, v8, Landroid/text/format/Time;->month:I

    .line 140
    .local v4, month:I
    iget v0, v8, Landroid/text/format/Time;->monthDay:I

    .line 141
    .local v0, day:I
    iget v3, v8, Landroid/text/format/Time;->minute:I

    .line 142
    .local v3, minute:I
    iget v1, v8, Landroid/text/format/Time;->hour:I

    .line 143
    .local v1, hour:I
    iget v7, v8, Landroid/text/format/Time;->second:I

    .line 144
    .local v7, second:I
    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 145
    iput v3, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    .line 155
    div-int/lit8 v10, v1, 0xa

    invoke-direct {p0, v10, p2}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 156
    rem-int/lit8 v10, v1, 0xa

    invoke-direct {p0, v10, p2}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 157
    const/16 v10, 0x3a

    invoke-direct {p0, v10, p2}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 158
    div-int/lit8 v10, v3, 0xa

    invoke-direct {p0, v10, p2}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 159
    rem-int/lit8 v10, v3, 0xa

    invoke-direct {p0, v10, p2}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->adjustPosition()V

    .line 163
    iget-object v10, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v10, p0}, Lcom/baidu/themeanimation/element/TimeElement;->setOnTimeTick(Lcom/baidu/themeanimation/element/BaseElement$OnTimeTick;)V

    .line 164
    return-void
.end method

.method private createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;
    .locals 5
    .parameter "digit"
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    .line 254
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, srcPath:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-object v1
.end method

.method private getFilePath(I)Ljava/lang/String;
    .locals 4
    .parameter "digit"

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TimeElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, filename:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 239
    .local v0, dotIndex:I
    if-ltz p1, :cond_1

    const/16 v2, 0x9

    if-gt p1, v2, :cond_1

    .line 240
    if-lez v0, :cond_0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_0
    :goto_0
    return-object v1

    .line 244
    :cond_1
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_0

    .line 245
    if-lez v0, :cond_0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method adjustPosition()V
    .locals 6

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 172
    .local v3, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 174
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_1

    .line 182
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/TimeElement;->getAlign()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 183
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/TimeElement;->getX()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 187
    :cond_1
    return-void
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->refresh()V

    .line 267
    return-void
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 190
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 191
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 192
    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 193
    .local v0, hour:I
    iget v2, v3, Landroid/text/format/Time;->minute:I

    .line 196
    .local v2, minute:I
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    .line 197
    .local v4, zipHelper:Lcom/baidu/themeanimation/util/FileUtil;
    iget v5, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    if-eq v5, v0, :cond_2

    .line 198
    iget v5, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    div-int/lit8 v5, v5, 0xa

    div-int/lit8 v6, v0, 0xa

    if-eq v5, v6, :cond_0

    .line 199
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 200
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 201
    div-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    iget v5, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    rem-int/lit8 v5, v5, 0xa

    rem-int/lit8 v6, v0, 0xa

    if-eq v5, v6, :cond_1

    .line 207
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 208
    .restart local v1       #imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 209
    rem-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_1
    iput v0, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 216
    :cond_2
    iget v5, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    if-eq v5, v2, :cond_5

    .line 217
    iget v5, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    div-int/lit8 v5, v5, 0xa

    div-int/lit8 v6, v2, 0xa

    if-eq v5, v6, :cond_3

    .line 218
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 219
    .restart local v1       #imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 220
    div-int/lit8 v5, v2, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_3
    iget v5, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    rem-int/lit8 v5, v5, 0xa

    rem-int/lit8 v6, v2, 0xa

    if-eq v5, v6, :cond_4

    .line 226
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 227
    .restart local v1       #imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 228
    rem-int/lit8 v5, v2, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_4
    iput v2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    .line 234
    :cond_5
    return-void
.end method
