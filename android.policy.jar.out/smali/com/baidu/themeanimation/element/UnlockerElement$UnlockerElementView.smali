.class public Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;
.super Landroid/widget/RelativeLayout;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/UnlockerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnlockerElementView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockerElementView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownPoint:Landroid/graphics/Point;

.field private mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mReachedIndex:I

.field private mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

.field mVibrator:Landroid/os/Vibrator;

.field private mp:Landroid/media/MediaPlayer;

.field private preDownPosX:F

.field private preDownPosY:F

.field final synthetic this$0:Lcom/baidu/themeanimation/element/UnlockerElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "unlockerElement"
    .parameter "handler"

    .prologue
    const/4 v3, -0x1

    .line 1006
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    .line 1007
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1206
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    .line 1352
    iput v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    .line 1009
    iput-object p3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    .line 1010
    #setter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {p1, v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I

    .line 1011
    iput-object p2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    .line 1012
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mVibrator:Landroid/os/Vibrator;

    .line 1013
    check-cast p4, Lcom/baidu/themeanimation/util/LockScreenHandler;

    .end local p4
    iput-object p4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 1016
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    iget v1, v1, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    iget v2, v2, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateView(II)V

    .line 1022
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V

    return-void
.end method

.method static synthetic access$302(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private debug_test_for_expression()V
    .locals 3

    .prologue
    .line 1344
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v1

    .line 1346
    .local v1, evaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;
    :try_start_0
    const-string v2, "eq(0, 2)"

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, e:Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;->printStackTrace()V

    goto :goto_0
.end method

.method private getValidDeltaXY(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 30
    .parameter "event"

    .prologue
    .line 1246
    new-instance v18, Landroid/graphics/Point;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1247
    .local v18, point:Landroid/graphics/Point;
    const/4 v12, 0x0

    .line 1248
    .local v12, indexOfEndPoint:I
    const-wide v14, 0x402921fb54442d18L

    .line 1250
    .local v14, minRadio:D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1251
    .local v24, x3:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1252
    .local v25, y3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v10

    .line 1254
    .local v10, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosX:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosY:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getRadio(IIII)D

    move-result-wide v16

    .line 1258
    .local v16, moveRadio:D
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_1

    .line 1259
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v13

    .line 1260
    .local v13, lockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
    if-eqz v13, :cond_0

    .line 1261
    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getEndPoint()Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    move/from16 v26, v0

    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getEndPoint()Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    move/from16 v27, v0

    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->x:I

    move/from16 v28, v0

    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$LockPosition;->y:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getRadio(IIII)D

    move-result-wide v5

    .line 1263
    .local v5, currRadio:D
    sub-double v26, v5, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v26, v26, v14

    if-gez v26, :cond_0

    .line 1264
    sub-double v26, v5, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 1265
    move v12, v11

    .line 1258
    .end local v5           #currRadio:D
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1271
    .end local v13           #lockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
    :cond_1
    const/16 v20, 0x0

    .line 1272
    .local v20, tempDeltaX0:I
    const/16 v21, 0x0

    .line 1273
    .local v21, tempDeltaX1:I
    const/16 v22, 0x0

    .line 1274
    .local v22, tempDeltaY0:I
    const/16 v23, 0x0

    .line 1276
    .local v23, tempDeltaY1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v19

    .line 1277
    .local v19, startPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    .line 1278
    .local v9, endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v13

    .line 1279
    .restart local v13       #lockPath:Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;
    if-eqz v13, :cond_8

    .line 1280
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMinX()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getX()I

    move-result v27

    sub-int v20, v26, v27

    .line 1281
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMaxX()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getX()I

    move-result v27

    sub-int v21, v26, v27

    .line 1282
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMinY()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getY()I

    move-result v27

    sub-int v22, v26, v27

    .line 1283
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMaxY()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getY()I

    move-result v27

    sub-int v23, v26, v27

    .line 1285
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMaxX()I

    move-result v26

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMinX()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 1286
    const/16 v20, 0x0

    .line 1287
    const/16 v21, 0x0

    .line 1290
    :cond_2
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMaxY()I

    move-result v26

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;->getMinY()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1291
    const/16 v22, 0x0

    .line 1292
    const/16 v23, 0x0

    .line 1302
    :cond_3
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 1303
    add-int v20, v20, v21

    .line 1304
    sub-int v21, v20, v21

    .line 1305
    sub-int v20, v20, v21

    .line 1308
    :cond_4
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 1309
    add-int v22, v22, v23

    .line 1310
    sub-int v23, v22, v23

    .line 1311
    sub-int v22, v22, v23

    .line 1314
    :cond_5
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v7, v0

    .line 1315
    .local v7, deltaX:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v8, v0

    .line 1321
    .local v8, deltaY:I
    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    .line 1322
    move/from16 v7, v20

    .line 1327
    :cond_6
    :goto_2
    move/from16 v0, v22

    if-ge v8, v0, :cond_a

    .line 1328
    move/from16 v8, v22

    .line 1337
    :cond_7
    :goto_3
    move-object/from16 v0, v18

    iput v7, v0, Landroid/graphics/Point;->x:I

    .line 1338
    move-object/from16 v0, v18

    iput v8, v0, Landroid/graphics/Point;->y:I

    .line 1339
    return-object v18

    .line 1295
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    :cond_8
    const/16 v20, -0x1e0

    .line 1296
    const/16 v21, 0x1e0

    .line 1297
    const/16 v22, -0x320

    .line 1298
    const/16 v23, 0x320

    goto :goto_1

    .line 1323
    .restart local v7       #deltaX:I
    .restart local v8       #deltaY:I
    :cond_9
    move/from16 v0, v21

    if-le v7, v0, :cond_6

    .line 1324
    move/from16 v7, v21

    goto :goto_2

    .line 1329
    :cond_a
    move/from16 v0, v23

    if-le v8, v0, :cond_7

    .line 1330
    move/from16 v8, v23

    goto :goto_3
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1190
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V

    .line 1191
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v0, v2, v2, v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 1200
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    .line 1201
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->reset()V

    .line 1202
    return-void
.end method

.method private setStateView(II)V
    .locals 4
    .parameter "state"
    .parameter "endPointIndex"

    .prologue
    .line 1025
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)Landroid/view/View;

    .line 1028
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v0

    .line 1031
    .local v0, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    if-ltz p2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 1034
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    invoke-direct {p0, p1, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)Landroid/view/View;

    .line 1039
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1040
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1041
    if-eq v1, p2, :cond_0

    .line 1042
    const/4 v3, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    invoke-direct {p0, v3, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)Landroid/view/View;

    .line 1040
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1047
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1050
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    invoke-direct {p0, p1, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)Landroid/view/View;

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1054
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->bringToFront()V

    .line 1058
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #setter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I

    .line 1059
    return-void
.end method

.method private setStateViewInternal(ILcom/baidu/themeanimation/element/UnlockerElement$StartPoint;)Landroid/view/View;
    .locals 5
    .parameter "state"
    .parameter "startPoint"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-eq v2, p1, :cond_0

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    if-ne p1, v3, :cond_4

    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1067
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1068
    .local v0, needChangeViewBoolean:Ljava/lang/Boolean;
    packed-switch p1, :pswitch_data_0

    .line 1094
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1096
    if-eqz p2, :cond_4

    .line 1097
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {p2, v2, v3, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getView(Landroid/content/Context;ILandroid/os/Handler;)Landroid/view/View;

    move-result-object v1

    .line 1098
    if-eqz v1, :cond_3

    .line 1099
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->removeView(Landroid/view/View;)V

    .line 1102
    :cond_3
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {p2, v2, p1, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getView(Landroid/content/Context;ILandroid/os/Handler;)Landroid/view/View;

    move-result-object v1

    .line 1103
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->addView(Landroid/view/View;)V

    .line 1105
    invoke-virtual {p2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->startAnimations(I)V

    .line 1110
    .end local v0           #needChangeViewBoolean:Ljava/lang/Boolean;
    :cond_4
    return-object v1

    .line 1070
    .restart local v0       #needChangeViewBoolean:Ljava/lang/Boolean;
    :pswitch_0
    invoke-virtual {p2}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getPressedElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1072
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1075
    :cond_5
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p2}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getReachedElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1077
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1082
    :pswitch_1
    invoke-virtual {p2}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getReachedElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1083
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getRadio(IIII)D
    .locals 10
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 1209
    const-wide/16 v2, 0x0

    .line 1211
    .local v2, radio:D
    sub-int v4, p3, p1

    .line 1212
    .local v4, x:I
    sub-int v5, p4, p2

    .line 1216
    .local v5, y:I
    if-lez v4, :cond_2

    .line 1217
    const-wide v2, 0x3ff921fb54442d18L

    .line 1218
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 1219
    .local v0, angle:D
    if-lez v5, :cond_1

    .line 1220
    sub-double/2addr v2, v0

    .line 1242
    .end local v0           #angle:D
    :cond_0
    :goto_0
    return-wide v2

    .line 1221
    .restart local v0       #angle:D
    :cond_1
    if-gez v5, :cond_0

    .line 1222
    add-double/2addr v2, v0

    goto :goto_0

    .line 1224
    .end local v0           #angle:D
    :cond_2
    if-gez v4, :cond_4

    .line 1225
    const-wide v2, 0x4012d97c7f3321d2L

    .line 1226
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 1227
    .restart local v0       #angle:D
    if-lez v5, :cond_3

    .line 1228
    add-double/2addr v2, v0

    goto :goto_0

    .line 1229
    :cond_3
    if-gez v5, :cond_0

    .line 1230
    sub-double/2addr v2, v0

    goto :goto_0

    .line 1233
    .end local v0           #angle:D
    :cond_4
    if-lez v5, :cond_5

    .line 1234
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1235
    :cond_5
    if-gez v5, :cond_6

    .line 1236
    const-wide v2, 0x400921fb54442d18L

    goto :goto_0

    .line 1238
    :cond_6
    const-wide v2, 0x7fefffffffffffffL

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 1358
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1359
    .local v9, result:Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1360
    .local v7, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1362
    .local v8, posY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1543
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    return v10

    .line 1371
    :pswitch_0
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 1373
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v10, v7, v8}, Lcom/baidu/themeanimation/element/UnlockerElement;->inStartPoint(FF)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1378
    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    .line 1379
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement;->dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V

    .line 1381
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget-object v11, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 1383
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1391
    :goto_1
    iput v7, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosX:F

    .line 1392
    iput v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosY:F

    .line 1394
    const/4 v10, -0x1

    iput v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    goto :goto_0

    .line 1388
    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_1

    .line 1400
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getValidDeltaXY(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v6

    .line 1402
    .local v6, point:Landroid/graphics/Point;
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v10

    iget v11, v6, Landroid/graphics/Point;->x:I

    iget v12, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11, v12}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->moveBy(II)V

    .line 1404
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1e0

    const/16 v13, 0x320

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->invalidate(IIII)V

    .line 1412
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget-object v11, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getX()I

    move-result v11

    iget v12, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v12}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getY()I

    move-result v12

    iget v13, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Lcom/baidu/themeanimation/element/UnlockerElement;->inEndPoint(FF)I

    move-result v0

    .line 1415
    .local v0, currReachedIndex:I
    if-gez v0, :cond_1

    .line 1420
    :cond_1
    if-ltz v0, :cond_2

    .line 1435
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v3

    .line 1436
    .local v3, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    if-eqz v3, :cond_2

    .line 1445
    .end local v3           #endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    :cond_2
    if-gez v0, :cond_4

    .line 1448
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 1452
    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    .line 1464
    :cond_3
    :goto_2
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    .line 1467
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget-object v11, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v12}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 1455
    :cond_4
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 1459
    :cond_5
    iget v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    if-eq v10, v0, :cond_3

    .line 1460
    const/4 v10, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    goto :goto_2

    .line 1475
    .end local v0           #currReachedIndex:I
    .end local v6           #point:Landroid/graphics/Point;
    :pswitch_2
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1476
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/baidu/themeanimation/element/UnlockerElement;->inEndPoint(FF)I

    move-result v10

    iput v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    .line 1477
    iget v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    if-ltz v10, :cond_6

    .line 1478
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    const/4 v11, 0x2

    #setter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I

    .line 1483
    :cond_6
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v3

    .line 1484
    .restart local v3       #endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    if-eqz v3, :cond_7

    .line 1486
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 1487
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    .line 1493
    .local v2, endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getLockPath()Lcom/baidu/themeanimation/element/UnlockerElement$LockPath;

    .line 1486
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1501
    .end local v2           #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .end local v4           #i:I
    :cond_7
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    .line 1507
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement;->dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V

    .line 1509
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V

    .line 1532
    :goto_4
    const/4 v10, -0x1

    iput v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    goto/16 :goto_0

    .line 1515
    :cond_8
    :try_start_0
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget v11, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    invoke-virtual {v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoint(I)Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;

    move-result-object v2

    .line 1516
    .restart local v2       #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 1517
    const-string v10, "UnlockerElementView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reach End Point, start intent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1520
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "just_unlock"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1526
    :goto_5
    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v10, v5}, Lcom/baidu/themeanimation/util/LockScreenHandler;->startIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1527
    .end local v2           #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1528
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1522
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    :cond_9
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1523
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "just_unlock"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1536
    .end local v2           #endPoint:Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;
    .end local v3           #endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/UnlockerElement$EndPoint;>;"
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V

    goto/16 :goto_0

    .line 1362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setTouchState(II)V
    .locals 9
    .parameter "state"
    .parameter "endPointIndex"

    .prologue
    const/4 v8, 0x2

    .line 1118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, soundDirString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1120
    .local v4, soundFileName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1135
    :goto_0
    if-eqz v4, :cond_2

    .line 1143
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v3, soundFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1148
    .local v1, fis:Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 1149
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 1150
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    .line 1153
    :cond_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    if-nez v5, :cond_1

    .line 1154
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    .line 1157
    :cond_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1158
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 1159
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 1160
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;

    invoke-direct {v6, p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;-><init>(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #soundFile:Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v5

    if-eq v5, p1, :cond_3

    if-ltz p1, :cond_3

    if-le p1, v8, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v5

    if-ne v5, v8, :cond_7

    if-ne p1, v8, :cond_7

    .line 1180
    :cond_4
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v5

    if-eq v5, v8, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1183
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1185
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateView(II)V

    .line 1187
    :cond_7
    return-void

    .line 1122
    :pswitch_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getNormalSound()Ljava/lang/String;

    move-result-object v4

    .line 1123
    goto/16 :goto_0

    .line 1126
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getPressedSound()Ljava/lang/String;

    move-result-object v4

    .line 1127
    goto/16 :goto_0

    .line 1130
    :pswitch_2
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/UnlockerElement$StartPoint;->getReachedSound()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "audio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "play sound exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    .line 1170
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_1

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
