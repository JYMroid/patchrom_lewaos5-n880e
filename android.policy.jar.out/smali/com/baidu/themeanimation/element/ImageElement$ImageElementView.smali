.class public Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
.super Landroid/view/View;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageElementView"
.end annotation


# instance fields
.field debBoolean:Ljava/lang/Boolean;

.field private isUpdate:Z

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mType:I

.field private pdm:Landroid/graphics/PorterDuffXfermode;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/ImageElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/ImageElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/BaseElement;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "element"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 322
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    .line 323
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 314
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 315
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 316
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    .line 317
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMatrix:Landroid/graphics/Matrix;

    .line 320
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->isUpdate:Z

    .line 457
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->debBoolean:Ljava/lang/Boolean;

    .line 324
    iput p4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mType:I

    .line 325
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->updateImage()V

    .line 328
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->pdm:Landroid/graphics/PorterDuffXfermode;

    .line 329
    return-void
.end method


# virtual methods
.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 348
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 350
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 362
    const/4 v15, 0x0

    .line 363
    .local v15, x:I
    const/16 v16, 0x0

    .line 365
    .local v16, y:I
    const/4 v14, 0x0

    .line 366
    .local v14, width:I
    const/4 v9, 0x0

    .line 367
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 371
    :cond_1
    int-to-float v2, v15

    move/from16 v0, v16

    int-to-float v3, v0

    add-int v1, v15, v14

    int-to-float v4, v1

    add-int v1, v16, v9

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v12

    .line 377
    .local v12, sc:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->pdm:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getAngle()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getAlign()I

    move-result v1

    if-nez v1, :cond_3

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 398
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 399
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 406
    .end local v9           #height:I
    .end local v12           #sc:I
    .end local v14           #width:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 407
    :catch_0
    move-exception v8

    .line 408
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "exception-image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #height:I
    .restart local v12       #sc:I
    .restart local v14       #width:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_3
    const/16 v1, 0x9

    :try_start_1
    new-array v13, v1, [F

    .line 392
    .local v13, values:[F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 393
    const/4 v1, 0x2

    aget v1, v13, v1

    float-to-int v10, v1

    .line 394
    .local v10, sX:I
    const/4 v1, 0x5

    aget v1, v13, v1

    float-to-int v11, v1

    .line 395
    .local v11, sY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getX()I

    move-result v2

    sub-int/2addr v2, v10

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getY()I

    move-result v3

    sub-int/2addr v3, v11

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 401
    .end local v9           #height:I
    .end local v10           #sX:I
    .end local v11           #sY:I
    .end local v12           #sc:I
    .end local v13           #values:[F
    .end local v14           #width:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/BaseElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 415
    invoke-super {p0, v1, v1}, Landroid/view/View;->onMeasure(II)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x1

    .line 426
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, iWidth:I
    const/4 v0, 0x0

    .line 431
    .local v0, iHeight:I
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 432
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 433
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 436
    :cond_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getX()I

    move-result v3

    .line 437
    .local v3, posX:I
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getY()I

    move-result v4

    .line 438
    .local v4, posY:I
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getAlign()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 440
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    .line 445
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getAlignV()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 446
    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    .line 451
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 452
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 453
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 454
    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    return-void

    .line 441
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getAlign()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 442
    sub-int/2addr v3, v1

    goto :goto_0

    .line 447
    :cond_4
    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getAlignV()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 448
    sub-int/2addr v4, v0

    goto :goto_1
.end method

.method public updateImage()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->updateSrc()V

    .line 334
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    .line 337
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/ImageElement$ImageMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageMask;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, filename:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 340
    .end local v0           #filename:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateSrc()V
    .locals 13

    .prologue
    const/16 v12, -0x3e8

    const/4 v11, 0x1

    .line 461
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getSrcid()I

    move-result v9

    if-lez v9, :cond_0

    .line 464
    const/16 v9, 0x2e

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 465
    .local v0, dotIndex:I
    if-lez v0, :cond_0

    .line 466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/ImageElement;->getSrcid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .end local v0           #dotIndex:I
    :cond_0
    if-eqz v1, :cond_1

    const-string v9, "unlocker_button.png"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 472
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->debBoolean:Ljava/lang/Boolean;

    .line 475
    :cond_1
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 478
    const/4 v3, -0x2

    .line 479
    .local v3, iWidth:I
    const/4 v2, -0x2

    .line 480
    .local v2, iHeight:I
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getW()I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getH()I

    move-result v9

    if-eqz v9, :cond_5

    .line 481
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getW()I

    move-result v3

    .line 482
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getH()I

    move-result v2

    .line 483
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    .line 484
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getW()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v5, v9, v10

    .line 485
    .local v5, mScaleX:F
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getH()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 486
    .local v6, mScaleY:F
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 495
    .end local v5           #mScaleX:F
    .end local v6           #mScaleY:F
    :cond_2
    :goto_0
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getX()I

    move-result v7

    .line 496
    .local v7, posX:I
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getY()I

    move-result v8

    .line 497
    .local v8, posY:I
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    .line 498
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getAlign()I

    move-result v9

    if-ne v9, v11, :cond_6

    .line 499
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v7, v9

    .line 504
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getAlignV()I

    move-result v9

    if-ne v9, v11, :cond_7

    .line 505
    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    .line 511
    :cond_4
    :goto_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 516
    .local v4, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v7, v8, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 520
    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    return-void

    .line 489
    .end local v4           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #posX:I
    .end local v8           #posY:I
    :cond_5
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    .line 490
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 491
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 500
    .restart local v7       #posX:I
    .restart local v8       #posY:I
    :cond_6
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getAlign()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 501
    sub-int/2addr v7, v3

    goto :goto_1

    .line 506
    :cond_7
    iget-object v9, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/ImageElement;->getAlignV()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 507
    sub-int/2addr v8, v2

    goto :goto_2
.end method
