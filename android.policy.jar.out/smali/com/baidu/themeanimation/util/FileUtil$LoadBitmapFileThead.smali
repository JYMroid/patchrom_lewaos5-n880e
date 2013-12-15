.class Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;
.super Ljava/lang/Thread;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadBitmapFileThead"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLocalDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/themeanimation/util/FileUtil;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "dir"
    .parameter "handler"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->mLocalDir:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->mHandler:Landroid/os/Handler;

    .line 246
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->todo()V

    .line 250
    return-void
.end method

.method todo()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 254
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->mLocalDir:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, dirfile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 258
    .local v3, files:[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 259
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/themeanimation/util/FileUtil;->isPic(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget v5, v5, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget v5, v5, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    iget v6, v6, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v7

    iget v7, v7, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    :cond_1
    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v5, v5, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapFileThead;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x209

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1           #dirfile:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :cond_4
    :goto_1
    return-void

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
