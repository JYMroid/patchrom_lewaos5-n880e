.class Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;
.super Ljava/lang/Thread;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadWallpaperThread"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLocalPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/themeanimation/util/FileUtil;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "handler"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->mLocalPath:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->mHandler:Landroid/os/Handler;

    .line 205
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->todo()V

    .line 209
    return-void
.end method

.method todo()V
    .locals 6

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/FileUtil;->access$002(Lcom/baidu/themeanimation/util/FileUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 214
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    #getter for: Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/baidu/themeanimation/util/FileUtil;->access$000(Lcom/baidu/themeanimation/util/FileUtil;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    #getter for: Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/baidu/themeanimation/util/FileUtil;->access$000(Lcom/baidu/themeanimation/util/FileUtil;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget v3, v3, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_WIDTH:I

    int-to-float v3, v3

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    iget v4, v4, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    iget v4, v4, Lcom/baidu/themeanimation/util/FileUtil;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget v5, v5, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/FileUtil;->access$002(Lcom/baidu/themeanimation/util/FileUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperThread;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x208

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
